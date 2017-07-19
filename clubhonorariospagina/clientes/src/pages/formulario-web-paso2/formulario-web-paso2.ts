import { Component } from '@angular/core';
import { NavController, NavParams, IonicPage } from 'ionic-angular';

/**
 * Generated class for the FormularioWebPaso2Page page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage({
  name: 'codigo',
})
@Component({
  selector: 'page-formulario-web-paso2',
  templateUrl: 'formulario-web-paso2.html',
})
export class FormularioWebPaso2Page {

  fechaTransaccionMysql: any;
  fechaPago:any;
  formulario:any;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    this.fechaTransaccionMysql = this.navParams.get('fechaTransaccion');
    this.fechaPago = this.navParams.get('fechaPago');
    this.formulario = this.navParams.get('formulario');  
    console.log(this.fechaTransaccionMysql,this.fechaPago,this.formulario);  
    
    console.log('ionViewDidLoad FormularioWebPaso2Page');
  }

}
