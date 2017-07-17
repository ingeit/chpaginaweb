import { Component } from '@angular/core';
import { NavController,LoadingController,AlertController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MenuController } from 'ionic-angular';

/**
 * Generated class for the FormularioWebPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */

@Component({
  selector: 'page-formulario-web',
  templateUrl: 'formulario-web.html',
})
export class FormularioWebPage {

  login: FormGroup;
  submitAttempt: boolean = false;
  loading:any;
  respuesta:any;

  constructor(public navCtrl: NavController,
              public alertCtrl: AlertController,
              private menu: MenuController,
              public loadingCtrl: LoadingController,
              public formBuilder: FormBuilder) {

      this.login = formBuilder.group({
        username: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
        password: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
      });
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad FormularioWebPage');
  }

}
