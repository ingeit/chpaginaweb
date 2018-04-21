import { Component, HostListener, ViewChild } from '@angular/core';
import { App, NavController, NavParams, IonicPage, AlertController, LoadingController, ModalController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';
import { IonicImageViewerModule } from 'ionic-img-viewer';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { DatePipe } from '@angular/common';
import { ModalPage } from '../modal/modal';
import { FormularioWebPage } from '../formulario-web/formulario-web';
import { LoginPage } from '../login/login';
import * as jwt from 'jsonwebtoken';

declare var Mercadopago;

@Component({
   selector: 'page-formulario-web-paso2',
   templateUrl: 'formulario-web-paso2.html',
})
export class FormularioWebPaso2Page {
   private token: any;
   private loading: any;
   private campos: any;
   private respuesta: any;
   private imagenEditada = false;
   private imagenEditadaAzul = false;
   private fechaTransaccion: any;
   private fechaPago: any;
   @ViewChild('myCanvas') canvas: any;
   private canvasElement: any;
   private ctx: any;
   private urlImagenCanvas: any;
   private urlImagenCanvasAzul: any;
   private mostrarCartelMPError: boolean = false;
   private mostrarCartelMPPendiente: boolean = false;
   private mostrarCartelMysqlError: boolean = false;

   constructor(public navCtrl: NavController,
      public alertCtrl: AlertController,
      private _app: App,
      public loadingCtrl: LoadingController,
      public opProv: OperacionesProvider,
      public formBuilder: FormBuilder,
      public modalCtrl: ModalController,
      public iab: InAppBrowser,
      public navParams: NavParams) {

      this.respuesta = navParams.get('respuesta');
      this.campos = this.navParams.get('campos');
      this.campos.usuario = navParams.get('usuario');
      this.token = navParams.get('idUsuario');
      console.log("token",this.token)
      console.log("campos de primera pagina",this.campos)

      console.log(this.respuesta, this.campos);
      if (this.respuesta.mp.codigo == 'error') {
         this.mostrarCartelMPError = true;
      } else {
         if (this.respuesta.mp.codigo == 'enProceso') {
            this.mostrarCartelMPPendiente = true;
         }
         if (this.respuesta.mysql.codigo == 0) {
            this.mostrarCartelMysqlError = true;
         }
      }
   }

   ionViewDidEnter() {
      this._app.setTitle("CH Paso 2");
   }


   ngAfterViewInit() {
      this.canvasElement = this.canvas.nativeElement;
      this.ctx = this.canvasElement.getContext('2d');
      if (this.mostrarCartelMPError === false && this.mostrarCartelMPPendiente === false) {
         console.log("mp sin error, mostrando cupones");
         this.escribrirAzul();
         this.escribirNaranja();
      }

   }

   ionViewDidLoad() {
      // creamos una instancia del objeto DatePipe para usar en las fechas luego.
      let datePipe = new DatePipe('es-AR');
      // usamos new Date para crear una nueva fecha del tipo Date de angular, para despues aplicar un pipe...
      this.fechaTransaccion = new Date(this.campos.fechas.transaccion);
      this.fechaTransaccion = new Date(this.fechaTransaccion.getUTCFullYear(),
         this.fechaTransaccion.getUTCMonth(),
         this.fechaTransaccion.getUTCDate(),
         this.fechaTransaccion.getUTCHours(),
         this.fechaTransaccion.getUTCMinutes(),
         this.fechaTransaccion.getUTCSeconds());
      this.fechaTransaccion = datePipe.transform(this.fechaTransaccion, 'dd/MM/yyyy H:mm');
      //Hacemos lo mismo para fecha de pago..
      this.fechaPago = new Date(this.campos.fechas.pago);
      this.fechaPago = new Date(this.fechaPago.getUTCFullYear(),
         this.fechaPago.getUTCMonth(),
         this.fechaPago.getUTCDate(),
         this.fechaPago.getUTCHours(),
         this.fechaPago.getUTCMinutes(),
         this.fechaPago.getUTCSeconds());
      this.fechaPago = datePipe.transform(this.fechaPago, 'dd/MM/yyyy');
   }



   escribrirAzul() {
      // Creo el objeto de la imagen 
      let imageObj = new Image();
      imageObj.crossOrigin = "Anonymous";
      imageObj.src = "assets/cuponAzul.png";

      // Espero que ser cargue para poder obtener sus propiedades
      imageObj.onload = (() => {
         this.canvasElement.width = imageObj.width;
         this.canvasElement.crossOrigin = "Anonymous";
         this.canvasElement.height = imageObj.height;
         this.ctx.font = "bold 30pt Arial";
         this.ctx.clearRect(0, 0, this.canvasElement.width, this.canvasElement.height);
         this.ctx.drawImage(imageObj, 0, 0);
         this.ctx.fillStyle = "blue";
         this.ctx.fillText(this.primeraLetraMayuscula(this.campos.profesional.apellido) + ' ' + this.primeraLetraMayuscula(this.campos.profesional.nombre), 150, 120);
         this.ctx.fillText(this.campos.profesional.dni, 150, 230);
         this.ctx.fillText(this.campos.tarjeta.nombre, 150, 330);
         this.ctx.fillText(this.campos.tarjeta.nombreImpreso, 150, 430);
         this.ctx.fillText(this.campos.tarjeta.numero, 150, 530);
         this.ctx.fillText(this.campos.cliente.celular, 150, 640);
         this.ctx.fillText(this.fechaTransaccion, 850, 320);
         this.ctx.fillText(this.fechaPago, 850, 430);
         this.ctx.fillText(this.campos.importes.venta, 850, 650);
         this.ctx.fillText(this.campos.importes.cobrar, 850, 780);
         this.urlImagenCanvasAzul = this.canvasElement.toDataURL();
         this.imagenEditadaAzul = true;
      })
   }

   escribirNaranja() {
      // Creo el objeto de la imagen 
      let imageObj = new Image();
      imageObj.crossOrigin = "Anonymous";
      imageObj.src = "assets/cupon.png";

      // Espero que ser cargue para poder obtener sus propiedades
      imageObj.onload = (() => {
         this.canvasElement.width = imageObj.width;
         this.canvasElement.crossOrigin = "Anonymous";
         this.canvasElement.height = imageObj.height;
         this.ctx.font = "bold 30pt Arial";
         this.ctx.clearRect(0, 0, this.canvasElement.width, this.canvasElement.height);
         this.ctx.drawImage(imageObj, 0, 0);
         this.ctx.fillStyle = "blue";
         this.ctx.fillText(this.primeraLetraMayuscula(this.campos.profesional.apellido) + ' ' + this.primeraLetraMayuscula(this.campos.profesional.nombre), 150, 140);
         this.ctx.fillText(this.campos.profesional.telefono, 150, 250);
         this.ctx.fillText(this.campos.tarjeta.nombre, 150, 370);
         this.ctx.fillText(this.campos.tarjeta.nombreImpreso, 150, 480);
         this.ctx.fillText(this.campos.tarjeta.numero, 150, 600);
         this.ctx.fillText(this.fechaTransaccion, 850, 320);
         this.ctx.fillText(this.campos.importes.cantCuotas, 850, 590);
         this.ctx.fillText(this.campos.importes.cuota, 850, 730);
         this.urlImagenCanvas = this.canvasElement.toDataURL();
         this.imagenEditada = true;
      })
   }

   primeraLetraMayuscula(str) {
      let pieces = str.split(" ");
      for (let i = 0; i < pieces.length; i++) {
         let j = pieces[i].charAt(0).toUpperCase();
         pieces[i] = j + pieces[i].substr(1).toLowerCase();
      }
      return pieces.join(" ");
   }

   showAlert(titulo, mensaje) {
      let alert = this.alertCtrl.create({
         subTitle: titulo,
         message: mensaje,
         buttons: ['Aceptar']
      });
      alert.present();
   }

   showLoader(mensaje) {
      this.loading = this.loadingCtrl.create({
         content: mensaje
      });
      this.loading.present();
   }

   volver() {
      Mercadopago.clearSession();
      this.navCtrl.setRoot('login', { 'idUsuario': ''});
   }

   aceptarOperacion(){
      // let url = 'http://clubhonorarios.com/adminop';
      let url = 'http://localhost:81/adminop';
      const browser = this.iab.create(url);
   }

   otroMetodo() {
      let value = jwt.sign({
         campos: this.campos
      }, 'shhola', { expiresIn: 5 * 60 });

      // let url = 'https://clubhonorarios.com/mpop/#/'+value;
      let url = 'http://localhost:81/adminop/#/op/' + value;
      const browser = this.iab.create(url);
   }

   reintentar(){
      let value = this.token;
      this.navCtrl.setRoot('login', { 'idUsuario': value , 'reintentar': 'si'});
   }

}