import { Component, ViewChild } from '@angular/core';
import { App, IonicPage, NavController, LoadingController, AlertController, NavParams, ModalController, Content } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MenuController } from 'ionic-angular';
import { DatePipe } from '@angular/common';
import { FormularioProvider } from '../../providers/formulario/formulario';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { FormularioWebPaso2Page } from '../formulario-web-paso2/formulario-web-paso2';
import { ModalPage } from '../modal/modal';
import * as configServer from './../../server'
import { OperacionesProvider } from '../../providers/operaciones/operaciones';
import { CardIO } from '@ionic-native/card-io';

declare var Mercadopago;

@Component({
   selector: 'page-formulario-web',
   templateUrl: 'formulario-web.html',
})
export class FormularioWebPage {

   private profesional: any;
   private pasos: String;
   private fechas: any;
   private tarjetas: any;
   private tarjetaNombre: string;
   private tarjetaId: any;
   private cantCoutas: number;
   private importeCobrar: number;
   private importeCarga: number;
   private importeCuota: number;
   private formulario: FormGroup;
   private submitAttempt: boolean = false;
   private loading: any;
   private respuesta: any;
   private comision: number;
   private tarjetasComisiones: any;
   private listadoBancos = [];
   private listaCuotas: any = null;
   private bin: any = null;
   private mostrarCuotaBanco: boolean = false;
   private issuer_id: any = null;
   private urlBannerTarjeta: any;
   @ViewChild(Content) content: Content;
   @ViewChild('paymentMethodId') paymentMeth: any;
   private paymentMethodId: any;
   private respuestaDeTarjeta: any;

   listaSimulaciones = [
     {cod: 'APRO', desc:' Aprobado'},
     {cod: 'CONT', desc:' Pago Pendiente'},
     {cod: 'CALL', desc:' Llamar para autorizar'},
     {cod: 'FUND', desc:' Monto insuficiente'},
     {cod: 'SECU', desc:' Rechazado por Codigo de seguridad'},
     {cod: 'EXPI', desc:' Rechazado por fecha de expiracion'},
     {cod: 'FORM', desc:' Rechazado por error en el formulario'},
     {cod: 'OTHE', desc:' Rechazo general'},
   ]

   constructor(public navCtrl: NavController,
      public navParams: NavParams,
      public alertCtrl: AlertController,
      private _app: App,
      private menu: MenuController,
      public loadingCtrl: LoadingController,
      public formBuilder: FormBuilder,
      public modalCtrl: ModalController,
      public iab: InAppBrowser,
      private cardIO: CardIO,
      public formularioProvider: FormularioProvider,
      public operacionesProv: OperacionesProvider
   ) {

      // Mercadopago.setPublishableKey("APP_USR-8c8b7f60-3b84-4c5a-a99c-d2e3b90b9a8a");
      // Mercadopago.setPublishableKey("TEST-5c52ff27-a015-43cd-ab9f-f38a97e2d283");
      // Mercadopago.getIdentificationTypes(); 

      // clave ricky sandbox
      Mercadopago.setPublishableKey("TEST-8fccfbca-7104-4f69-8493-4d0204458f30"); 

      this.pasos = "1";
      this.profesional = navParams.get('profesional');
      console.log(this.profesional)
      this.dameFechas();
      this.dameTarjetas();
      // this.dameFechasyComisiones();

      this.formulario = formBuilder.group({
         numeroTarjeta: ['', Validators.compose([Validators.maxLength(17), Validators.minLength(6), Validators.pattern(/()\d/g), Validators.required])],
         cardExpirationMonth: ['', Validators.compose([Validators.maxLength(2), Validators.minLength(1), Validators.pattern(/()\d/g), Validators.required])],
         cardExpirationYear: ['', Validators.compose([Validators.maxLength(4), Validators.minLength(4), Validators.pattern(/()\d/g), Validators.required])],
         cardholderName: ['', Validators.compose([Validators.required])],
         codSeguridad: ['', Validators.compose([Validators.maxLength(4), Validators.minLength(3), Validators.pattern(/()\d/g), Validators.required])],
         bancos: [''],
         dniCliente: ['', Validators.compose([Validators.maxLength(12), Validators.minLength(7), Validators.pattern(/()\d/g), Validators.required])],
         apellidoCliente: ['', Validators.compose([Validators.maxLength(45), Validators.minLength(1), Validators.pattern(/()\w/g), Validators.required])],
         nombreCliente: ['', Validators.compose([Validators.maxLength(45), Validators.minLength(1), Validators.pattern(/()\w/g), Validators.required])],
         telefonoCliente: [''],
         mailCliente: [''],
         importeVenta: ['', Validators.compose([Validators.maxLength(30), Validators.minLength(1), Validators.required])],
      });
   }

   ionViewDidEnter() {
      this._app.setTitle("CH Operaciones");
   }

   ionViewDidLoad() {
   }

   dameFechas() {
      this.formularioProvider.dameFechas().then((result) => {
         this.fechas = result[0];
         // .fechaTransaccion
         // .fechaPago
         console.log(this.fechas)
         if (this.fechas.codigo !== 1) this.mostrarAlerta('Error', 'Hora del servidor inaccesible');
      }).catch((err) => {
         this.mostrarAlerta('Error', 'Hora del servidor inaccesible');
      });
   }

   dameTarjetas() {
      this.formularioProvider.dameTarjetas().then((result) => {
         this.tarjetas = result;
         console.log(this.tarjetas)
         if (this.tarjetas[0].codigo === 1) {
            this.armarArrayTarjetas(this.tarjetas);
            console.log(this.tarjetas);
         } else {
            this.tarjetas = 0;
            this.mostrarAlerta('Error', 'Problemas al mostrar tarjetas');

         }
      }).catch((err) => {
         this.tarjetas = 0;
         this.mostrarAlerta('Error', 'Problemas al mostrar tarjetas');
      });
   }

   armarArrayTarjetas(array) {
      this.tarjetas = [];
      for (let i = 0; i < array.length; i++) {
         if (!this.tarjetas[array[i].idTarjeta]) {
            this.tarjetas[array[i].idTarjeta] = {
               idTarjeta: array[i].idTarjeta,
               nombre: array[i].nombre,
               nombreCorto: array[i].nombreCorto,
               cuotaComision: [{
                  cantidadCuota: array[i].cantidadCuota,
                  comision: array[i].comision
               }]
            }
         } else {
            this.tarjetas[array[i].idTarjeta].cuotaComision.push({ cantidadCuota: array[i].cantidadCuota, comision: array[i].comision });
         }
      }
      //eliminamos los indices que no tienen tarjeta, por ejemplo, [0] no contiene nada
      for (let i = 0; i < this.tarjetas.length; i++) {
         if (this.tarjetas[i] === undefined) {
            this.tarjetas.splice(i, 1);
            i--; // hacemos esto, porque si hay 2 undefined consecutivos, el segundo undefined ocupa el lugar del primero (i-1), y el for ya no lo recorre para borrarlo
         }
      }
   }

   pagar() {
      console.log("Pagando...");
      if (!this.formulario.valid) {
         console.log("formulario invalido");
         this.submitAttempt = true;
         this.mostrarAlerta('Error', 'Por favor Complete todos los campos')
      } else {
         console.log("form valido");
         this.confirmar();
      }

   }

   autoCompletarImportes() {
      // antes de autocompletar, controlo que haya un importe venta, para no rellenar con ceros.
      console.log(this.cantCoutas)
      if (this.formulario.get('importeVenta').value && this.cantCoutas) {
         let importeVenta: number;
         importeVenta = this.formulario.get('importeVenta').value;
         this.importeCobrar = Math.round(importeVenta * 0.95 * 100) / 100;

         let i = this.tarjetas.findIndex(t => t.nombreCorto == "VISA");
         let j = this.tarjetas[i].cuotaComision.findIndex(c => c.cantidadCuota == this.cantCoutas);
         this.comision = this.tarjetas[i].cuotaComision[j].comision;

         this.importeCarga = Math.round(importeVenta * this.comision * 100) / 100;
         this.importeCuota = Math.round((this.importeCarga / this.cantCoutas) * 100) / 100;
         console.log(this.importeCuota);
      }
   }

   showLoader(mensaje) {
      this.loading = this.loadingCtrl.create({
         content: mensaje
      });
      this.loading.present();
   }

   mostrarAlerta(titulo, mensaje) {
      let alert = this.alertCtrl.create({
         title: titulo,
         subTitle: mensaje,
         buttons: ['Aceptar']
      });
      alert.present();
   }


   generarDebug() {
      this.confirmar();
   }

   devolverNombreDeTarjeta(numTarjeta) {
      this.bin = numTarjeta.value.replace(/[ .-]/g, '').slice(0, 6);
      if (this.bin.length >= 6) {
         Mercadopago.getPaymentMethod({
            "bin": this.bin
         }, (status, response) => {
            if (status == 200) {
               console.log('respuesta bancos', response[0])
               var form = document.querySelector('#pay');
               if (document.querySelector("input[name=paymentMethodId]") == null) {
                  var paymentMethod = document.createElement('input');
                  paymentMethod.setAttribute('name', "paymentMethodId");
                  paymentMethod.setAttribute('type', "hidden");
                  paymentMethod.setAttribute('value', response[0].id);
                  form.appendChild(paymentMethod);
                  this.tarjetaId = response[0].id;
                  this.tarjetaNombre = response[0].name.toUpperCase();
                  this.urlBannerTarjeta = response[0].secure_thumbnail;
                  console.log('valor del campo escondido', this.tarjetaNombre)
               } else {
                  this.tarjetaId = response[0].id;
                  this.tarjetaNombre = response[0].name.toUpperCase();
                  this.urlBannerTarjeta = response[0].secure_thumbnail;
                  console.log('se actualizo el valor del campo escondido', this.tarjetaNombre);
                  (<HTMLInputElement>document.querySelector("input[name=paymentMethodId]")).value = response[0].id;
               }
               console.log("la tarjeta es : ", response[0].id);
               this.obtenerBancos(response[0].id);
            } else {
               console.log('error al consultar customer', status, response)
               this.mostrarAlerta('Error Nº' + status, 'Tarjeta no Valida');
            }
         });
      }
   }

   obtenerBancos(id) {
      Mercadopago.getIssuers(id, (status, response) => {
         if (status != 200 && status != 201) {
            this.mostrarAlerta('Error Nº ' + response.cause[0].code, 'No se puede comunicar con MercadoPago');
         } else {
            this.listadoBancos = response;
            console.log('listas de bancos', this.listadoBancos)
         }
      });
   }

   obtenerCuotasMP(banco) {
      this.issuer_id = banco;
      console.log('se esta mostrado el banco', this.issuer_id);
      this.showLoader('Consultando Cuotas..');
      Mercadopago.getInstallments({
         "bin": this.bin,
         "amount": this.importeCarga,
         "issuer_id": banco
      }, (status, response) => {
         this.loading.dismiss();
         if (status != 200 && status != 201) {
            this.mostrarAlerta('Error Nº ' + response.cause[0].code, 'No se puede comunicar con MercadoPago');
         } else {
            let correcto = 0;
            this.listaCuotas = response[0];
            this.listaCuotas = this.listaCuotas.payer_costs;
            let auxCuotas = [];
            for (let lc of this.listaCuotas) {
               if (lc.installments !== 1 && lc.installments <= 12) {
                  auxCuotas.push(lc);
                  console.log("cuotas banco ", lc.installments);
               }
               this.cantCoutas;
               if (lc.installments == this.cantCoutas) {
                  correcto = 1;
                  console.log("correcto las cuotas!")
                  console.log("cuota elegida: ", this.cantCoutas)
                  console.log("cuota del banco: ", lc.installments)
               }
            }
            if (correcto !== 1) {
               this.mostrarCuotaBanco = true;
               this.mostrarAlerta("REINGRESE CUOTAS", "El banco no dispone de la cantidad de cuotas elegidas. Por favor seleccione otra cantidad de cuotas")
            }
            this.listaCuotas = auxCuotas;
         }

      });
   }

   confirmar() {
      var $form = document.querySelector('#pay');
      console.log($form);
      this.showLoader('Realizando operación. Espere por favor...');
      Mercadopago.createToken($form, (status, sdkResponseHandler) => {
         console.log(status)
         console.log(sdkResponseHandler)
         if (status != 200 && status != 201) {
            this.loading.dismiss();
            try {
               this.mostrarAlerta('Error Nº' + sdkResponseHandler.cause[0].code, 'No se puede comunicar con MercadoPago');
            } catch (error) {
               this.mostrarAlerta('Error', 'No se puede comunicar con MercadoPago');
            }

         } else {
            let details = {
               idProfesional: this.profesional.idProfesional,
               nombreProfesional: this.profesional.nombre,
               apellidoProfesional: this.profesional.apellido,
               mailProfesional: this.profesional.mail,
               dniCliente: parseInt(this.formulario.get('dniCliente').value),
               apellidoCliente: this.formulario.get('apellidoCliente').value,
               nombreCliente: this.formulario.get('nombreCliente').value,
               telefonoCliente: this.formulario.get('telefonoCliente').value,
               mailCliente: this.formulario.get('mailCliente').value,
               tarjetaNombre: this.tarjetaNombre,
               payment_method_id: this.tarjetaId,
               issuer_id: this.issuer_id,
               cuotas: this.cantCoutas,
               importeVenta: parseFloat(this.formulario.get('importeVenta').value),
               importeCobrar: this.importeCobrar,
               importeCarga: this.importeCarga,
               importeCuota: this.importeCuota,
               sdkResponse: sdkResponseHandler
            };
            console.log('respuesta del sdk', details);
            this.operacionesProv.operacionNueva(details).then((data) => {
               this.loading.dismiss();
               this.respuesta = data;
               this.navCtrl.setRoot(FormularioWebPaso2Page, {
                  formulario: this.formulario.controls,
                  tarjetaNombre: this.tarjetaNombre,
                  sdkResponse: this.respuesta
               });
            });
         }
      });
   }

   otroPaso(paso) {
      console.log(paso)
      this.pasos = paso;
   }

   scanearTarjeta() {
      this.cardIO.canScan()
         .then(
         (res: boolean) => {
            if (res) {
               let options = {
                  requireExpiry: true,
                  requireCVV: false,
                  requirePostalCode: false,
                  hideCardIOLogo: true,
               };
               this.cardIO.scan(options).then((respuesta) => {
                  this.respuestaDeTarjeta = JSON.stringify(respuesta);
               });
            }
         }
         );
   }

   simular(opcion) {
      this.formulario.controls['cardholderName'].setValue(opcion);
   }

}




