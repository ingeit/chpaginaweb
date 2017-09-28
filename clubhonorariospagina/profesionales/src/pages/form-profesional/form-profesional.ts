import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

/**
 * Generated class for the FormProfesionalPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-form-profesional',
  templateUrl: 'form-profesional.html',
})
export class FormProfesionalPage {

  fomularioProfesional:any;
  submitAttempt:boolean = false;

  constructor(public navCtrl: NavController, 
              public formBuilder:FormBuilder,
              public navParams: NavParams) {

    this.fomularioProfesional = formBuilder.group({
        dniProfesional: ['',Validators.compose([Validators.maxLength(12),Validators.minLength(7),Validators.pattern(/()\d/g),Validators.required])],
        apellidoProfesional: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        nombreProfesional: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        especialidadProfesional:['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        domicilioProfesional:['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        localidadProfesional:['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        provinciaProfesional:['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        telefonoProfesional: ['',Validators.compose([Validators.maxLength(12),Validators.minLength(7),Validators.pattern(/()\d/g),Validators.required])],
        prefesionProfesional:['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        mailProfesional: ['',Validators.email],
        vendedorProfesional:['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        autorizadoProfesional:['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        dniAutorizadoProfesional: ['',Validators.compose([Validators.maxLength(12),Validators.minLength(7),Validators.pattern(/()\d/g),Validators.required])]
    });
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad FormProfesionalPage');
  }

  generar(){
    console.log("dentro de genererar");
    if(!this.fomularioProfesional.valid){
      console.log("formulario invalido");
        this.submitAttempt = true;
    }else{
      console.log("form valido");
    }
  }

}
