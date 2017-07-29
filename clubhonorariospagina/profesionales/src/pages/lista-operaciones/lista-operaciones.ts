import { Component,ElementRef, ViewChild } from '@angular/core';
import { IonicPage, NavController, NavParams,AlertController,LoadingController } from 'ionic-angular';
import { SideMenu } from '../sideMenu/sideMenu';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';
import { Operaciones } from '../../modelos/operaciones.interface';
import { Observable } from 'rxjs/Observable';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { VerOperacionPage } from '../ver-operacion/ver-operacion';
import * as configServer from './../../server'

@IonicPage()
@Component({
  selector: 'page-lista-operaciones',
  templateUrl: 'lista-operaciones.html',
})
export class ListaOperacionesPage {

  Operaciones: any;
  operacion: any;
  loading:any;
  altura:any;
  fechaInicio:any;
  fechaFin:any;
  mostrarTarjetas = false;
  respuesta:any;
  
  constructor(public navCtrl: NavController,
              public data: OperacionesProvider,
              public loadingCtrl: LoadingController,
              public alertCtrl: AlertController,
              public iab: InAppBrowser,
              public navParams: NavParams) {
                this.dameFecha();
  }

  setClasses(terjetaIn){
    let tar;
    switch (terjetaIn)
    {
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
  
  obtenerOperaciones(){
    this.data.obtenerOperaciones().then((data)=>{
      this.Operaciones = data;
      if(this.Operaciones[0].codigo != 0){
          this.mostrarTarjetas = true;
          console.log(this.Operaciones);
      }
    }); 
  }

  verOperacion(operacion){
    this.navCtrl.push(VerOperacionPage, { operacion: operacion });
  }

  filtrar(){
    if(this.fechaInicio && this.fechaFin){
      this.showLoader();
      let inicio = this.fechaInicio.split('T');
      inicio = inicio[0];
      let fin = this.fechaFin.split('T');
      fin = fin[0];
      let details = {
              fechaInicio: inicio,
              fechaFin: fin,
        };
      this.data.obtenerOperacionesFiltrado(details).then((data)=>{
        this.loading.dismiss();
        this.Operaciones = data;
        if(this.Operaciones[0].codigo != 0){
          this.mostrarTarjetas = true;
        }else{
          this.mostrarTarjetas = false;
        }
      });
    }else{
      this.mostrarAlerta('Error','Seleccione un rango de Fechas');
    }
  }

  exportar(){
    if(this.fechaInicio && this.fechaFin){
      console.log(this.fechaFin);
      let inicio = this.fechaInicio.split('T');
      inicio = inicio[0];
      let fin = this.fechaFin.split('T');
      fin = fin[0];
      console.log(fin)
      const browser = this.iab.create(`${configServer.data.urlServidor}/api/excel/${inicio}/${fin}`);
    }else{
      this.mostrarAlerta('Error','Seleccione un rango de Fechas');
    }
    
  }

  mostrarAlerta(titulo,mensaje) {
    let alert = this.alertCtrl.create({
    title: titulo,
    subTitle: mensaje,
    buttons: ['ACEPTAR']
    });
    alert.present();
  }

  showLoader(){
    this.loading = this.loadingCtrl.create({
      content: 'Cargando...'
    });
    this.loading.present();
  }

  showLoader2(mensaje){
      this.loading = this.loadingCtrl.create({
        content: mensaje
      });
      this.loading.present();
    }

  dameFecha(){
    this.showLoader2('Consultando Hora en servidor');
    this.data.dameFechas().then((result) => {
          this.respuesta = result[0];
          if(this.respuesta.codigo === 1){
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
          this.mostrarAlerta('Error','Hora del servidor inaccesible');
        });
  }

}
