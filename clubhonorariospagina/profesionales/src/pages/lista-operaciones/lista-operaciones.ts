import { Component,ElementRef, ViewChild } from '@angular/core';
import { IonicPage, NavController, NavParams,AlertController,LoadingController } from 'ionic-angular';
import { SideMenu } from '../sideMenu/sideMenu';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';
import { Operaciones } from '../../modelos/operaciones.interface';
import { Observable } from 'rxjs/Observable';

@IonicPage()
@Component({
  selector: 'page-lista-operaciones',
  templateUrl: 'lista-operaciones.html',
})
export class ListaOperacionesPage {

  Operaciones: any;
  loading:any;
  altura:any;
  fechaInicio:any;
  fechaFin:any;

  constructor(public navCtrl: NavController,
              public data: OperacionesProvider,
              public loadingCtrl: LoadingController,
              public alertCtrl: AlertController, 
              public navParams: NavParams) {
                
  }

  ionViewDidLoad() {
    this.obtenerOperaciones();
  }
  
  obtenerOperaciones(){
    this.data.obtenerOperaciones().then((data)=>{
      this.Operaciones = data;
    });
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
      });
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
