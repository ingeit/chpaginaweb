import { Component } from '@angular/core';
import { NavController, NavParams, ViewController  } from 'ionic-angular';
import { FormularioProvider } from '../../providers/formulario/formulario';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { FormularioWebPaso2Page } from '../formulario-web-paso2/formulario-web-paso2';

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


  constructor(public navCtrl: NavController, 
    public navParams: NavParams, 
    public viewCtrl: ViewController,
    public iab: InAppBrowser,
    public formularioProvider:FormularioProvider){

    this.fechaTransaccion = navParams.get('fechaTransaccion');
    this.fechaPago = navParams.get('fechaPago');
    this.formulario = navParams.get('formulario');
  }

  ionViewDidLoad() {
  }

  dismiss() {
   this.viewCtrl.dismiss();
 }

  irPaso2(){
    this.navCtrl.push(FormularioWebPaso2Page,{fechaTransaccion: this.fechaTransaccion,
                                fechaPago: this.fechaPago,
                                formulario: this.formulario
    });
    // Amex y Visa(3)
    console.log("dentro de modals, por redireccionar, la tarjeta elejida es ",this.formulario.tarjeta.value);
    if(this.formulario.tarjeta.value === "1" || this.formulario.tarjeta.value === "3"){
      const browser = this.iab.create('https://vnet.visa.com.ar/cspv/adm/GetLogin.event');
    }else{
      //Master
    const browser = this.iab.create('https://www1.posnet.com.ar/webposnet');
    }
    this.viewCtrl.dismiss();
  }

  

}
