import { Component,HostListener,ViewChild } from '@angular/core';
import { App, NavController, NavParams, IonicPage,AlertController, LoadingController, ModalController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';
import { IonicImageViewerModule } from 'ionic-img-viewer';
import { DatePipe } from '@angular/common';
import { ModalPage } from '../modal/modal';
import { FormularioWebPage } from '../formulario-web/formulario-web';
declare var Mercadopago;

@Component({
  selector: 'page-formulario-web-paso2',
  templateUrl: 'formulario-web-paso2.html',
})
export class FormularioWebPaso2Page {
  loading: any;
  fechaTransaccionMysql: any;
  fechaPago:any;
  formulario:any;
  formulario2:any;
  tarjeta:any;
  tarjetaNombre: any;
  codigoAutoLabel: any;
  submitAttempt: boolean = false;
  respuesta:any;
  imagenEditada = false;
  @ViewChild('myCanvas') canvas: any;
  canvasElement: any;
  ctx:any;
  urlImagenCanvas:any;
  urlImagenCanvasAzul:any;
  imagenEditadaAzul = false;
  mostrarCartelMPError:boolean = false;
  mostrarCartelMysqlError:boolean = false;
  //para editar cuotas modificacion
  sdkResponseHandler: any;
  impTotal: number;
  impCuota: number;
  cuotas: number;
  comision: number;
  tipoTarjeta: any;

  constructor(public navCtrl: NavController,
              public alertCtrl: AlertController,
               private _app: App,
              public loadingCtrl: LoadingController,
              public opProv: OperacionesProvider,
              public formBuilder: FormBuilder,
              public modalCtrl: ModalController,
              public navParams: NavParams) {
    this.formulario = this.navParams.get('formulario');  
    this.tarjetaNombre = this.navParams.get('tarjetaNombre');
    this.sdkResponseHandler = navParams.get('sdkResponse');
    this.cuotas = this.formulario.cuotas.value;
    this.impTotal = this.formulario.importeCarga.value;
    this.impCuota = this.formulario.importeCuota.value;
    console.log(this.formulario);
    if(this.sdkResponseHandler.MPCodigo === 'error'){
      this.mostrarCartelMPError = true;
    }else{
      if(this.sdkResponseHandler.mysql[0].codigo === 0){
        this.mostrarCartelMysqlError = true;
      }
    }    
  }

  ionViewDidEnter() {
      this._app.setTitle("CH Paso 2");
  }
  

  ngAfterViewInit(){
      this.canvasElement = this.canvas.nativeElement;
      this.ctx = this.canvasElement.getContext('2d');
      if(this.mostrarCartelMPError === false){
        console.log("mp sin error, mostrando cupones");
        this.escribrirAzul();
        this.escribirNaranja();
      }
      
  }

  ionViewDidLoad() {
    // creamos una instancia del objeto DatePipe para usar en las fechas luego.
    let datePipe = new DatePipe('es-AR');
    // usamos new Date para crear una nueva fecha del tipo Date de angular, para despues aplicar un pipe...
    this.fechaTransaccionMysql = new Date(this.navParams.get('fechaTransaccion'));
    this.fechaTransaccionMysql = new Date(this.fechaTransaccionMysql.getUTCFullYear(),
                                          this.fechaTransaccionMysql.getUTCMonth(),
                                          this.fechaTransaccionMysql.getUTCDate(),
                                          this.fechaTransaccionMysql.getUTCHours(),
                                          this.fechaTransaccionMysql.getUTCMinutes(),
                                          this.fechaTransaccionMysql.getUTCSeconds());
    this.fechaTransaccionMysql = datePipe.transform(this.fechaTransaccionMysql, 'dd/MM/yyyy H:mm');
    //Hacemos lo mismo para fecha de pago..
    this.fechaPago = new Date(this.navParams.get('fechaPago'));
    this.fechaPago = new Date(this.fechaPago.getUTCFullYear(),
                              this.fechaPago.getUTCMonth(),
                              this.fechaPago.getUTCDate(),
                              this.fechaPago.getUTCHours(),
                              this.fechaPago.getUTCMinutes(),
                              this.fechaPago.getUTCSeconds());
    this.fechaPago = datePipe.transform(this.fechaPago, 'dd/MM/yyyy');
  }



  escribrirAzul(){
    // Creo el objeto de la imagen 
    let imageObj = new Image();
    imageObj.crossOrigin = "Anonymous";
    imageObj.src = "assets/cuponAzul.png";
    
    // Espero que ser cargue para poder obtener sus propiedades
    imageObj.onload = (()=> {
        this.canvasElement.width = imageObj.width;
        this.canvasElement.crossOrigin = "Anonymous";
        this.canvasElement.height = imageObj.height; 
        this.ctx.font = "bold 30pt Arial"; 
        this.ctx.clearRect(0,0,this.canvasElement.width,this.canvasElement.height);
        this.ctx.drawImage(imageObj, 0, 0);
        this.ctx.fillStyle = "blue";
        let details = {
              dniProfesional: this.formulario.dniProfesional.value,
              apellidoProfesional: this.primeraLetraMayuscula(this.formulario.apellidoProfesional.value),
              nombreProfesional: this.primeraLetraMayuscula(this.formulario.nombreProfesional.value),
              apellidoCliente: this.primeraLetraMayuscula(this.formulario.apellidoCliente.value),
              nombreCliente: this.primeraLetraMayuscula(this.formulario.nombreCliente.value),
              telefonoCliente: this.formulario.telefonoCliente.value,
              tarjeta: this.primeraLetraMayuscula(this.tarjetaNombre),
              importeVenta: this.formulario.importeVenta.value,
              importeCobrar: this.formulario.importeCobrar.value,
              importeCarga: this.impTotal,
              importeCuota: this.impCuota,
              numtarjeta: this.formulario.numeroTarjeta.value,
        };
        this.ctx.fillText(details.apellidoProfesional+' '+details.nombreProfesional,150,120);
        this.ctx.fillText(details.dniProfesional,150,230);
        this.ctx.fillText(details.tarjeta,150,330);
        this.ctx.fillText(details.apellidoCliente+' '+details.nombreCliente,150,430);
        this.ctx.fillText(details.numtarjeta,150,530);
        this.ctx.fillText(details.telefonoCliente,150,640);
        this.ctx.fillText(this.fechaTransaccionMysql,850,320);
        this.ctx.fillText(this.fechaPago,850,430);
        this.ctx.fillText(details.importeVenta,850,650);
        this.ctx.fillText(details.importeCobrar,850,780);
        this.urlImagenCanvasAzul = this.canvasElement.toDataURL();
        this.imagenEditadaAzul = true;
    })
  }

  escribirNaranja(){
    // Creo el objeto de la imagen 
    let imageObj = new Image();
    imageObj.crossOrigin = "Anonymous";
    imageObj.src = "assets/cupon.png";
    
    // Espero que ser cargue para poder obtener sus propiedades
    imageObj.onload = (()=> {
        this.canvasElement.width = imageObj.width;
        this.canvasElement.crossOrigin = "Anonymous";
        this.canvasElement.height = imageObj.height; 
        this.ctx.font = "bold 30pt Arial"; 
        this.ctx.clearRect(0,0,this.canvasElement.width,this.canvasElement.height);
        this.ctx.drawImage(imageObj, 0, 0);
        this.ctx.fillStyle = "blue";
        let details = {
              dniProfesional: this.formulario.dniProfesional.value,
              apellidoProfesional: this.primeraLetraMayuscula(this.formulario.apellidoProfesional.value),
              nombreProfesional: this.primeraLetraMayuscula(this.formulario.nombreProfesional.value),
              apellidoCliente: this.primeraLetraMayuscula(this.formulario.apellidoCliente.value),
              nombreCliente: this.primeraLetraMayuscula(this.formulario.nombreCliente.value),
              telefonoCliente: this.formulario.telefonoCliente.value,
              tarjeta: this.primeraLetraMayuscula(this.tarjetaNombre),
              importeVenta: this.formulario.importeVenta.value,
              importeCobrar: this.formulario.importeCobrar.value,
              importeCarga: this.impTotal,
              importeCuota: this.impCuota,
              cantidadCuotas: this.cuotas,
              numtarjeta: this.formulario.numeroTarjeta.value,
              telefonoProfesional: this.formulario.telefonoProfesional.value,
        };
        this.ctx.fillText(details.apellidoProfesional+' '+details.nombreProfesional,150,140);
        this.ctx.fillText(details.telefonoProfesional,150,250);
        this.ctx.fillText(details.tarjeta,150,370);
        this.ctx.fillText(details.apellidoCliente+' '+details.nombreCliente,150,480);
        this.ctx.fillText(details.numtarjeta,150,600);
        this.ctx.fillText(this.fechaTransaccionMysql,850,320);
        this.ctx.fillText(details.cantidadCuotas,850,590);
        this.ctx.fillText(details.importeCuota,850,730);
        this.urlImagenCanvas = this.canvasElement.toDataURL();
        this.imagenEditada = true;
    })
  }

  primeraLetraMayuscula( str )
  {
      let pieces = str.split(" ");
      for ( let i = 0; i < pieces.length; i++ )
      {
          let j = pieces[i].charAt(0).toUpperCase();
          pieces[i] = j + pieces[i].substr(1).toLowerCase();
      }
      return pieces.join(" ");
  }

  showAlert(titulo,mensaje) {
    let alert = this.alertCtrl.create({
      subTitle: titulo,
      message: mensaje,
      buttons: ['Aceptar']
    });
    alert.present();
  }

  showLoader(mensaje){
    this.loading = this.loadingCtrl.create({
      content: mensaje
    });
    this.loading.present();
  }

  mostrarModal(respuesta){
    let modalRes = this.modalCtrl.create(ModalPage, {desde: 'form2', mensaje: respuesta }, {enableBackdropDismiss: false});
    modalRes.present();
  }

  volver(){
    Mercadopago.clearSession();
    this.navCtrl.setRoot(FormularioWebPage);
  }
}