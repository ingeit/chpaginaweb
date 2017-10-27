import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

/**
 * Generated class for the VerOperacionPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@Component({
  selector: 'page-ver-operacion',
  templateUrl: 'ver-operacion.html',
})
export class VerOperacionPage {

  operacion: any;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
    this.operacion = this.navParams.get('operacion');
    if(this.operacion.tipoTarjeta === 'C'){
      this.operacion.tipoTarjeta = 'Credito'
    }else{
      this.operacion.tipoTarjeta = 'Debito'
    }
  }

  ionViewDidLoad() {
    console.log("operacion desde ver op", this.operacion);
  }

  setClasses(terjetaIn){
    let tar;
    switch (terjetaIn)
    {
      case 'AMEX':
        tar = 'fa-cc-amex';
        break;
      case 'VISA':
        tar = 'fa-cc-visa';
        break;
      case 'MASTER':
        tar = 'fa-cc-mastercard';
        break;
    }
      return tar;
  }

}
