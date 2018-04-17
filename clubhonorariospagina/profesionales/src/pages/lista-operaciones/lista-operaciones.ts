import { Component, ElementRef, ViewChild } from '@angular/core';
import { IonicPage, ToastController, NavController, NavParams, AlertController, LoadingController } from 'ionic-angular';
import { Storage } from '@ionic/storage';
import { SideMenu } from '../sideMenu/sideMenu';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';
import { Operaciones } from '../../modelos/operaciones.interface';
import { Observable } from 'rxjs/Observable';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { VerOperacionPage } from '../ver-operacion/ver-operacion';
import * as configServer from './../../server'
import { DashboardPage } from '../dashboard/dashboard';
import * as jwt from 'jsonwebtoken';


@Component({
  selector: 'page-lista-operaciones',
  templateUrl: 'lista-operaciones.html',
})
export class ListaOperacionesPage {

  Operaciones: any;
  operacion: any;
  loading: any;
  altura: any;
  fechaInicio: any;
  fechaFin: any;
  mostrarTarjetas = false;
  respuesta: any;
  montoTotal = 0;

  constructor(public navCtrl: NavController,
    public data: OperacionesProvider,
    public loadingCtrl: LoadingController,
    public alertCtrl: AlertController,
    public iab: InAppBrowser,
    public navParams: NavParams,
    public storage: Storage,
    private toastCtrl: ToastController) {
    this.dameFecha();
  }

  setClasses(terjetaIn) {
    let tar;
    switch (terjetaIn) {
      case 'AMEX':
        tar = 'fa-cc-amex';
        break;
      case 'VISA':
        tar = 'fa-cc-visa';
        break;
      case 'MASTER':
        tar = 'fa-cc-mastercard';
        break;
    }
    return tar;
  }


  ionViewDidLoad() {
    this.obtenerOperaciones();
  }

  obtenerOperaciones() {
    this.data.obtenerOperaciones().then((data) => {
      this.Operaciones = data;
      if (this.Operaciones[0].codigo != 0) {
        this.mostrarTarjetas = true;
        console.log("operaciones: ", this.Operaciones);
        this.montoTotal = 0;
        for (let o of this.Operaciones) {
          this.montoTotal = this.montoTotal + o.importeVenta;
        }
        console.log("importe total de ventas: ", this.montoTotal)
      }

    });
  }

  verOperacion(operacion) {
    this.navCtrl.push(VerOperacionPage, { operacion: operacion });
  }

  botonPagarOperacion(idOperacion) {
    let titulo = "Pagar Operación";
    let mensaje = "¿Está seguro que desea eliminar la operación?";
    this.confirmarPagar(titulo, mensaje, idOperacion);
  }

  confirmarPagar(titulo, mensaje, idOperacion) {
    let alert = this.alertCtrl.create({
      title: titulo,
      message: mensaje,
      buttons: [
        {
          text: 'Cancelar',
          role: 'cancel',
          handler: () => {

          }
        },
        {
          text: 'Aceptar',
          handler: () => {
            this.pagarOperacion(idOperacion);
          }
        }
      ]
    });
    alert.present();
  }

  pagarOperacion(idOperacion) {
    console.log("pagarOperacion", idOperacion)
    let details = {
      idOperacion: parseInt(idOperacion)
    };
    console.log("pagarOperacion details", idOperacion)
    this.data.pagarOperacion(details).then((respuesta: any) => {
      console.log("respuesta", respuesta)
      if (respuesta[0].codigo != 0) {
        this.presentToast(`Operacion Nº ${idOperacion} pagada con exito`);
        this.navCtrl.setRoot(ListaOperacionesPage);
      }else{
        this.mostrarAlerta('ERROR',`No se pudo pagar la operacion. Motivo: ${respuesta[0].mensaje}`);
      }

    });
  }

  presentToast(mensaje) {
    let toast = this.toastCtrl.create({
      message: mensaje,
      duration: 3000,
      position: 'middle'
    });
  
    toast.onDidDismiss(() => {
      console.log('Dismissed toast');
    });
  
    toast.present();
  }

  filtrar() {
    if (this.fechaInicio && this.fechaFin) {
      this.showLoader();
      let inicio = this.fechaInicio.split('T');
      inicio = inicio[0];
      let fin = this.fechaFin.split('T');
      fin = fin[0];
      let details = {
        fechaInicio: inicio,
        fechaFin: fin,
      };
      this.data.obtenerOperacionesFiltrado(details).then((data) => {
        this.loading.dismiss();
        this.Operaciones = data;
        if (this.Operaciones[0].codigo != 0) {
          this.mostrarTarjetas = true;
          this.montoTotal = 0;
          for (let o of this.Operaciones) {
            this.montoTotal = this.montoTotal + o.importeVenta;
          }
          console.log("importe total de ventas: ", this.montoTotal)
        } else {
          this.mostrarTarjetas = false;
        }
      });
    } else {
      this.mostrarAlerta('Error', 'Seleccione un rango de Fechas');
    }
  }

  exportar() {
    if (this.fechaInicio && this.fechaFin) {
      console.log(this.fechaFin);
      let inicio = this.fechaInicio.split('T');
      inicio = inicio[0];
      let fin = this.fechaFin.split('T');
      fin = fin[0];
      console.log(fin)
      const browser = this.iab.create(`${configServer.data.urlServidor}/api/excel/${inicio}/${fin}`);
    } else {
      this.mostrarAlerta('Error', 'Seleccione un rango de Fechas');
    }

  }

  public nuevaOperacion() {
    this.storage.get('idUsuario').then((respuesta) => {
      let value = jwt.sign({
        idUsuario: respuesta
      }, 'shhola', { expiresIn: 5 * 60 });
      // let url = 'https://clubhonorarios.com/mpop/#/'+value;
      let url = 'http://localhost:81/mpop/#/' + value;
      const browser = this.iab.create(url);
    });
  }

  cargarOperacion() {
    this.navCtrl.setRoot('NuevaOperacion', { 'campos': '' });
  }

  mostrarAlerta(titulo, mensaje) {
    let alert = this.alertCtrl.create({
      title: titulo,
      subTitle: mensaje,
      buttons: ['ACEPTAR']
    });
    alert.present();
  }

  showLoader() {
    this.loading = this.loadingCtrl.create({
      content: 'Cargando...'
    });
    this.loading.present();
  }

  showLoader2(mensaje) {
    this.loading = this.loadingCtrl.create({
      content: mensaje
    });
    this.loading.present();
  }

  dameFecha() {
    this.showLoader2('Consultando operaciones en servidor');
    this.data.dameFechas().then((result) => {
      this.respuesta = result[0];
      if (this.respuesta.codigo === 1) {
        console.log("fecha transaccion desde formulario 1 provider", this.respuesta.fechaTransaccion);
        this.fechaFin = this.respuesta.fechaTransaccion;
        this.fechaInicio = this.respuesta.fechaTransaccion;
        console.log('Fechas del Filtro')
        console.log(this.fechaInicio)
        console.log(this.fechaFin)
        this.loading.dismiss();
      }
    }, (err) => {
      console.log("error promises en hora del servidor");
      this.loading.dismiss();
      this.mostrarAlerta('Error', 'Servidor inaccesible');
    });
  }

  ir() {
    this.navCtrl.setRoot(DashboardPage);
  }

}
