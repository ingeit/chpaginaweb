import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { FechasHabilesProvider } from '../../providers/fechas-habiles/fechas-habiles';
import { CalendarComponentOptions } from 'ion2-calendar'
import * as moment from 'moment';
import 'moment/locale/es';
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
  

  // //ion2-calendar
  // dateMulti: string[];
  // type: 'string'; // 'string' | 'js-date' | 'moment' | 'time' | 'object'
  // optionsMulti: CalendarComponentOptions = {
  //   pickMode: 'multi',
  //   monthFormat: 'MM / YYYY',
  //   monthPickerFormat: ['ENE', 'FEB', 'MAR', 'ABR', 'MAY', 'JUN', 'JUL', 'AGO', 'SEP', 'OCT', 'NOV', 'DIC'],
  //   weekdays: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa'],
  // };

  //a mano
  date = new Date();
  daysInThisMonth: any;
  daysInLastMonth: any;
  daysInNextMonth: any;
  monthNames: string[];
  currentMonth: any;
  currentYear: any;
  currentDate: any;

  constructor(public navCtrl: NavController, 
              public navParams: NavParams,
              public fechaProvider: FechasHabilesProvider, ) {
                this.monthNames = ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"];
                this.obtenerFechasHabiles();
  }

  
 
  ionViewDidLoad() {
    
    console.log('ionViewDidLoad CalendarioPage');
  }

  obtenerFechasHabiles(){
    this.fechaProvider.obtenerFechas().then((data)=>{
      this.respuesta = data;
      this.getDaysOfMonth();
      // for(let i=0; i < this.respuesta.length; i++){ // n is array.length
      //   this.respuesta[i].Fechas = this.respuesta[i].Fechas.getFullYear()+"-"+this.respuesta[i].Fechas.getMonth()+1+"-"+this.respuesta[i].Fechas.getDate();
      // }
      console.log("respuesta ",this.respuesta); 
    });
  }


  cambio(evento){
    
    // console.log(evento)
    // console.log("datemulti 0 ", this.dateMulti[0]['_d']);
    
  }

//a mano
  getDaysOfMonth() {
    this.daysInThisMonth = new Array(0);
    this.daysInLastMonth = new Array();
    this.daysInNextMonth = new Array();
    console.log(this.date.getMonth());
    this.currentMonth = this.monthNames[this.date.getMonth()];
    console.log();
    this.currentYear = this.date.getFullYear();
    if(this.date.getMonth() === new Date().getMonth()) {
      this.currentDate = new Date().getDate();
    } else {
      this.currentDate = 999;
    }
  
    var firstDayThisMonth = new Date(this.date.getFullYear(), this.date.getMonth(), 1).getDay();
    var prevNumOfDays = new Date(this.date.getFullYear(), this.date.getMonth(), 0).getDate();
    for(var i = prevNumOfDays-(firstDayThisMonth-1); i <= prevNumOfDays; i++) {
      this.daysInLastMonth.push(i);
    }

    var thisNumOfDays = new Date(this.date.getFullYear(), this.date.getMonth()+1, 0).getDate();
    let año = this.date.getFullYear();
    let mes = this.date.getMonth();
    
    let contador = 0;
    for (let j=0; j < this.respuesta.length; j++) {
      if(this.respuesta[j].Fechas.getFullYear() === año && this.respuesta[j].Fechas.getMonth() === mes){
        console.log("coincidencia en año y mes de mysql ");
        this.daysInThisMonth[contador] = {fecha: this.respuesta[j].Fechas.getDate(), feriado:"no"};   
        contador++;   
      }else{
        console.log("no coincidencia en año y mes de mysql ");
      }
      
    }
    console.log("array dias del mes sucio: ",this.daysInThisMonth);
    console.log("cantidad de dias",thisNumOfDays)
    console.log("tamaño del array: ",this.daysInThisMonth.length)
    for (let j = 0; j< thisNumOfDays; j++){
      if(this.daysInThisMonth[j].fecha !== j+1 ){
        this.daysInThisMonth.splice(j, 0, {fecha: j+1, feriado: "si"});
      }
    }
    
  
    var lastDayThisMonth = new Date(this.date.getFullYear(), this.date.getMonth()+1, 0).getDay();
    var nextNumOfDays = new Date(this.date.getFullYear(), this.date.getMonth()+2, 0).getDate();
    for (var i = 0; i < (6-lastDayThisMonth); i++) {
      this.daysInNextMonth.push(i+1);
    }
    var totalDays = this.daysInLastMonth.length+this.daysInThisMonth.length+this.daysInNextMonth.length;
    if(totalDays<36) {
      for(var i = (7-lastDayThisMonth); i < ((7-lastDayThisMonth)+7); i++) {
        this.daysInNextMonth.push(i);
      }
    }
   
    
  }

  goToLastMonth() {
    this.date = new Date(this.date.getFullYear(), this.date.getMonth(), 0);
    this.getDaysOfMonth();
  }

  goToNextMonth() {
    this.date = new Date(this.date.getFullYear(), this.date.getMonth()+2, 0);
    this.getDaysOfMonth();
  }

  click(evento){
    console.log("mostrando el objeto evento " , evento);
    let dia = evento.toElement.innerText;
    let mes = this.date.getMonth()+1;
    let año = this.currentYear;
    console.log(dia,"/",mes,"/",año);
    if(this.daysInThisMonth[dia - 1].feriado === 'si'){
      this.daysInThisMonth[dia - 1].feriado = 'no';
    }else{
      this.daysInThisMonth[dia - 1].feriado = 'si';
    }
    

  }

  

}
