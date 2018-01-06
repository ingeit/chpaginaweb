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
  mysql: any;
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
  prueba: any;
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

  arrayNuevosDiasHabiles: any;
  arrayNuevosFeriados: any;

  constructor(public navCtrl: NavController, 
              public navParams: NavParams,
              public fechaProvider: FechasHabilesProvider,
              private _zone: NgZone ) {
                this.monthNames = ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"];
                this.obtenerFechasHabiles();
                // this.daysInThisMonth = [[],[]];
                // this.daysInThisMonth[0].push({diaHabil: "si", hola: "hola"})
                // console.log(this.daysInThisMonth);
                
                // this.prueba = [1,2,3,4,5]
                // console.log(this.prueba);
                // this.prueba.splice(1,1);
                // console.log(this.prueba);


  }

  
 
  ionViewDidLoad() {
    
    console.log('ionViewDidLoad CalendarioPage');
  }

  obtenerFechasHabiles(){
    this.fechaProvider.obtenerFechas().then((data)=>{
      this.respuesta = data;
      this.crearAlmanaque();
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
          this.daysInThisMonth.push({fecha: this.respuesta[j].Fechas.getDate(), diaHabil:"si"});   
          contador++; 
      }
    }

    // relleno el array hasta 31 elementos 
    for (let j=0; j < thisNumOfDays; j++) {
      if(this.daysInThisMonth[j] === undefined ){
        this.daysInThisMonth.push({fecha: 0, diaHabil: "si"});
      }
    }

    for (let k = 0; k < thisNumOfDays;k++){
      if(this.daysInThisMonth[k].fecha !== k+1 ){
          this.daysInThisMonth.splice(k, 0, {fecha: k+1, diaHabil: "no"});
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

  }

  click(mes,dia){
    dia++;
    let año = this.currentYear;
    switch (mes) {
      case 0:
        if(this.ene1[dia-1].diaHabil === 'no'){
          this.ene1[dia-1].diaHabil = 'si';
        }else{
          this.ene1[dia-1].diaHabil = 'no';
        }
        break;
        case 1:
        if(this.feb1[dia-1].diaHabil === 'no'){
          this.feb1[dia-1].diaHabil = 'si';
        }else{
          this.feb1[dia-1].diaHabil = 'no';
        }
        break;
        case 2:
        if(this.mar1[dia-1].diaHabil === 'no'){
          this.mar1[dia-1].diaHabil = 'si';
        }else{
          this.mar1[dia-1].diaHabil = 'no';
        }
        break;
        case 3:
        if(this.abr1[dia-1].diaHabil === 'no'){
          this.abr1[dia-1].diaHabil = 'si';
        }else{
          this.abr1[dia-1].diaHabil = 'no';
        }
        break;
        case 4:
        if(this.may1[dia-1].diaHabil === 'no'){
          this.may1[dia-1].diaHabil = 'si';
        }else{
          this.may1[dia-1].diaHabil = 'no';
        }
        break;
        case 5:
        if(this.jun1[dia-1].diaHabil === 'no'){
          this.jun1[dia-1].diaHabil = 'si';
        }else{
          this.jun1[dia-1].diaHabil = 'no';
        }
        break;
        case 6:
        if(this.jul1[dia-1].diaHabil === 'no'){
          this.jul1[dia-1].diaHabil = 'si';
        }else{
          this.jul1[dia-1].diaHabil = 'no';
        }
        break;
        case 7:
        if(this.ago1[dia-1].diaHabil === 'no'){
          this.ago1[dia-1].diaHabil = 'si';
        }else{
          this.ago1[dia-1].diaHabil = 'no';
        }
        break;
        case 8:
        if(this.sep1[dia-1].diaHabil === 'no'){
          this.sep1[dia-1].diaHabil = 'si';
        }else{
          this.sep1[dia-1].diaHabil = 'no';
        }
        break;
        case 9:
        if(this.oct1[dia-1].diaHabil === 'no'){
          this.oct1[dia-1].diaHabil = 'si';
        }else{
          this.oct1[dia-1].diaHabil = 'no';
        }
        break;
        case 10:
        if(this.nov1[dia-1].diaHabil === 'no'){
          this.nov1[dia-1].diaHabil = 'si';
        }else{
          this.nov1[dia-1].diaHabil = 'no';
        }
        break;
        case 11:
        if(this.dic1[dia-1].diaHabil === 'no'){
          this.dic1[dia-1].diaHabil = 'si';
        }else{
          this.dic1[dia-1].diaHabil = 'no';
        }
        break;

    }
  }

  guardar(){
    //transformamos la sfechas de mysql en el formado YYYY-MM-DD
    this.mysql = new Array;
    this.mysql = this.respuesta;
    for(let i=0; i < this.mysql.length; i++){ // n is array.length
      switch (this.mysql[i].Fechas.getMonth()) {
        case 0:
        this.mysql[i].Fechas = this.mysql[i].Fechas.getFullYear()+"-"+1+"-"+this.mysql[i].Fechas.getDate();
        break;
        case 1:
        this.mysql[i].Fechas = this.mysql[i].Fechas.getFullYear()+"-"+2+"-"+this.mysql[i].Fechas.getDate();
        break;
        case 2:
        this.mysql[i].Fechas = this.mysql[i].Fechas.getFullYear()+"-"+3+"-"+this.mysql[i].Fechas.getDate();
        break;
        case 3:
        this.mysql[i].Fechas = this.mysql[i].Fechas.getFullYear()+"-"+4+"-"+this.mysql[i].Fechas.getDate();
        break;
        case 4:
        this.mysql[i].Fechas = this.mysql[i].Fechas.getFullYear()+"-"+5+"-"+this.mysql[i].Fechas.getDate();
        break;
        case 5:
        this.mysql[i].Fechas = this.mysql[i].Fechas.getFullYear()+"-"+6+"-"+this.mysql[i].Fechas.getDate();
        break;
        case 6:
        this.mysql[i].Fechas = this.mysql[i].Fechas.getFullYear()+"-"+7+"-"+this.mysql[i].Fechas.getDate();
        break;
        case 7:
        this.mysql[i].Fechas = this.mysql[i].Fechas.getFullYear()+"-"+8+"-"+this.mysql[i].Fechas.getDate();
        break;
        case 8:
        this.mysql[i].Fechas = this.mysql[i].Fechas.getFullYear()+"-"+9+"-"+this.mysql[i].Fechas.getDate();
        break;
        case 9:
        this.mysql[i].Fechas = this.mysql[i].Fechas.getFullYear()+"-"+10+"-"+this.mysql[i].Fechas.getDate();
        break;
        case 10:
        this.mysql[i].Fechas = this.mysql[i].Fechas.getFullYear()+"-"+11+"-"+this.mysql[i].Fechas.getDate();
        break;
        case 11:
        this.mysql[i].Fechas = this.mysql[i].Fechas.getFullYear()+"-"+12+"-"+this.mysql[i].Fechas.getDate();
        break;
      }  
    }

    console.log("almanaque mysql recien generado ",this.mysql);

    this.prueba=[];
    for(let i = 0; i < this.ene1.length ; i++){
      this.prueba.push({fecha: this.currentYear+"-"+"1"+"-"+this.ene1[i].fecha, diaHabil : this.ene1[i].diaHabil});
    }
    for(let i = 0; i< this.feb1.length ; i++){
      this.prueba.push({ fecha: this.currentYear+"-"+"2"+"-"+this.feb1[i].fecha, diaHabil : this.feb1[i].diaHabil});
    }
    for(let i = 0; i< this.mar1.length ; i++){
      this.prueba.push({ fecha: this.currentYear+"-"+"3"+"-"+this.mar1[i].fecha, diaHabil : this.mar1[i].diaHabil});
    }
    for(let i = 0; i< this.abr1.length ; i++){
      this.prueba.push({ fecha: this.currentYear+"-"+"4"+"-"+this.abr1[i].fecha, diaHabil : this.abr1[i].diaHabil});
    }
    for(let i = 0; i< this.may1.length ; i++){
      this.prueba.push({ fecha: this.currentYear+"-"+"5"+"-"+this.may1[i].fecha, diaHabil : this.may1[i].diaHabil});
    }
    for(let i = 0; i< this.jun1.length ; i++){
      this.prueba.push({ fecha: this.currentYear+"-"+"6"+"-"+this.jun1[i].fecha, diaHabil : this.jun1[i].diaHabil});
    }
    for(let i = 0; i< this.jul1.length ; i++){
      this.prueba.push({ fecha: this.currentYear+"-"+"7"+"-"+this.jul1[i].fecha, diaHabil : this.jul1[i].diaHabil});
    }
    for(let i = 0; i< this.ago1.length ; i++){
      this.prueba.push({ fecha: this.currentYear+"-"+"8"+"-"+this.ago1[i].fecha, diaHabil : this.ago1[i].diaHabil});
    }
    for(let i = 0; i< this.sep1.length ; i++){
      this.prueba.push({ fecha: this.currentYear+"-"+"9"+"-"+this.sep1[i].fecha, diaHabil : this.sep1[i].diaHabil});
    }
    for(let i = 0; i< this.oct1.length ; i++){
      this.prueba.push({ fecha: this.currentYear+"-"+"10"+"-"+this.oct1[i].fecha, diaHabil : this.oct1[i].diaHabil});
    }
    for(let i = 0; i< this.nov1.length ; i++){
      this.prueba.push({ fecha: this.currentYear+"-"+"11"+"-"+this.nov1[i].fecha, diaHabil : this.nov1[i].diaHabil});
    }
    for(let i = 0; i< this.dic1.length ; i++){
      this.prueba.push({ fecha: this.currentYear+"-"+"12"+"-"+this.dic1[i].fecha, diaHabil : this.dic1[i].diaHabil});
    }

    console.log("mostramos el almanaque completo con las interacciones del cliente ",this.prueba);

    this.arrayNuevosDiasHabiles = new Array();
    this.arrayNuevosFeriados = new Array();

    // console.log(this.mysql.indexOf("2018-1-2"));

    // let index = this.mysql.some(function(fecha){return fecha["Fechas"] === this.prueba[1].fecha});

    // console.log(index);

     for(let i = 0; i < this.prueba.length ; i++){
      let auxFecha =  this.prueba[i].fecha;
      let auxDia =  this.prueba[i].diaHabil;
      let index = this.mysql.findIndex(function(fechas) {
        return fechas.Fechas === auxFecha;
      });
        if(index > -1 && auxDia === 'si'){
          this.prueba.splice(i,1);
        }
        if(index === -1 && auxDia === 'si'){
          this.arrayNuevosDiasHabiles = this.prueba.splice(i,1);
        }
        if(index > -1 && auxDia === 'no'){
          this.arrayNuevosFeriados.push(this.prueba[i]);
          this.prueba.splice(i,1);
        }
        this.prueba.splice(i,1);    
    }
    

    console.log("mostramos thisprueba en teoria vacio",this.prueba)
    console.log("nuevos dias hab",this.arrayNuevosDiasHabiles);
    console.log("nuevos feriados",this.arrayNuevosFeriados);

  }

 

}
