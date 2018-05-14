import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, LoadingController, AlertController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { FormularioWebPage } from '../formulario-web/formulario-web';
import { FormularioProvider } from '../../providers/formulario/formulario';
import { UsuarioProvider } from '../../providers/usuario/usuario';
import ProfesionalModelo from '../../modelos/profesional';
import * as jwt from 'jsonwebtoken';

@IonicPage({
   name: 'login',
   segment: ':idUsuario'
})
@Component({
   selector: 'page-login',
   templateUrl: 'login.html',
})
export class LoginPage {
   private token: any;
   private usuario: any;
   private profesionalForm: FormGroup;
   private submitAttempt: boolean = false;
   private loading: any;
   private respuesta: any;

   constructor(public navCtrl: NavController,
      public navParams: NavParams,
      public alertCtrl: AlertController,
      public loadingCtrl: LoadingController,
      public formBuilder: FormBuilder,
      public formProv: FormularioProvider,
      public usuarioProv: UsuarioProvider, ) {

      this.usuario = {};
      this.getUsuario();
      this.profesionalForm = formBuilder.group({
         dni: ['', Validators.compose([Validators.minLength(7), Validators.maxLength(12), Validators.pattern(/()\d/g), Validators.required])],
      });

   }

   ionViewDidLoad() {

   }

   public getUsuario() {
      let idUsuario = this.navParams.get('idUsuario');
      this.token = idUsuario;
      if (idUsuario != '') {
         jwt.verify(this.navParams.get('idUsuario'), 'shhola', (err, decoded) => {
            console.log("id jwt decodificado", decoded)
            let details = {
               idUsuario: decoded.idUsuario
            };
            this.usuarioProv.usuarioDame(details).then((respuesta: any) => {
               if (respuesta[0].codigo == 1) {
                  this.usuario = respuesta[0];
                  delete this.usuario.codigo;
               } else {
                  this.usuario.idUsuarioMD5 = '';
               }
               console.log("usuario final", this.usuario)
            });
         });

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
            if (respuesta.codigo == 1) {
               console.log(respuesta.profesional)
               if (this.navParams.get('reintentar') == 'si') {
                  this.navCtrl.setRoot(FormularioWebPage, { profesional: respuesta.profesional, usuario: this.usuario, idUsuario: this.token, reintentar: 'si' });
               } else {
                  this.navCtrl.setRoot(FormularioWebPage, { profesional: respuesta.profesional, usuario: this.usuario, idUsuario: this.token });
               }
            } else {
               this.mostrarAlerta('Error', 'No se pudo encontrar el profesional')
            }
         });
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
