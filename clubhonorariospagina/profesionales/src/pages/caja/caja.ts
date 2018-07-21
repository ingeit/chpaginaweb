import { Component, ViewChild, ElementRef } from '@angular/core';
import { FormControl } from '@angular/forms';
import { NavController, NavParams, LoadingController, ToastController, AlertController, ModalController } from 'ionic-angular';
import { Storage } from '@ionic/storage';
import swal from 'sweetalert';
import * as XLSX from 'xlsx';
import * as html2canvas from 'html2canvas';
import * as jsPDF from 'jspdf';

import { HomePage } from '../home/home';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';
import { CajaProvider } from '../../providers/caja/caja';
import { ModalPage } from './modal'

//Table
import { MatTableModule, MatTableDataSource } from '@angular/material/table';
import { MatPaginatorModule } from '@angular/material/paginator';
import { MatSortModule, MatSort } from '@angular/material/sort';
import { SelectionModel } from '@angular/cdk/collections';
import { MatSidenavModule } from '@angular/material/sidenav';

import { MatFormFieldModule } from '@angular/material/form-field';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatTabsModule } from '@angular/material/tabs';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';


// variable para conciliar
type AOA = any[][];

//para la tabla
export interface Operacion {
  apellidoCliente: string;
  dniCliente: number;
  estadoPago: string;
  conciliada: string;
  fechaPago: Date;
  fechaTransaccion: Date;
  idOperacion: number;
  importeCobrar: number;
  importeVenta: number;
  nombreTarjeta: string;
  tipoOperacion: string;
  checked: boolean;
}

@Component({
  selector: 'page-caja',
  templateUrl: 'caja.html',
})
export class CajaPage {
  @ViewChild('inputFile') inputFile: ElementRef;

  loading: any;
  //conciliar excel
  data: any[][];
  opDB: any;
  opExcel: any;
  opConciliadas: any = [];
  vistaImprimir: boolean = false;
  codLiqDB: any;

  //recibos
  cantidadRecibos: number;
  montoRecibos: number;
  importeTotalHonorarios: number;
  concepto: string;
  numeroActual: any;

  //tabla
  displayedColumns: string[] = ['orden', 'codInterno', 'fechaTransaccion', 'fechaPago', 'dniCliente', 'apellidoCliente', 'tarjeta', 'honorariosProfesional', 'diasHabiles', 'conciliada', 'montoPagar', 'pagar', 'exclamacion'];
  dataSource: any;
  selection: SelectionModel<Operacion>;

  // busqueda de profesional
  dniProfesional: Number = 30541192;
  fechaInicio: Date = new Date();
  fechaFin: Date = new Date();
  profesional: any;
  operaciones: any;
  idLiquidacion: number;
  fechaEmision: Date;
  idUsuario: number;

  constructor(public navCtrl: NavController,
    public navParams: NavParams,
    private opPrv: OperacionesProvider,
    public loadingCtrl: LoadingController,
    private toastCtrl: ToastController,
    private cajaProv: CajaProvider,
    public storage: Storage,
    private alertCtrl: AlertController,
    public modalCtrl: ModalController

  ) {
    this.obtenerOpNoConciliadas();
    this.setearVariablesInicio();
    this.storage.get('usuario').then((usuario) => {
      if (usuario.hasOwnProperty('_id')) {
        this.idUsuario = usuario._id;
      } else {
        this.navCtrl.setRoot(HomePage);
      }
      console.log("campos idUsuario", this.idUsuario)
    });
  }

  setearVariablesInicio() {
    this.selection = new SelectionModel<Operacion>(true, []);
    this.fechaInicio.setFullYear(2018, 0, 1);
    this.fechaFin.setFullYear(this.fechaFin.getFullYear(), this.fechaFin.getMonth(), this.fechaFin.getDate());
    this.idLiquidacion = null;
    this.fechaEmision = null;
    this.profesional = null;
    this.operaciones = [];
    this.dataSource = null;
    this.codLiqDB = null;
    this.cantidadRecibos = null
    this.montoRecibos = null;
    this.importeTotalHonorarios = null;
    this.concepto = "";
  }

  periodos() {
    this.setearVariablesInicio();
    let fInicio = this.fechaInicio.toISOString().slice(0, 10);
    let fFin = this.fechaFin.toISOString().slice(0, 10);
    if (this.dniProfesional == null || this.dniProfesional.toString().length < 7 || this.dniProfesional.toString().length > 11) {
      swal("Numero DNI invalido", "Ingrese un numero de 7 hasta 11 caracteres", "error");
    } else {
      let parametros = {
        dni: this.dniProfesional,
        fechaInicio: fInicio,
        fechaFin: fFin
      }
      this.showLoader('Obteniendo información...');
      this.cajaProv.obtenerOpLiquidar(parametros)
        .then(res => {
          console.log('​CajaPage -> periodos -> res', res);
          this.loading.dismiss();
          //[0][0] codigo, [1][0]idLiquidacion y fechaEmision [2][0] prof  [3][i]operaciones a liquidar
          if (res[0][0].codigo != 0) {
            this.idLiquidacion = res[1][0].idLiquidacion
            console.log('​CajaPage -> periodos -> idLiquidacion', this.idLiquidacion);
            this.fechaEmision = res[1][0].fechaEmision;
            this.profesional = res[2][0]
            console.log('​CajaPage -> periodos -> this.profesional', this.profesional);
            this.operaciones = res[3]
            this.operaciones.map(op => (op.conciliada == 'SI') ? op.checked = true : op.checked = false)
            let total = 0;
            this.importeTotalHonorarios = 0;
            for (let o of this.operaciones) {
              if (o.checked) {
                total = total + o.importeCobrar;
                this.importeTotalHonorarios = this.importeTotalHonorarios + o.importeVenta
              }
            }
            this.operaciones.push({
              importeCobrar: total
            })
            console.log('​CajaPage -> periodos -> this.operaciones', this.operaciones);
            this.dataSource = new MatTableDataSource<Operacion>(this.operaciones);
            console.log('​CajaPage -> periodos -> this.dataSource', this.dataSource);
          } else {
            //profesional no existe..
            console.log("no existe el prof", this.profesional, this.operaciones)
            swal("Error", "Profesional inexistente", "error");
          }
        })
        .catch(err => {
          this.loading.dismiss();
          console.log('​CajaPage -> periodos -> err', err);
          swal("Error", "Problemas de comunicacion", "error");
        })
    }
  }

  pagar() {
    let cadena = "";
    for (let op of this.operaciones) {
      if (op.checked) {
        cadena = cadena.concat(op.idOperacion.toString(), "*");
        this.concepto = this.concepto + " " + op.productoAdquirido;
      }
    }
    //eliminamos el ultimp * por que sino el loop de mysql da error, hay q enviarlo de la forma id*id*id, sin * al final
    cadena = cadena.slice(0, -1);
    // redondeamos el montoTotal a 2 digitos para mysql
    let montoTotal = Math.round(this.operaciones[this.operaciones.length - 1].importeCobrar * 100) / 100;
    let parametros = {
      idUsuario: this.idUsuario,
      idProfesional: this.profesional.idProfesional,
      montoTotal,
      cadena
    }
    console.log('​CajaPage -> pagar -> parametros', parametros);
    this.cajaProv.liquidacionNueva(parametros)
      .then(res => {
        console.log('​CajaPage -> pagar -> res', res);
        if (res[0][0].codigo == 0) {
          swal("Advertencia", res[0][0].mensaje, "info");
        } else {
          // todo okey.
          this.codLiqDB = res[0][0].codigo;
          this.generarPDFLiquidacion()
          this.calcularRecibos();
        }
      })
      .catch(err => {
        console.log('​CajaPage -> pagar -> err', err);
        swal("Error", "Problemas de comunicacion con el servidor", "error");
      })

  }

  // calcular cantidad de recibos sorbe el importe de honorarios IMPORTE VENTA! IMPORTANTE!
  calcularRecibos() {
    this.cantidadRecibos = ~~(this.importeTotalHonorarios / 999); // esto devuelve el primer digito q seria el parametro para cantidad de recibos
    let resto = (this.importeTotalHonorarios % 999); // esto es para saber si el resto es 0 o no, porq si no es 0 se aumenta el numero de tiques de arriba
    if (resto != 0) this.cantidadRecibos = this.cantidadRecibos + 1;
    this.montoRecibos = Math.round(this.importeTotalHonorarios / this.cantidadRecibos * 100) / 100;
  }

  obtenerOpNoConciliadas() {
    this.opPrv.obtenerOpNoConciliadas()
      .then(res => {
        this.opDB = res;
        console.log('​ConciliarPage -> onFileChange -> this.opDB', this.opDB);

      })
      .catch(err => {
        console.log('​CoinciliarPage -> obtenerOpNoConciliadas -> err', err);
      })
  }

  subirArchivo() {
    this.inputFile.nativeElement.click();
  }

  onFileChange(evt: any) {
    this.showLoader('Procesando información...');
    if (this.opDB.length != 0) {
      /* wire up file reader */
      const target: DataTransfer = <DataTransfer>(evt.target);
      if (target.files.length !== 1) throw new Error('Cannot use multiple files');
      const reader: FileReader = new FileReader();
      reader.onload = (e: any) => {
        const bstr: string = e.target.result;
        this.read(bstr);
      };
      reader.readAsBinaryString(target.files[0]);
    } else {
      this.loading.dismiss();
      console.log("no hay op para conciliar")
    }
  }

  async read(bstr: string) {
    /* read workbook */
    const wb: XLSX.WorkBook = XLSX.read(bstr, { type: 'binary' });

    /* grab first sheet */
    const wsname: string = wb.SheetNames[2];
    const ws: XLSX.WorkSheet = wb.Sheets[wsname];

    /* save data */
    this.data = await <AOA>(XLSX.utils.sheet_to_json(ws, { header: 1 }));
    if (this.data) {
      this.opExcel = this.data.map(fila => {
        return {
          idOperacion: parseInt(fila[18].replace(',', '')),
          liquidacion: fila[30]
        }
      });
      this.opExcel.shift();
      console.log('​CoinciliarPage -> read -> opExcel', this.opExcel);
      this.cambiarEstado();
    }
    this.loading.dismiss();

  }

  cambiarEstado() {
    for (let i = 0; i < this.opDB.length; i++) {
      let fila = this.opExcel.find((fila) => {
        return fila.idOperacion === this.opDB[i].idOperacion;
      });
      // si fila es undefined es porq no se encontro nada en el find, entonces primero corroboro q no sea eso..
      if (fila) {
        //no es undefined, entocnes podemos leer la propiedad de los objetos porq existe fila..
        // liquidacion es un string en caso q haya y undefined si no esta conciliada en el excel
        if (fila.liquidacion) {
          this.opConciliadas.push(fila.idOperacion);
          this.opDB.splice(this.opDB.indexOf(this.opDB[i]), 1);
          i = i - 1;
        }
      }
    }
  }

  aceptarConciliar() {
    if (this.opConciliadas.length != 0) {
      // todo ok.. listo para ir a mysql
      this.opPrv.setConciliadas(this.opConciliadas.toString())
        .then(res => {
          console.log('​ConciliarPage -> cambiarEstado -> res', res);
          this.presentToast(res[0].mensaje, "toastConciliacion", false)
          this.opConciliadas = [];
        })
        .catch(err => {
          console.log('​ConciliarPage -> cambiarEstado -> err', err);
          this.presentToast("Error al conciliar operaciones", "toastErrorConciliacion", true)
        })
    } else {
      this.presentToast("No se encontraron nuevas conciliaciones", "toastNoConciliacion", false)
    }
    //elimino el archivo del input para volver a subir otro.
    this.inputFile.nativeElement.value = null;
    console.log('​ConciliarPage -> cambiarEstado ->  this.opConciliadas', this.opConciliadas);
  }

  checkBox(fila) {
    const indiceTotal = this.operaciones.length - 1;
    fila.checked = !fila.checked
    if (fila.checked) {
      this.operaciones[indiceTotal].importeCobrar = this.operaciones[indiceTotal].importeCobrar + fila.importeCobrar;
      this.importeTotalHonorarios = this.importeTotalHonorarios + fila.importeVenta;
    } else {
      this.operaciones[indiceTotal].importeCobrar = this.operaciones[indiceTotal].importeCobrar - fila.importeCobrar;
      this.importeTotalHonorarios = this.importeTotalHonorarios - fila.importeVenta;
    }
  }

  showLoader(mensaje) {
    this.loading = this.loadingCtrl.create({
      content: mensaje
    });
    this.loading.present();
  }

  presentToast(mensaje, clase, botonCerrar) {
    let duracion: number;
    (botonCerrar) ? duracion = 0 : duracion = 3000
    let toast = this.toastCtrl.create({
      message: mensaje,
      duration: duracion,
      position: 'middle',
      cssClass: clase,
      showCloseButton: botonCerrar,
      closeButtonText: "Cerrar"
    });

    toast.onDidDismiss(() => {
      console.log('Dismissed toast');
    });

    toast.present();
  }

  public generarPDFLiquidacion() {
    let date = new Date();
    let dia = date.getDate();
    let mes = date.getMonth();
    mes = mes + 1;
    let anio = date.getFullYear();
    let nombre = `Liquidacion Nro ${this.codLiqDB} - Prof ${this.profesional.apellido} ${this.profesional.nombre} - ${dia}-${mes}-${anio}.pdf`
    this.descargarPDF(nombre, 'pdf')

  }

  descargarPDF(nombre, id) {
    html2canvas(document.getElementById(id), { scale: 3, width: 1208, height: 653 }).then(function (canvas) {
      var img = canvas.toDataURL("image/jpeg");
      var doc = new jsPDF("l", "mm", "a4");
      doc.addImage(img, 'JPEG', 25, 10, 250, 133);
      doc.addPage();
      doc.addImage(img, 'JPEG', 25, 10, 250, 133);
      doc.save(nombre);
    }).catch(err => {
      console.log('​CajaPage -> descargarPDF -> err', err);
      swal("Error PDF", "La liquidacion fue correcta. Pero hubo inconvenientes para generar el PDF", "error");
    })
    this.vistaImprimir = true;
  }

  public generarPDFRecibo() {
    let date = new Date();
    let dia = date.getDate();
    let mes = date.getMonth();
    mes = mes + 1;
    let anio = date.getFullYear();
    let nombre = `Recibos Honorarios para Liquidacion Nro ${this.codLiqDB} - ${dia}-${mes}-${anio}.pdf`
    this.descargarPDFRecibo(nombre, 'recibo')

  }

  descargarPDFRecibo(nombre, id) {
    var doc = new jsPDF("l", "mm", "a4");
    let cantRec = this.cantidadRecibos;
    for (let i = 1; i <= cantRec; i++) {
      this.numeroActual = `0001-${this.codLiqDB}0${i}`
      console.log('​descargarPDFRecibo -> this.numeroActual', this.numeroActual);
      html2canvas(document.getElementById(id), { scale: 3, width: 1208, height: 653 }).then(function (canvas) {
        var img = canvas.toDataURL("image/jpeg");
        doc.addImage(img, 'JPEG', 25, 10, 250, 133);
        if (i != cantRec) {
          doc.addPage();
        } else {
          doc.save(nombre);
        }
      }).catch(err => {
        console.log('​CajaPage -> descargarPDF -> err', err);
        swal("Error PDF", "La liquidacion fue correcta. Pero hubo inconvenientes para generar el PDF", "error");
      })
    }
  }

}