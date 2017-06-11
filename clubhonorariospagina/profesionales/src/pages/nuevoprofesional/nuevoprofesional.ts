import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { SideMenu } from '../sideMenu/sideMenu';

/**
 * Generated class for the NuevoprofesionalPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-nuevoprofesional',
  templateUrl: 'nuevoprofesional.html',
})
export class NuevoprofesionalPage {

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad NuevoprofesionalPage');
  }

}
