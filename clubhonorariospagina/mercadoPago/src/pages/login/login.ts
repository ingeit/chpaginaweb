import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, LoadingController, AlertController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { FormularioWebPage } from '../formulario-web/formulario-web';
import { FormularioProvider } from '../../providers/formulario/formulario';
import ProfesionalModelo from '../../modelos/profesional';

/**
 * Generated class for the LoginPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage({
   name: 'login',
   segment: ':idUsuario'
})
@Component({
   selector: 'page-login',
   templateUrl: 'login.html',
})
export class LoginPage {

   private idUsuario: any;
   private profesionalForm: FormGroup;
   private submitAttempt: boolean = false;
   private loading: any;
   private respuesta: any;

   constructor(public navCtrl: NavController,
      public navParams: NavParams,
      public alertCtrl: AlertController,
      public loadingCtrl: LoadingController,
      public formBuilder: FormBuilder,
      public formProv: FormularioProvider, ) {

      this.profesionalForm = formBuilder.group({
         dni: ['', Validators.compose([Validators.minLength(7), Validators.maxLength(12), Validators.pattern(/()\d/g), Validators.required])],
      });

   }

   ionViewDidLoad() {
      this.idUsuario = this.navParams.get('idUsuario');
      if (this.idUsuario === '') {
          this.idUsuario = null;
         console.log("nada, es un profesional", this.idUsuario)
      } else {
         console.log("username con hash,es una operadora ", this.idUsuario)
      }
   }

   public getProfesional() {
      if (!this.profesionalForm.valid) {
         this.submitAttempt = true;
      } else {
         this.showLoader();
         let details = {
            dni: this.profesionalForm.value.dni
         };
         this.formProv.dameProfesional(details).then((respuesta: any) => {
            this.submitAttempt = false;
            this.loading.dismiss();
            if(respuesta.codigo == 1){
                console.log(respuesta.profesional)
                this.navCtrl.push(FormularioWebPage,{profesional: respuesta.profesional, idUsuario: this.idUsuario});
            }else{
               this.mostrarAlerta('Error','No se pudo encontrar el profesional')
            }
         }
         );
      }
   }

   showLoader() {
      this.loading = this.loadingCtrl.create({
      });
      this.loading.present();
   }

   mostrarAlerta(titulo, mensaje) {
      let alert = this.alertCtrl.create({
         title: titulo,
         subTitle: mensaje,
         buttons: ['ACEPTAR']
      });
      alert.present();
   }

}