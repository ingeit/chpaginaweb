import { Component } from '@angular/core';
import { NavController, NavParams, IonicPage } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'page-formulario-web-paso2',
  templateUrl: 'formulario-web-paso2.html',
})
export class FormularioWebPaso2Page {

  fechaTransaccionMysql: any;
  fechaPago:any;
  formulario:any;
  codigo:any;

  constructor(public navCtrl: NavController, 
              public formBuilder: FormBuilder,
              public navParams: NavParams) {

      this.codigo = formBuilder.group({
        dniProfesional: ['',Validators.compose([Validators.maxLength(11),Validators.minLength(8),Validators.pattern(/()\d/g),Validators.required])],
        apellidoProfesional: ['',Validators.compose([Validators.maxLength(15),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])]
      });
  }

  ionViewDidLoad() {
    this.fechaTransaccionMysql = this.navParams.get('fechaTransaccion');
    this.fechaPago = this.navParams.get('fechaPago');
    this.formulario = this.navParams.get('formulario');  
    console.log(this.fechaTransaccionMysql,this.fechaPago,this.formulario);  
    
    console.log('ionViewDidLoad FormularioWebPaso2Page');
  }

}
