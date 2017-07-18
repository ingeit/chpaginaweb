import { Component } from '@angular/core';
import { NavController,LoadingController,AlertController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MenuController } from 'ionic-angular';
import { FormularioProvider } from '../../providers/formulario/formulario';

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
  fechaTransaccionMysql: any;
  fechaPagoMysql: any;
  

  constructor(public navCtrl: NavController,
              public alertCtrl: AlertController,
              private menu: MenuController,
              public loadingCtrl: LoadingController,
              public formBuilder: FormBuilder,
              public formularioProvider:FormularioProvider
          ) {

      this.formularioProvider.dameFechas().then((result) => {
          this.respuesta = result[0];
          if(this.respuesta.codigo === 1){
            console.log(this.respuesta.fechaTransaccion);
            this.fechaTransaccionMysql = this.respuesta.fechaTransaccion;
            this.fechaPagoMysql = this.respuesta.fechaPago;

          }
        }, (err) => {
          console.log("todomal");
            // this.loading.dismiss();
            // this.mostrarAlerta('Error','Hay un error en el usuario o contraseña');
        });  

      this.login = formBuilder.group({
        dniProfesional: ['',Validators.compose([
          Validators.maxLength(11),
          Validators.minLength(8),
          Validators.pattern(/()\d/g),
          Validators.required])],
        apellidoProfesional: ['',Validators.compose([
          Validators.maxLength(15),
          Validators.minLength(1),
          Validators.pattern(/()\w/g),
          Validators.required])],
        nombreProfesional: ['',Validators.compose([
          Validators.maxLength(15),
          Validators.minLength(1),
          Validators.pattern(/()\w/g),
          Validators.required])],
        mailProfesional: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5),
          Validators.email, 
          Validators.required])],
        dniCliente: ['',Validators.compose([
          Validators.maxLength(11),
          Validators.minLength(8),
          Validators.pattern(/()\d/g),
          Validators.required])],
        apellidoCliente: ['',Validators.compose([
           Validators.maxLength(15),
          Validators.minLength(1),
          Validators.pattern(/()\w/g),
          Validators.required])],
        nombreCliente: ['',Validators.compose([
           Validators.maxLength(15),
          Validators.minLength(1),
          Validators.pattern(/()\w/g),
          Validators.required])],
        telefonoCliente: ['',Validators.compose([
          Validators.maxLength(15),
          Validators.minLength(5),
          Validators.pattern(/()\d/g),
          Validators.required])],
        mailCliente: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5),
          Validators.email, 
          Validators.required])],
        tarjeta: ['',Validators.compose([
          Validators.required])],
        importeVenta: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(1), 
          
          Validators.required])],
        importeCobrar: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(1), 
          
          Validators.required])],
        cuotas: ['',Validators.compose([
          Validators.maxLength(1),
          Validators.minLength(2), 
          Validators.required])],
        importeCarga: ['',Validators.compose([
           Validators.maxLength(30),
          Validators.minLength(1), 
          
          Validators.required])],
        importeCuota: ['',Validators.compose([
           Validators.maxLength(30),
          Validators.minLength(1), 
          
          Validators.required])],
      });
  }

  ionViewDidLoad() {
    
    console.log('ionViewDidLoad FormularioWebPage');
  }

  generar(){
    console.log(this.login.value.tarjeta);
    if(!this.login.valid){
        this.submitAttempt = true; 
      }   
      }
}
