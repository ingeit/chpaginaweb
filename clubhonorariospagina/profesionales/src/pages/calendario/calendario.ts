import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { FechasHabilesProvider } from '../../providers/fechas-habiles/fechas-habiles';
import { CalendarComponentOptions } from 'ion2-calendar'

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
  añoCalendario = 2018;
  
  dateMulti: string[];
  type: 'string'; // 'string' | 'js-date' | 'moment' | 'time' | 'object'
  optionsMulti: CalendarComponentOptions = {
    pickMode: 'multi',
    monthFormat: 'MM / YYYY',
    monthPickerFormat: ['ENE', 'FEB', 'MAR', 'ABR', 'MAY', 'JUN', 'JUL', 'AGO', 'SEP', 'OCT', 'NOV', 'DIC'],
    weekdays: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa'],
  };



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
      console.log("respuesta ",this.respuesta); 
      this.armarCalendario(2018);
    });
  }

  armarCalendario(año){
    this.calendarioAnual = [];
    for(let i=0; i < this.respuesta.length; i++){ // n is array.length
      if(this.respuesta[i].Fechas.getUTCFullYear() === 2018){
        this.calendarioAnual.push(this.respuesta[i].Fechas);
      }
    }
   console.log("calendario anual: ",this.calendarioAnual);
  }

  cambio(evento){
    console.log(evento)
  }


}
