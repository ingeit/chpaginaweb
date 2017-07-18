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
        fechaTransaccion: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
        fechaPago: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
        dniProfesional: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
        apellidoProfesional: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
        nombreProfesional: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
        mailProfesional: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
        dniCliente: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
        apellidoCliente: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
        nombreCliente: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
        telefonoCliente: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
        mailCliente: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
        tarjeta: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
      });
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad FormularioWebPage');
  }

  generar(){
    console.log(this.login.value.tarjeta);
  }

}
