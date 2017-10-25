import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { ListarProfesionalesPage } from '../listar-profesionales/listar-profesionales';
import { ListaOperacionesPage } from '../lista-operaciones/lista-operaciones';

/**
 * Generated class for the DashboardPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-dashboard',
  templateUrl: 'dashboard.html',
})
export class DashboardPage {

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DashboardPage');
  }

  public ir(direccion){
    if(direccion === 'operaciones'){
      this.navCtrl.setRoot(ListaOperacionesPage);    
    }else{
      this.navCtrl.setRoot(ListarProfesionalesPage);   
    }
  }

}
