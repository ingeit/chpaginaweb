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
  calendarioMes:any;
  añoCalendario = 2018;
  date = new Date();
  daysInThisMonth: any;
  daysInLastMonth: any;
  daysInNextMonth: any;
  monthNames: string[];
  currentMonth: any;
  currentYear: any;
  currentDate: any;
  mysql: any;
  arrayNuevosDiasHabiles: any;
  arrayNuevosFeriados: any;

  

  constructor(public navCtrl: NavController, 
              public navParams: NavParams,
              public fechaProvider: FechasHabilesProvider,
              private _zone: NgZone ) {
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
      console.log("respuesta mysql",this.respuesta); 
    });
  }


  cambio(evento){
    
    // console.log(evento)
    // console.log("datemulti 0 ", this.dateMulti[0]['_d']);
    
  }

//a mano
  getDaysOfMonth() {
    
    this.daysInThisMonth = new Array();
    this.daysInLastMonth = new Array();
    this.daysInNextMonth = new Array();
    this.mysql = new Array();
    this.currentMonth = this.monthNames[this.date.getMonth()];
    this.currentYear = this.date.getFullYear();
  
    var firstDayThisMonth = new Date(this.date.getFullYear(), this.date.getMonth(), 1).getDay();
    var prevNumOfDays = new Date(this.date.getFullYear(), this.date.getMonth(), 0).getDate();
    for(var i = prevNumOfDays-(firstDayThisMonth-1); i <= prevNumOfDays; i++) {
      // this.daysInLastMonth.push(i);
      this.daysInLastMonth.push(null);
    }

    var thisNumOfDays = new Date(this.date.getFullYear(), this.date.getMonth()+1, 0).getDate();
    let año = this.date.getFullYear();
    let mes = this.date.getMonth();
    let mesindexado = mes+1;
    
    for (let j=0; j < this.respuesta.length; j++) {
      if(this.respuesta[j].Fechas.getFullYear() === año && this.respuesta[j].Fechas.getMonth() === mes){
          this.daysInThisMonth.push({fecha: this.respuesta[j].Fechas.getDate(), diaHabil: "si"});
          // aprovechamos y transformamos la respuesta de mysql a formato YYYY-MM-DD
          this.mysql.push({fecha: this.currentYear+"-"+mesindexado+"-"+this.respuesta[j].Fechas.getDate()}); 
      }
    }

    console.log("mostrando array de dias sin relleno ",this.daysInThisMonth);
    // relleno el array hasta 31 elementos 
    for (let j=0; j < thisNumOfDays; j++) {
      if(this.daysInThisMonth[j] === undefined ){
        this.daysInThisMonth.push({fecha: 0, diaHabil: "si"});
      }
    }

    console.log("mostrando respuesta en buen formato ",this.mysql);

    for (let k = 0; k < thisNumOfDays;k++){
      if(this.daysInThisMonth[k].fecha !== k+1 ){
          this.daysInThisMonth.splice(k, 0, {fecha: k+1, diaHabil: "no"});
          this.daysInThisMonth.pop();
      }
    }

    console.log("mostrando array de dias CON relleno ",this.daysInThisMonth);
    
    var lastDayThisMonth = new Date(this.date.getFullYear(), this.date.getMonth()+1, 0).getDay();
    var nextNumOfDays = new Date(this.date.getFullYear(), this.date.getMonth()+2, 0).getDate();
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
   
    
  }

  goToLastMonth() {
    this.date = new Date(this.date.getFullYear(), this.date.getMonth(), 0);
    this.getDaysOfMonth();
  }

  goToNextMonth() {
    this.date = new Date(this.date.getFullYear(), this.date.getMonth()+2, 0);
    this.getDaysOfMonth();
  }

  click(dia,mes){
    dia++;
    let año = this.currentYear;
    if(this.daysInThisMonth[dia - 1].diaHabil === 'no'){
      this.daysInThisMonth[dia - 1].diaHabil = 'si';
    }else{
      this.daysInThisMonth[dia - 1].diaHabil = 'no';
    }
  }

  guardar(){
    
    //Transofrmarmos daysInThisMonth al formato YYYY-MM-DD
    this.calendarioMes=[];
    for(let i = 0; i < this.daysInThisMonth.length ; i++){
      let mes = this.date.getMonth();
      mes = mes + 1;
      this.calendarioMes.push({fecha: this.currentYear+"-"+mes+"-"+this.daysInThisMonth[i].fecha, diaHabil : this.daysInThisMonth[i].diaHabil});
    }

    console.log("mostramos el almanaque completo con las interacciones del cliente ",this.calendarioMes);

    this.arrayNuevosDiasHabiles = new Array();
    this.arrayNuevosFeriados = new Array();

    // console.log(this.mysql.indexOf("2018-1-2"));
    // let index = this.mysql.some(function(fecha){return fecha["Fechas"] === this.prueba[1].fecha});

     for(let i = 0; i < this.calendarioMes.length ; i++){
      let auxFecha =  this.calendarioMes[i].fecha;
      let auxDia =  this.calendarioMes[i].diaHabil;
      let index = this.mysql.findIndex(function(m) {
        return m.fecha === auxFecha;
      });
      console.log(index, "dia habil? "+auxDia);
        if(index === -1 && auxDia === 'si'){
          this.arrayNuevosDiasHabiles.push(this.calendarioMes[i]);
        }
        if(index > -1 && auxDia === 'no'){
          this.arrayNuevosFeriados.push(this.calendarioMes[i]);
        }   
    }
  
    console.log("nuevos dias hab",this.arrayNuevosDiasHabiles);
    console.log("nuevos feriados",this.arrayNuevosFeriados);

  }
}