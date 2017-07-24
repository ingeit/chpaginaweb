import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

/**
 * Generated class for the VerOperacionPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-ver-operacion',
  templateUrl: 'ver-operacion.html',
})
export class VerOperacionPage {

  operacion: any;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
    this.operacion = this.navParams.get('operacion');
  }

  ionViewDidLoad() {
    console.log("operacion desde ver op", this.operacion);
    
  }

}
