import { Component,ViewChild } from '@angular/core';
import { NavController } from 'ionic-angular';
import { FormularioWebPage } from '../formulario-web/formulario-web';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  constructor(public navCtrl: NavController) {


  }

  formularioWeb(){
    this.navCtrl.setRoot(FormularioWebPage);
  }

}
