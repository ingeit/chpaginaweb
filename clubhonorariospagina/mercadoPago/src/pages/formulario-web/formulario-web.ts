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
import ModeloFormulario from './modelo-formulario';
import ClienteModelo from '../../modelos/cliente';
import ProfesionalModelo from '../../modelos/profesional';

declare var Mercadopago;

@Component({
   selector: 'page-formulario-web',
   templateUrl: 'formulario-web.html',
})
export class FormularioWebPage {

   private campos: ModeloFormulario;
   private pasos: String;
   private tarjetas: any;
   private tarjetaId: any;
   private formulario: FormGroup;
   private submitAttempt: boolean = false;
   private loading: any;
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
      { cod: 'APRO', desc: ' Aprobado' },
      { cod: 'CONT', desc: ' Pago Pendiente' },
      { cod: 'CALL', desc: ' Llamar para autorizar' },
      { cod: 'FUND', desc: ' Monto insuficiente' },
      { cod: 'SECU', desc: ' Rechazado por Codigo de seguridad' },
      { cod: 'EXPI', desc: ' Rechazado por fecha de expiracion' },
      { cod: 'FORM', desc: ' Rechazado por error en el formulario' },
      { cod: 'OTHE', desc: ' Rechazo general' },
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
      this.campos = new ModeloFormulario();
      this.campos.profesional = navParams.get('profesional');
      this.campos.idUsuario = navParams.get('idUsuario');
      console.log(this.campos);
      this.dameFechas();
      this.dameTarjetas();

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
      console.log(this.formulario)
   }

   dameFechas() {
      this.formularioProvider.dameFechas().then((result: any) => {
         if (result[0].codigo !== 1) {
            this.mostrarAlerta('Error', 'Hora del servidor inaccesible');
         } else {
            this.campos.fechas.pago = result[0].fechaPago;
            this.campos.fechas.transaccion = result[0].fechaTransaccion;
         }
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
      if (this.formulario.get('importeVenta').value && this.campos.importes.cantCuotas) {
         console.log("entrado a autocompletarimportes")
         this.campos.importes.venta = this.formulario.get('importeVenta').value;
         this.campos.importes.cobrar = Math.round(this.campos.importes.venta * 0.95 * 100) / 100;

         let i = this.tarjetas.findIndex(t => t.nombreCorto == "VISA");
         let j = this.tarjetas[i].cuotaComision.findIndex(c => c.cantidadCuota == this.campos.importes.cantCuotas);
         this.comision = this.tarjetas[i].cuotaComision[j].comision;

         this.campos.importes.carga = Math.round(this.campos.importes.venta * this.comision * 100) / 100;
         this.campos.importes.cuota = Math.round((this.campos.importes.carga / this.campos.importes.cantCuotas) * 100) / 100;
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
                  this.campos.tarjeta.nombre = response[0].name.toUpperCase();
                  this.urlBannerTarjeta = response[0].secure_thumbnail;
               } else {
                  this.tarjetaId = response[0].id;
                  this.campos.tarjeta.nombre = response[0].name.toUpperCase();
                  this.urlBannerTarjeta = response[0].secure_thumbnail;
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
         "amount": this.campos.importes.carga,
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
               this.campos.importes.cantCuotas;
               if (lc.installments == this.campos.importes.cantCuotas) {
                  correcto = 1;
                  console.log("correcto las cuotas!")
                  console.log("cuota elegida: ", this.campos.importes.cantCuotas)
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
      this.showLoader('Realizando operación. Espere por favor...');
      Mercadopago.createToken($form, (status, sdkResponseHandler) => {
         if (status != 200 && status != 201) {
            this.loading.dismiss();
            try {
               this.mostrarAlerta('Error Nº' + sdkResponseHandler.cause[0].code, 'No se puede comunicar con MercadoPago');
            } catch (error) {
               this.mostrarAlerta('Error', 'No se puede comunicar con MercadoPago');
            }
         } else {
            // termino de completar los campos para enviar
            let cliente = new ClienteModelo(this.formulario.get('dniCliente').value, this.formulario.get('nombreCliente').value, this.formulario.get('apellidoCliente').value, this.formulario.get('mailCliente').value, this.formulario.get('telefonoCliente').value);
            this.campos.cliente = cliente;
            
            // informacion para MP
            this.campos.payment_method_id = this.tarjetaId;
            this.campos.issuer_id = this.issuer_id;
            this.campos.sdkResponse.id = sdkResponseHandler.id;

            this.operacionesProv.operacionNueva(this.campos).then((data: any) => {
                  // ACA ME FIJO SI SE HIZO TODO BIEN; O TENGO QUE IR A /OP

               this.loading.dismiss();
               this.campos.sdkResponse = data;
               this.campos.tarjeta.numero = this.formulario.get('numeroTarjeta').value;
               this.campos.tarjeta.nombreImpreso = this.formulario.get('cardholderName').value;
               // this.navCtrl.setRoot(FormularioWebPaso2Page, { campos: this.campos });
            });
         }
      });
   }

   otroPaso(paso) {
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




