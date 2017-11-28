import { Component } from '@angular/core';
import { App, NavController, NavParams, ViewController  } from 'ionic-angular';
import { FormularioProvider } from '../../providers/formulario/formulario';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { FormularioWebPaso2Page } from '../formulario-web-paso2/formulario-web-paso2';
import { FormularioWebPage } from '../formulario-web/formulario-web';

/**
 * Generated class for the ModalPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */

@Component({
  selector: 'page-modal',
  templateUrl: 'modal.html',
})
export class ModalPage {

fechaTransaccion: any;
fechaPago: any;
formulario: any;
tarjetaNombre: any;
// form1 es para ver de donde viene el mensaje para el ngif en HTML
form1=false;
//variables para el modal final
mysql:any;
mailProf:any;
idOperacion:any;
mensaje:any;
mailCliente:any;
tarjetasComisiones: any;
tipoTarjeta: any;

  constructor(public navCtrl: NavController, 
    public navParams: NavParams, 
    public viewCtrl: ViewController,
    private _app: App,
    public iab: InAppBrowser,
    public formularioProvider:FormularioProvider){


    if(navParams.get('desde') === 'form1'){
      this.form1 = true;
      this.fechaTransaccion = navParams.get('fechaTransaccion');
      this.fechaPago = navParams.get('fechaPago');
      this.formulario = navParams.get('formulario');
      this.tarjetaNombre = navParams.get('tarjetaNombre');
      this.tarjetasComisiones = navParams.get('tarjetasComisiones');
      this.tipoTarjeta = navParams.get('tipoTarjeta');
    }
    else{
      console.log("entrando al modal, nav params form 2");
      this.form1 = false;
      let respuesta = navParams.get('mensaje');
      this.mysql = respuesta.mysql[0]; //mysql.codigo, fechaTransaccion, fechaPago, mensaje...
      console.log("mensaje mysql ",this.mysql);
      this.idOperacion = this.mysql.codigo;
      this.mensaje = this.mysql.mensaje;
      console.log("mensaje ", this.mensaje);
      if(this.idOperacion != 0){
        this.fechaTransaccion = this.mysql.fechaTransaccion
        this.fechaPago = this.mysql.fechaPago
        console.log("op exitosa, fechas: ",this.fechaTransaccion,this.fechaPago);
        this.mailProf = navParams.get('mensaje').mailProfesional; // si hay error.. aparece 'error', sino '250 OK ......'
        this.mailCliente = this.comprobarMailCliente(respuesta.mailCliente);
           // si hay error.. aparece 'error', sino '250 OK ......'
          console.log(this.mailCliente);
      }
    }
    

    console.log("fecha transaccion desde modal page",this.fechaTransaccion);
  }

   ionViewDidEnter() {
        this._app.setTitle("CH Paso 2");
    }

  ionViewDidLoad() {
  }

  dismiss() {
   this.viewCtrl.dismiss();
 }

  irPaso2(){
    console.log("fecha transaccion desde modal page justo por hacer push a formulario 2",this.fechaTransaccion);
    // Amex y Visa(3)
    console.log("dentro de modals, por redireccionar, la tarjeta elejida es ",this.formulario.tarjeta.value);
    if(this.formulario.tarjeta.value === "1" || this.formulario.tarjeta.value === "3"){
      // const browser = this.iab.create('https://vnet.visa.com.ar/cspv/adm/GetLogin.event');
      let URL = 'https://vnet.visa.com.ar/cspv/adm/GetLogin.event';
      window.open(URL, '_system');
    }else{
      //Master
    // const browser = this.iab.create('https://www1.posnet.com.ar/webposnet');
    let URL = 'https://www1.posnet.com.ar/webposnet';
    window.open(URL, '_system');
    }
    this.viewCtrl.dismiss();
    this.navCtrl.setRoot(FormularioWebPaso2Page,{fechaTransaccion: this.fechaTransaccion,
                                fechaPago: this.fechaPago,
                                formulario: this.formulario,
                                tarjetaNombre: this.tarjetaNombre,
                                tarjetasComisiones: this.tarjetasComisiones,
                                tipoTarjeta: this.tipoTarjeta
    });
  }

  comprobarMailCliente(respuesta){
    console.log(respuesta);
    if(respuesta === 'error'){
        return "error";
    }else{
      return "ok";
    }
  }

  cerrarModal(){
    this.navCtrl.setRoot(FormularioWebPage);
  }

  popForm1(){
    this.viewCtrl.dismiss();
    this.navCtrl.pop();
  }

  

}
