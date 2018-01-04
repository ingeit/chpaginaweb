import { Component, NgZone } from '@angular/core';
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
  arrayAlmanaqueLast: any;
  arrayAlmanaqueThis: any;
  arrayAlmanaqueNext: any;
  ene0: any;
  ene1: any;
  ene2: any;
  feb0: any;
  feb1: any;
  feb2: any;
  mar0: any;
  mar1: any;
  mar2: any;
  abr0: any;
  abr1: any;
  abr2: any;
  may0: any;
  may1: any;
  may2: any;
  jun0: any;
  jun1: any;
  jun2: any;
  jul0: any;
  jul1: any;
  jul2: any;
  ago0: any;
  ago1: any;
  ago2: any;
  sep0: any;
  sep1: any;
  sep2: any;
  oct0: any;
  oct1: any;
  oct2: any;
  nov0: any;
  nov1: any;
  nov2: any;
  dic0: any;
  dic1: any;
  dic2: any;

  constructor(public navCtrl: NavController, 
              public navParams: NavParams,
              public fechaProvider: FechasHabilesProvider,
              private _zone: NgZone ) {
                this.monthNames = ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"];
                this.obtenerFechasHabiles();
                // this.daysInThisMonth = [[],[]];
                // this.daysInThisMonth[0].push({feriado: "si", hola: "hola"})
                // console.log(this.daysInThisMonth);

  }

  
 
  ionViewDidLoad() {
    
    console.log('ionViewDidLoad CalendarioPage');
  }

  obtenerFechasHabiles(){
    this.fechaProvider.obtenerFechas().then((data)=>{
      this.respuesta = data;
      this.crearAlmanaque();
      // for(let i=0; i < this.respuesta.length; i++){ // n is array.length
      //   this.respuesta[i].Fechas = this.respuesta[i].Fechas.getFullYear()+"-"+this.respuesta[i].Fechas.getMonth()+1+"-"+this.respuesta[i].Fechas.getDate();
      // }
      // console.log("respuesta ",this.respuesta); 
    });
  }


  cambio(evento){
    
    // console.log(evento)
    // console.log("datemulti 0 ", this.dateMulti[0]['_d']);
    
  }

//a mano
  getDaysOfMonth(mesAlm) {
    
    this.daysInThisMonth = new Array();
    this.daysInLastMonth = new Array();
    this.daysInNextMonth = new Array();
    this.currentYear = this.date.getFullYear();
    // if(this.date.getMonth() === new Date().getMonth()) {
    //   this.currentDate = new Date().getDate();
    // } else {
    //   this.currentDate = 999;
    // }
  
    var firstDayThisMonth = new Date(this.date.getFullYear(), mesAlm, 1).getDay();
    var prevNumOfDays = new Date(this.date.getFullYear(), mesAlm, 0).getDate();
    for(var i = prevNumOfDays-(firstDayThisMonth-1); i <= prevNumOfDays; i++) {
      // this.daysInLastMonth.push(i);
      this.daysInLastMonth.push(null);
    }

    var thisNumOfDays = new Date(this.date.getFullYear(), mesAlm+1, 0).getDate();
    let año = this.date.getFullYear();
    let mes = mesAlm;    
    let contador = 0;
    for (let j=0; j < this.respuesta.length; j++) {
      if(this.respuesta[j].Fechas.getFullYear() === año && this.respuesta[j].Fechas.getMonth() === mesAlm){
          this.daysInThisMonth.push({fecha: this.respuesta[j].Fechas.getDate(), feriado:"no"});   
          contador++; 
      }
    }

    // relleno el array hasta 31 elementos 
    for (let j=0; j < thisNumOfDays; j++) {
      if(this.daysInThisMonth[j] === undefined ){
        this.daysInThisMonth.push({fecha: 0, feriado: "no"});
      }
    }

    for (let k = 0; k < thisNumOfDays;k++){
      if(this.daysInThisMonth[k].fecha !== k+1 ){
          this.daysInThisMonth.splice(k, 0, {fecha: k+1, feriado: "si"});
          this.daysInThisMonth.pop();
      }
    }
    
    var lastDayThisMonth = new Date(this.date.getFullYear(), mesAlm+1, 0).getDay();
    var nextNumOfDays = new Date(this.date.getFullYear(), mesAlm+2, 0).getDate();
    for (var i = 0; i < (6-lastDayThisMonth); i++) {
      // this.daysInNextMonth.push(i+1);
      this.daysInNextMonth.push(null);
    }
    var totalDays = this.daysInLastMonth.length+this.daysInThisMonth.length+this.daysInNextMonth.length;
    if(totalDays<36) {
      for(var i = (7-lastDayThisMonth); i < ((7-lastDayThisMonth)+7); i++) {
        // this.daysInNextMonth.push(i);
        this.daysInNextMonth.push(null);
      }
    }
    
    return [this.daysInLastMonth, this.daysInThisMonth , this.daysInNextMonth];
    
  }

  goToLastMonth() {
    this.date.setFullYear(this.date.getFullYear() - 1)
    this.crearAlmanaque();
  }

  goToNextMonth() {
    this.date.setFullYear(this.date.getFullYear() + 1)
    this.crearAlmanaque();
  }

  crearAlmanaque(){
      this.arrayAlmanaqueLast = [[],[]];
      this.arrayAlmanaqueThis = [[],[]];
      this.arrayAlmanaqueNext = [[],[]];
      for (let i = 0; i<12 ; i++){
        this.arrayAlmanaqueLast[i] = this.getDaysOfMonth(i)[0];
        this.arrayAlmanaqueThis[i] = this.getDaysOfMonth(i)[1];
        this.arrayAlmanaqueNext[i] = this.getDaysOfMonth(i)[2];
      }

      this.ene0 = this.arrayAlmanaqueLast[0];
      this.ene1 = this.arrayAlmanaqueThis[0];
      this.ene2 = this.arrayAlmanaqueNext[0];

      this.feb0 = this.arrayAlmanaqueLast[1];
      this.feb1 = this.arrayAlmanaqueThis[1];
      this.feb2 = this.arrayAlmanaqueNext[1];
      
      this.mar0 = this.arrayAlmanaqueLast[2];
      this.mar1 = this.arrayAlmanaqueThis[2];
      this.mar2 = this.arrayAlmanaqueNext[2];
      
      this.abr0 = this.arrayAlmanaqueLast[3];
      this.abr1 = this.arrayAlmanaqueThis[3];
      this.abr2 = this.arrayAlmanaqueNext[3];
      
      this.may0 = this.arrayAlmanaqueLast[4];
      this.may1 = this.arrayAlmanaqueThis[4];
      this.may2 = this.arrayAlmanaqueNext[4];
      
      this.jun0 = this.arrayAlmanaqueLast[5];
      this.jun1 = this.arrayAlmanaqueThis[5];
      this.jun2 = this.arrayAlmanaqueNext[5];
      
      this.jul0 = this.arrayAlmanaqueLast[6];
      this.jul1 = this.arrayAlmanaqueThis[6];
      this.jul2 = this.arrayAlmanaqueNext[6];
      
      this.ago0 = this.arrayAlmanaqueLast[7];
      this.ago1 = this.arrayAlmanaqueThis[7];
      this.ago2 = this.arrayAlmanaqueNext[7];
      
      this.sep0 = this.arrayAlmanaqueLast[8];
      this.sep1 = this.arrayAlmanaqueThis[8];
      this.sep2 = this.arrayAlmanaqueNext[8];
      
      this.oct0 = this.arrayAlmanaqueLast[9];
      this.oct1 = this.arrayAlmanaqueThis[9];
      this.oct2 = this.arrayAlmanaqueNext[9];
      
      this.nov0 = this.arrayAlmanaqueLast[10];
      this.nov1 = this.arrayAlmanaqueThis[10];
      this.nov2 = this.arrayAlmanaqueNext[10];
      
      this.dic0 = this.arrayAlmanaqueLast[11];
      this.dic1 = this.arrayAlmanaqueThis[11];
      this.dic2 = this.arrayAlmanaqueNext[11];

      console.log(this.arrayAlmanaqueNext);
    
  }

  click(evento){
    console.log("mostrando el objeto evento " , evento);
    let dia = evento.toElement.innerText;
    let mes = this.date.getMonth()+1;
    let año = this.currentYear;
    console.log(dia,"/",mes,"/",año);
    for(let i = 0; )
    if(this.daysInThisMonth[dia - 1].feriado === 'si'){
      this.daysInThisMonth[dia - 1].feriado = 'no';
    }else{
      this.daysInThisMonth[dia - 1].feriado = 'si';
    }
    

  }

  

}
