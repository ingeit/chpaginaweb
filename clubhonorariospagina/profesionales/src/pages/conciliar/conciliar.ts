import { Component, ViewChild, ElementRef } from '@angular/core';
import { NavController, NavParams, LoadingController, ToastController } from 'ionic-angular';
import * as XLSX from 'xlsx';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';

type AOA = any[][];

@Component({
  selector: 'page-conciliar',
  templateUrl: 'conciliar.html',
})
export class ConciliarPage {
  @ViewChild('inputFile') inputFile: ElementRef;

  loading: any;
  data: any[][];
  opDB: any;
  opExcel: any;
  opConciliadas: any = [];

  constructor(public navCtrl: NavController,
    public navParams: NavParams,
    private opPrv: OperacionesProvider,
    public loadingCtrl: LoadingController,
    private toastCtrl: ToastController) {
    this.obtenerOpNoConciliadas();
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
    this.showLoader();
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

  showLoader() {
    this.loading = this.loadingCtrl.create({
      content: 'Procesando información...'
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

}