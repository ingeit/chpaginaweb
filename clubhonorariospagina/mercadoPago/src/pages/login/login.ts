import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

/**
 * Generated class for the LoginPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage({
  name:'login',
  segment: ':idMD5'
})
@Component({
  selector: 'page-login',
  templateUrl: 'login.html',
})
export class LoginPage {

  private idMD5: any;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
    
      

  }

  ionViewDidLoad() {
    this.idMD5 = this.navParams.get('idMD5');
      if(this.idMD5 === ''){
        console.log("nada, es un profesional")
      }else{
        console.log("username con hash,es una operadora ",this.idMD5)
      }
    
  }

}
