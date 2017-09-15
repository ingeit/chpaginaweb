import { Component,HostListener,ViewChild } from '@angular/core';
import { App, NavController, NavParams, IonicPage,AlertController, LoadingController, ModalController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';
import { IonicImageViewerModule } from 'ionic-img-viewer';
import { DatePipe } from '@angular/common';
import { ModalPage } from '../modal/modal';

@Component({
  selector: 'page-formulario-web-paso2',
  templateUrl: 'formulario-web-paso2.html',
})
export class FormularioWebPaso2Page {
  //Evita que cierre la pestanña
  // @HostListener('window:beforeunload', ['$event'])
  // doSomething($event) {
  //   if(true) $event.returnValue='Perderas la informacion!';
  // }

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

  //para editar cuotas modificacion
    tarjetasComisiones: any;
    impTotal: number;
    impCuota: number;
    cuotas: number;
    comision: number;

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
      this.tarjetasComisiones = navParams.get('tarjetasComisiones');
      this.cuotas = this.formulario.cuotas.value;
      this.impTotal = this.formulario.importeCarga.value;
      this.impCuota = this.formulario.importeCuota.value;

      if(this.tarjetaNombre === 'MASTER'){
          this.formulario2 = formBuilder.group({
                  codigoAuto: ['',Validators.compose([Validators.minLength(2),Validators.maxLength(6),Validators.pattern(/()\d/g),Validators.required])],
                });
      }else{
          this.formulario2 = formBuilder.group({
                  codigoAuto: ['',Validators.compose([Validators.minLength(2),Validators.maxLength(6),Validators.pattern(/()\d/g),Validators.required])],
                  cupon: ['',Validators.compose([Validators.pattern(/()\d/g),Validators.required])]
                });
      }
      
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
    let datePipe = new DatePipe('es-AR');
    // usamos new Date para crear una nueva fecha del tipo Date de angular, para despues aplicar un pipe...
    this.fechaTransaccionMysql = new Date(this.navParams.get('fechaTransaccion'));
    console.log("fecha transaccion desde form 2 en view load", this.fechaTransaccionMysql);
    this.fechaTransaccionMysql = new Date(this.fechaTransaccionMysql.getUTCFullYear(),
                                          this.fechaTransaccionMysql.getUTCMonth(),
                                          this.fechaTransaccionMysql.getUTCDate(),
                                          this.fechaTransaccionMysql.getUTCHours(),
                                          this.fechaTransaccionMysql.getUTCMinutes(),
                                          this.fechaTransaccionMysql.getUTCSeconds());
    this.fechaTransaccionMysql = datePipe.transform(this.fechaTransaccionMysql, 'dd/MM/yyyy H:m');
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
    switch (this.formulario.tarjeta.value)
      {
        case '1':
          this.tarjeta = 'AMEX';
          this.codigoAutoLabel = 'AUTORIZ(ON-LINE)'
          break;
        case '2':
          this.tarjeta = 'MASTER';
          this.codigoAutoLabel = 'AUTORIZ(ON-LINE)'
          break;
        case '3':
          this.tarjeta = 'VISA';
          this.codigoAutoLabel = 'AUT'
          break;
        default:
          this.tarjeta = '';
          this.codigoAutoLabel = 'Cod Auto'
          break;
      }
    console.log(this.fechaTransaccionMysql,this.fechaPago,this.formulario);  
  }

  botonEnviar(){
    if(!this.formulario2.valid){
        this.submitAttempt = true;
    }else{
        this.operacionNueva();
    }
  }

  operacionNueva(){
    
    console.log("en operacionNueva");
     let details = {
              dniProfesional: parseInt(this.formulario.dniProfesional.value),
              apellidoProfesional: this.formulario.apellidoProfesional.value,
              nombreProfesional: this.formulario.nombreProfesional.value,
              mailProfesional: this.formulario.mailProfesional.value,
              dniCliente: parseInt(this.formulario.dniCliente.value),
              apellidoCliente: this.formulario.apellidoCliente.value,
              nombreCliente: this.formulario.nombreCliente.value,
              telefonoCliente: this.formulario.telefonoCliente.value,
              mailCliente: this.formulario.mailCliente.value,
              tarjeta: this.tarjeta,
              cuotas: this.cuotas,
              importeVenta: parseFloat(this.formulario.importeComision.value),
              importeCobrar: parseFloat(this.formulario.importeCobrar.value),
              importeCarga: this.impTotal,
              importeCuota: this.impCuota,
              codigoAuto: parseInt(this.formulario2.get('codigoAuto').value),
        };
        if(this.tarjetaNombre !== 'MASTER'){
          details['cupon'] = parseInt(this.formulario2.get('cupon').value);
        }else{
          details['cupon'] = 0;
        }
            console.log(details);
      this.showLoader('Enviando formulario. Espere por favor...');  
      this.opProv.operacionNueva(details).then((data)=>{
      this.loading.dismiss();
          this.respuesta = data;
          this.mostrarModal(this.respuesta);
          
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
        this.ctx.font = "bold 48pt BeautifulCreatures"; 
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
              tarjeta: this.primeraLetraMayuscula(this.tarjeta),
              importeVenta: this.formulario.importeComision.value,
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
        this.ctx.font = "bold 48pt BeautifulCreatures"; 
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
              tarjeta: this.primeraLetraMayuscula(this.tarjeta),
              importeVenta: this.formulario.importeComision.value,
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
          this.impTotal = Math.round(this.formulario.importeComision.value*this.comision*100)/100;
          this.impCuota = Math.round((this.impTotal / this.cuotas)*100)/100;
          this.escribirNaranja();
        
    }

}