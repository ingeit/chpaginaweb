import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, LoadingController, AlertController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { FormularioProvider } from '../../providers/formulario/formulario';

/**
 * Generated class for the LoginPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage({
   name: 'login',
   segment: ':idMD5'
})
@Component({
   selector: 'page-login',
   templateUrl: 'login.html',
})
export class LoginPage {

   private idMD5: any;
   private profesionalForm: FormGroup;
   private profesional: any;
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
      this.idMD5 = this.navParams.get('idMD5');
      if (this.idMD5 === '') {
         console.log("nada, es un profesional")
      } else {
         console.log("username con hash,es una operadora ", this.idMD5)
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
         this.formProv.dameProfesional(details).then((result) => {
            this.submitAttempt = false;
            this.loading.dismiss();
            this.profesional = result[0];
            console.log(this.profesional);
            if(this.profesional.codigo === 1){
               // ir a siguiente ventana
            }else{
               //mostrar error
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
