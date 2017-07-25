import { Component,ElementRef, ViewChild } from '@angular/core';
import { IonicPage, NavController, NavParams,AlertController,LoadingController } from 'ionic-angular';
import { SideMenu } from '../sideMenu/sideMenu';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';
import { Operaciones } from '../../modelos/operaciones.interface';
import { Observable } from 'rxjs/Observable';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { VerOperacionPage } from '../ver-operacion/ver-operacion';

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

  constructor(public navCtrl: NavController,
              public data: OperacionesProvider,
              public loadingCtrl: LoadingController,
              public alertCtrl: AlertController,
              public iab: InAppBrowser,
              public navParams: NavParams) {
                this.fechaInicio = new Date().toISOString();
                this.fechaFin = new Date().toISOString();

                
                
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
      let details = {
              fechaInicio: this.fechaInicio,
              fechaFin: this.fechaFin,
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
      const browser = this.iab.create('http://localhost:3000/api/excel/'+this.fechaInicio+'/'+this.fechaFin+'');
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

}
