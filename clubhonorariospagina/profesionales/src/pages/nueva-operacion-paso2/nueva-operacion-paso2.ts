import { Component,HostListener,ViewChild } from '@angular/core';
import { App, NavController, NavParams, IonicPage,AlertController, LoadingController, ModalController, ToastController  } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';
import { IonicImageViewerModule } from 'ionic-img-viewer';
import { DatePipe } from '@angular/common';
import { NuevaOperacionModalPage } from '../nueva-operacion-modal/nueva-operacion-modal';

@Component({
  selector: 'page-nueva-operacion-paso2',
  templateUrl: 'nueva-operacion-paso2.html',
})
export class NuevaOperacionPaso2Page {
  //Evita que cierre la pestanña
  // @HostListener('window:beforeunload', ['$event'])
  // doSomething($event) {
  //   if(true) $event.returnValue='Perderas la informacion!';
  // }

  loading: any;
  fechaTransaccionMysql: any;
  fechaPago:any;
  formulario:any;
  tarjeta:any;
  tarjetaNombre: any;
  cupon: any;
  codigoAuto: any;
  submitAttempt: boolean = false;
  respuesta:any;
  imagenEditada = false;
  @ViewChild('myCanvas') canvas: any;
  canvasElement: any;
  ctx:any;
  urlImagenCanvas:any;
  urlImagenCanvasAzul:any;
  imagenEditadaAzul = false;

  //para editar cuotas modificacion
    tarjetasComisiones: any;
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
              public navParams: NavParams,
              public toastCtrl: ToastController) {

      this.formulario = this.navParams.get('formulario');  
      console.log("formulario campos",this.formulario)
      this.tarjetaNombre = this.navParams.get('tarjetaNombre');
      this.tarjetasComisiones = navParams.get('tarjetasComisiones');
      this.tipoTarjeta = navParams.get('tipoTarjeta');
        if(this.tipoTarjeta === 'credito'){
          this.tipoTarjeta = 'C'
        }else{
          this.tipoTarjeta = 'D'
        }
      console.log("tipo tarjeta ya en paso 2: ",this.tipoTarjeta);
      this.cuotas = this.formulario.cuotas.value;
      this.impTotal = this.formulario.importeCarga.value;
      this.impCuota = this.formulario.importeCuota.value;
      
  }

    ionViewDidEnter() {
        this._app.setTitle("CH Paso 2");
    }
  

  ngAfterViewInit(){
      this.canvasElement = this.canvas.nativeElement;
      this.ctx = this.canvasElement.getContext('2d');
      this.escribrirAzul();
      this.escribirNaranja();
  }

  ionViewDidLoad() {
    // creamos una instancia del objeto DatePipe para usar en las fechas luego.
    let datePipe = new DatePipe('en-US');
    // usamos new Date para crear una nueva fecha del tipo Date de angular, para despues aplicar un pipe...
    this.fechaTransaccionMysql = new Date(this.navParams.get('fechaTransaccion'));
    console.log("fecha transaccion desde form 2 en view load", this.fechaTransaccionMysql);
    this.fechaTransaccionMysql = new Date(this.fechaTransaccionMysql.getUTCFullYear(),
                                          this.fechaTransaccionMysql.getUTCMonth(),
                                          this.fechaTransaccionMysql.getUTCDate(),
                                          this.fechaTransaccionMysql.getUTCHours(),
                                          this.fechaTransaccionMysql.getUTCMinutes(),
                                          this.fechaTransaccionMysql.getUTCSeconds());
    this.fechaTransaccionMysql = datePipe.transform(this.fechaTransaccionMysql, 'dd/MM/yyyy H:mm');
    console.log("fecha transaccion desde form 2 en view load despues de PIPE ", this.fechaTransaccionMysql);
    //Hacemos lo mismo para fecha de pago..
    this.fechaPago = new Date(this.navParams.get('fechaPago'));
    this.fechaPago = new Date(this.fechaPago.getUTCFullYear(),
                              this.fechaPago.getUTCMonth(),
                              this.fechaPago.getUTCDate(),
                              this.fechaPago.getUTCHours(),
                              this.fechaPago.getUTCMinutes(),
                              this.fechaPago.getUTCSeconds());
    this.fechaPago = datePipe.transform(this.fechaPago, 'dd/MM/yyyy');
    console.log("formulario desde 1 a 2", this.formulario); 
    this.tarjeta = this.tarjetaNombre;
    console.log(this.fechaTransaccionMysql,this.fechaPago,this.formulario);  
  }

  botonEnviar(){
        this.operacionNueva();
  }

  operacionNueva(){
    
    console.log("en operacionNueva");
     let details = {
              idProfesional: this.navParams.get('idProfesional'),
              idUsuario: this.navParams.get('campos').usuario._id,
              dniProfesional: this.formulario.dniProfesional.value,
              apellidoProfesional:this.formulario.apellidoProfesional.value,
              nombreProfesional:this.formulario.nombreProfesional.value,
              mailProfesional:this.formulario.mailProfesional.value,
              dniCliente: parseInt(this.formulario.dniCliente.value),
              apellidoCliente: this.formulario.apellidoCliente.value,
              nombreCliente: this.formulario.nombreCliente.value,
              telefonoCliente: this.formulario.telefonoCliente.value,
              mailCliente: this.formulario.mailCliente.value,
              tarjeta: this.tarjeta,
              tipoOperacion: this.navParams.get('tipoOperacion'),
              cuotas: this.cuotas,
              importeVenta: parseFloat(this.formulario.importeVenta.value),
              importeCobrar: parseFloat(this.formulario.importeCobrar.value),
              importeCarga: this.impTotal,
              importeCuota: this.impCuota,
              cupon: this.cupon,
              codigoAuto: this.codigoAuto,
              tipoTarjeta: this.tipoTarjeta,
        };
            console.log("mostrando details op nueva",details);
      this.showLoader('Enviando formulario. Espere por favor...');  
      this.opProv.cargarOperacion(details).then((data)=>{
      this.loading.dismiss();
          this.respuesta = data;
          if(this.respuesta.mysql[0].codigo == 0){
            this.showAlert('Error',this.respuesta.mysql[0].mensaje)
          }else{
            this.presentToast(`OPERACION Nº ${this.respuesta.mysql[0].codigo} CREADA CON EXITO`);
          }
          
          console.log("respuesta nodejs",this.respuesta);
          // this.mostrarModal(this.respuesta);
          
          // let mysql = this.respuesta.mysql[0]; //mysql.codigo, fechaTransaccion, fechaPago, mensaje...
          // let mailProf = this.respuesta.mailProfesional; // si hay error.. aparece 'error', sino '250 OK ......'         
          // let idOperacion = mysql.codigo;
          // let mensaje = mysql.respuesta;
          // let fechaTransaccion = mysql.fechaTransaccion
          // let fechaPago = mysql.fechaPago
          // let mailCliente = this.respuesta.mailCliente; // si hay error.. aparece 'error', sino '250 OK ......'
      });

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
              tarjeta:this.tarjeta,
              importeVenta: this.formulario.importeVenta.value,
              importeCobrar: this.formulario.importeCobrar.value,
              importeCarga: this.impTotal,
              importeCuota: this.impCuota,
        };
        this.ctx.fillText(details.apellidoProfesional+' '+details.nombreProfesional,150,120);
        this.ctx.fillText(details.dniProfesional,150,230);
        this.ctx.fillText(details.tarjeta,150,330);
        this.ctx.fillText(details.apellidoCliente+' '+details.nombreCliente,150,430);
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
              tarjeta: this.tarjeta,
              importeVenta: this.formulario.importeVenta.value,
              importeCobrar: this.formulario.importeCobrar.value,
              importeCarga: this.impTotal,
              importeCuota: this.impCuota,
              cantidadCuotas: this.cuotas,
        };
        this.ctx.fillText(details.apellidoProfesional+' '+details.nombreProfesional,150,140);
        this.ctx.fillText(details.tarjeta,150,370);
        this.ctx.fillText(details.apellidoCliente+' '+details.nombreCliente,150,480);
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

  presentToast(mensaje) {
    let toast = this.toastCtrl.create({
      message: mensaje,
      duration: 10000,
      position: 'middle',
      showCloseButton: true,
      closeButtonText: 'ACEPTAR'

    });
    toast.present();
  }

  showLoader(mensaje){
    this.loading = this.loadingCtrl.create({
      content: mensaje
    });
    this.loading.present();
  }

  mostrarModal(respuesta){
    console.log("por ir a modal")
    let modalRes = this.modalCtrl.create(NuevaOperacionModalPage, {desde: 'form2', mensaje: respuesta }, {enableBackdropDismiss: false});
    modalRes.present();
  }

  autoCompletarImportes(){
    console.log(this.cuotas);
     //var x yy son para armar la busqueda.. VER MYSQL tabla Tarjetas - observaciones en idTarjeta.
        let x;
        let yy;
        let xyy;

          this.formulario.importeVenta.value

          let tarjeta = this.formulario.tarjeta.value;
          
          x=tarjeta;
            //armo el YY de mysql con el 0 adelante en caso de cuotas menores a 10
          yy=this.cuotas;
            // Listo, ya tengo el idTarjeta. ahora recorremos todo el array donde estan las comisiones buscando este id
          xyy=x+yy;

          for (let t of this.tarjetasComisiones) {
              if(t.idTarjeta.toString() === xyy){
                console.log("coincidencia en "+t.idTarjeta);
                this.comision = t.tasa;
                console.log(" y la comision es "+this.comision);
              }
          }          
          this.impTotal = Math.round(this.formulario.importeVenta.value*this.comision*100)/100;
          this.impCuota = Math.round((this.impTotal / this.cuotas)*100)/100;
          this.escribirNaranja();
        
    }

}