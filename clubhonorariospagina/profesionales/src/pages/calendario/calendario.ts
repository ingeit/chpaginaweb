import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { FechasHabilesProvider } from '../../providers/fechas-habiles/fechas-habiles';

/**
 * Generated class for the CalendarioPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */


@Component({
  selector: 'page-calendario',
  templateUrl: 'calendario.html',
})
export class CalendarioPage {

  respuesta: any;
  calendarioAnual:any = [];

  constructor(public navCtrl: NavController, 
              public navParams: NavParams,
              public fechaProvider: FechasHabilesProvider, ) {
  }

  
 
  ionViewDidLoad() {
    this.obtenerFechasHabiles();
    console.log('ionViewDidLoad CalendarioPage');
  }

  obtenerFechasHabiles(){
    this.fechaProvider.obtenerFechas().then((data)=>{
      this.respuesta = data;   
      console.log("antes ",this.respuesta); 
      this.respuesta = new Date();
      console.log("despues ",this.respuesta);
      // this.armarCalendario();
      // this.fechas = this.respuesta.subCategorias;
    });
  }

  armarCalendario(){

    for(let i=0; i < this.respuesta.length; i++){ // n is array.length
      console.log(this.respuesta[i].Fechas.getFullYear());
      if(this.respuesta[i].Fechas.getFullYear() === 2017){
        this.calendarioAnual.push(this.respuesta[i].Fechas);
      }
   }
   console.log(this.calendarioAnual);
    
  }

}
