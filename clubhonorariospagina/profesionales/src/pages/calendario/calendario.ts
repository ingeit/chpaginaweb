import { Component, NgZone } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController, LoadingController } from 'ionic-angular';
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

  public loading:any;
  public response: any;
  respuesta: any;
  mysql: any;
  calendarioAnual:any = [];
  añoCalendario = 2018;
  //a mano
  prueba: any;
  date = new Date();
  daysInThisMonth: any;
  monthNames: string[];
  currentMonth: any;
  currentYear: any;
  currentDate: any;
  arrayAlmanaqueThis: any;
  arrayNuevosDiasHabiles: any;
  arrayNuevosFeriados: any;
  contador: any = 0;

  constructor(public navCtrl: NavController, 
              public navParams: NavParams,
              public fechaProvider: FechasHabilesProvider,
              public loadingCtrl: LoadingController,
              private alertCtrl: AlertController,
              private _zone: NgZone ) {
                this.monthNames = ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"];
                this.obtenerFechasHabiles(this.date.getFullYear());
                this.mysql = new Array();
                this.arrayNuevosDiasHabiles = new Array();
                this.arrayNuevosFeriados = new Array();

  }

  
 
  ionViewDidLoad() {
    
    console.log('ionViewDidLoad CalendarioPage');
  }

  obtenerFechasHabiles(year){
    this.showLoader("")
    let details = { anio: year};
    this.fechaProvider.obtenerFechasPorAnio(details).then((data)=>{
      this.respuesta = data;
      this.loading.dismiss();
      this.crearAlmanaque();
    });
  }

  crearAlmanaque(){
    this.arrayAlmanaqueThis = [];
    for (let i = 0; i<12 ; i++){
      this.arrayAlmanaqueThis[i] = this.getDaysOfMonth(i);
    }
  }

  getDaysOfMonth(mesAlm) {
    
    this.daysInThisMonth = new Array();
    this.currentYear = this.date.getFullYear();
    var firstDayThisMonth = new Date(this.date.getFullYear(), mesAlm, 1).getDay();
    var thisNumOfDays = new Date(this.date.getFullYear(), mesAlm+1, 0).getDate();
    let año = this.date.getFullYear();
    let mes = mesAlm;
    let mesindexado = mes+1;

    // metemos los dias de mysql en el array
    for (let j=0; j < this.respuesta.length; j++) {
      if(this.respuesta[j].Fechas.getFullYear() === año && this.respuesta[j].Fechas.getMonth() === mesAlm){
          this.daysInThisMonth.push({fecha: this.respuesta[j].Fechas.getDate(), diaHabil:"si" , tocado : false}); 
          // aprovechamos y transformamos la respuesta de mysql a formato YYYY-MM-DD
          this.mysql.push({fecha: this.currentYear+"-"+mesindexado+"-"+this.respuesta[j].Fechas.getDate()});  
      }
    }
    /////////////////////////////////////////////////////////////////////////////
    // con esta funcion hacemos que el AÑO que no este cargado en mysql,       //
    // se ponga por defecto en HABILES                                         //
    // solo para clicear los "fines de semana" como no habiles                 //
    // y guardar los cambios para que impacte en mysql                         //
    //                                                                         //
    //                                                                         //
    // if(this.daysInThisMonth.length === 0){                                  //
    //   for (let j=1; j <= thisNumOfDays; j++) {                              //
    //     this.daysInThisMonth.push({fecha: j, diaHabil:"si"});               //
    //   }                                                                     //
    // }                                                                       //
    //                                                                         //
    /////////////////////////////////////////////////////////////////////////////

    // relleno el array hasta 31 elementos
    for (let j=0; j < thisNumOfDays; j++) {
      if(this.daysInThisMonth[j] === undefined ){
        this.daysInThisMonth.push({fecha: 0, diaHabil: "si", tocado: false});
      }
    }

    for (let k = 0; k < thisNumOfDays;k++){
      if(this.daysInThisMonth[k].fecha !== k+1 ){
          this.daysInThisMonth.splice(k, 0, {fecha: k+1, diaHabil: "no" , tocado: false});
          this.daysInThisMonth.pop();
      }
    }
    
    // desplazar los dias para que coincidan en el dia de la semana 
    for(let i = 0; i<firstDayThisMonth ; i++){
      this.daysInThisMonth.unshift('');
    }

    // rellenar los cuadros en grises al final del meslet tam = 42;
    let tam;
    (this.daysInThisMonth.length > 35) ? tam = 42 : tam = 35;
    for(let i = this.daysInThisMonth.length; i<tam ; i++){
      this.daysInThisMonth.push('');
    }

    return this.daysInThisMonth;
  }

  irAlAnioAnterior() {
    if(this.arrayNuevosDiasHabiles.length !== 0 || this.arrayNuevosFeriados.length !== 0 ){
      let titulo = "Modificacion sin guardar";
      let mensaje = "¿Está seguro que desea continuar?. Los cambios realizados se perderán";
      this.confirmarNuevoAlmanaque(titulo,mensaje,"anioAnterior");
    }else{
      let anio = this.date.getFullYear() - 1;
      this.date.setFullYear(this.date.getFullYear() - 1);
      this.obtenerFechasHabiles(anio);
    }
  }

  irAlAnioSiguiente() {
    if(this.arrayNuevosDiasHabiles.length !== 0 || this.arrayNuevosFeriados.length !== 0 ){
      let titulo = "Modificacion sin guardar";
      let mensaje = "¿Está seguro que desea continuar?. Los cambios realizados se perderán";
      this.confirmarNuevoAlmanaque(titulo,mensaje,"anioSiguiente");
    }else{
      let anio = this.date.getFullYear() + 1;
      this.date.setFullYear(this.date.getFullYear() + 1);
      this.obtenerFechasHabiles(anio);
    }
    
  }


  click(mes,dia){
    let año = this.currentYear;
    this.arrayAlmanaqueThis[mes][dia].tocado = !this.arrayAlmanaqueThis[mes][dia].tocado;
    (this.arrayAlmanaqueThis[mes][dia].tocado) ? this.contador++ : this.contador--;
    if(this.arrayAlmanaqueThis[mes][dia].diaHabil === 'no'){
      this.arrayAlmanaqueThis[mes][dia].diaHabil = 'si';
    }else{
      this.arrayAlmanaqueThis[mes][dia].diaHabil = 'no';
    }
  }

  calcularNuevosDias(){
    this.arrayNuevosDiasHabiles = new Array();
    this.arrayNuevosFeriados = new Array();
    let bandera = 0;
    this.prueba=[];

    for(let mes of this.arrayAlmanaqueThis){
      bandera++;
      for(let dia of mes){
          if(dia.tocado){
            if(dia.diaHabil === 'si'){
              this.arrayNuevosDiasHabiles.push({ fecha: this.currentYear+"-"+bandera+"-"+dia.fecha});
            }else{
              this.arrayNuevosFeriados.push({ fecha: this.currentYear+"-"+bandera+"-"+dia.fecha});
            }
          }
      }
    }
    console.log("nuevos dias hab",this.arrayNuevosDiasHabiles);
    console.log("nuevos feriados",this.arrayNuevosFeriados);
  }

  confirmarNuevoAlmanaque(titulo,mensaje,anioObjetivo) {
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
            this.arrayNuevosDiasHabiles = new Array();
            this.arrayNuevosFeriados = new Array();
            switch (anioObjetivo) {
              case "anioAnterior":
                this.irAlAnioAnterior();
              break;
              case "anioSiguiente":
                this.irAlAnioSiguiente();
              break;
              default:
                break;
            }
          }
        }
      ]
    });
    alert.present();
  }

  guardarCambios() {
    this.calcularNuevosDias();
    let mensaje = "FORMATO: Año-Mes-Día<br><br>";
    let cambios;
    if(this.arrayNuevosDiasHabiles.length === 0 && this.arrayNuevosFeriados.length === 0){
      mensaje = "No se detectaron cambios"
      cambios = "no";
    }else{
      cambios = "si";
      let diasHabiles ="";
      let diasFeriados = "";
      if(this.arrayNuevosDiasHabiles.length !== 0){
        mensaje = mensaje.concat(this.arrayNuevosDiasHabiles.length+" nuevos días HÁBILES:<br>");
        for(let i = 0; i < this.arrayNuevosDiasHabiles.length; i++){
          diasHabiles = this.arrayNuevosDiasHabiles[i].fecha+"<br>"
          mensaje = mensaje.concat(diasHabiles);
        }
      }else{
        mensaje = mensaje.concat("Nuevos días HÁBILES:<br>");
        mensaje = mensaje.concat("no se detectaron nuevos días hábiles:<br>");
      }
      if(this.arrayNuevosFeriados.length !== 0){
        mensaje = mensaje.concat("<br>"+this.arrayNuevosFeriados.length+" nuevos días NO HÁBILES:<br>");
        for(let i = 0; i < this.arrayNuevosFeriados.length; i++){
          diasFeriados = this.arrayNuevosFeriados[i].fecha+"<br>"
          mensaje = mensaje.concat(diasFeriados);
        }
      }else{
        mensaje = mensaje.concat("<br>Nuevos días NO HÁBILES:<br>");
        mensaje = mensaje.concat("no se detectaron nuevos días no hábiles:<br>");
      }
    }
    let alert = this.alertCtrl.create({
      title: "Guardar cambios",
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
            this.guardar(cambios);
          }
        }
      ]
    });
    alert.present();
  }

  guardar(cambios){
    if(cambios === 'si'){
        console.log("hay nuevos feriads")
        let aux = "";
        // Armamos un array con todos los dias diferentes separados por * y entre nuevos habiles y nuevos feriados separamos con un %
        for(let i = 0; i< this.arrayNuevosDiasHabiles.length; i++ ){
          if(i !== 0){
            aux = aux.concat("*");
            aux = aux.concat(this.arrayNuevosDiasHabiles[i].fecha);
          }else{
            aux = aux.concat(this.arrayNuevosDiasHabiles[i].fecha);
          }
        }

        aux = aux.concat("*");
        aux = aux.concat("%");
        for(let i = 0; i< this.arrayNuevosFeriados.length; i++ ){
          if(i !== 0){
            aux = aux.concat("*");
            aux = aux.concat(this.arrayNuevosFeriados[i].fecha);
          }else{
            aux = aux.concat(this.arrayNuevosFeriados[i].fecha);
          }
        }

        aux = aux.concat("*");
        let details = {fechas : aux}
        this.fechaProvider.modificarCalendario(details).then((data)=>{
          this.loading.dismiss();
          this.response = data[0];
          if(this.response.codigo !== 1){
            this.mostrarAlerta('ERROR', "No se realizaron los cambios. Motivo: "+this.response.mensaje)
          }else{
            this.mostrarAlerta('Operacion Exitosa', this.response.mensaje)
          }
        });
    }else{
      console.log("click en guardar NO HAY CAMBIOS, no se llama provider")
    }
  }

  showLoader(mensaje){
    this.loading = this.loadingCtrl.create({
      content: mensaje
    });
    this.loading.present();
  }

  mostrarAlerta(titulo,mensaje) {
    let alert = this.alertCtrl.create({
    title: titulo,
    subTitle: mensaje,
    cssClass: 'alerta',
    buttons: [{
      text: 'Aceptar',
      handler: () => {
        this.navCtrl.setRoot(CalendarioPage);
     }
    }]
    });
    alert.present();
  }

}
