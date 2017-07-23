import { Component,HostListener,ViewChild } from '@angular/core';
import { NavController, NavParams, IonicPage,AlertController, LoadingController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';
import { IonicImageViewerModule } from 'ionic-img-viewer';
import { DatePipe } from '@angular/common';

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

  fechaTransaccionMysql: any;
  fechaPago:any;
  formulario:any;
  formulario2:any;
  tarjeta:any;
  codigoAutoLabel: any;
  submitAttempt: boolean = false;
  mensaje:any;
  imagenEditada = false;
  @ViewChild('myCanvas') canvas: any;
  canvasElement: any;
  ctx:any;
  urlImagenCanvas:any;

  constructor(public navCtrl: NavController,
              public alertCtrl: AlertController,
              public loadingCtrl: LoadingController,
              public opProv: OperacionesProvider,
              public formBuilder: FormBuilder,
              public navParams: NavParams) {
                

      this.formulario2 = formBuilder.group({
        codigoAuto: ['',Validators.compose([Validators.maxLength(6),Validators.minLength(6),Validators.pattern(/()\d/g),Validators.required])],
        cupon: ['',Validators.compose([Validators.maxLength(4),Validators.minLength(4),Validators.pattern(/()\d/g),Validators.required])]
      });
  }
  

  ngAfterViewInit(){
      this.canvasElement = this.canvas.nativeElement;
      this.ctx = this.canvasElement.getContext('2d');
      this.escribrir();
  }

  ionViewDidLoad() {
    this.fechaTransaccionMysql = this.navParams.get('fechaTransaccion');
    let datePipe = new DatePipe('es-AR');
    this.fechaTransaccionMysql = datePipe.transform(this.fechaTransaccionMysql, 'dd/MM/yyyy H:m');
    console.log(this.fechaTransaccionMysql);
    this.fechaPago = this.navParams.get('fechaPago');
    this.fechaPago = datePipe.transform(this.fechaPago, 'dd/MM/yyyy');
    this.formulario = this.navParams.get('formulario');  
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
              dniProfesional: this.formulario.dniProfesional.value,
              apellidoProfesional: this.formulario.apellidoProfesional.value,
              nombreProfesional: this.formulario.nombreProfesional.value,
              mailProfesional: this.formulario.mailProfesional.value,
              dniCliente: this.formulario.dniCliente.value,
              apellidoCliente: this.formulario.apellidoCliente.value,
              nombreCliente: this.formulario.nombreCliente.value,
              telefonoCliente: this.formulario.telefonoCliente.value,
              mailCliente: this.formulario.mailCliente.value,
              tarjeta: this.tarjeta,
              cuotas: this.formulario.cuotas.value,
              importeVenta: this.formulario.importeVenta.value,
              importeCobrar: this.formulario.importeCobrar.value,
              importeCarga: this.formulario.importeCarga.value,
              importeCuota: this.formulario.importeCuota.value,
              codigoAuto: this.formulario2.get('codigoAuto').value,
              cupon: this.formulario2.get('cupon').value

        };
            console.log(details);

      this.opProv.operacionNueva(details).then((data)=>{
        this.mensaje = data;
        console.log(this.mensaje);
        if(this.mensaje[0].codigo != 0){
          let fechaTransaccion = "Fecha de transaccion: <br>"+this.mensaje[0].fechaTransaccion.toLocaleString();
          let fechaPago = "Fecha de pago: <br>"+this.mensaje[0].fechaPago.toLocaleString();
          let t = this.mensaje[0].mensaje;
          let m = fechaTransaccion+"<br>"+fechaPago;
          this.showAlert(t,m);
        }else{
          let t = this.mensaje[0].mensaje;
          let m = "Por favor intente nuevamente, sin cargar la operacion en visa";
          this.showAlert(t,m);
        }
      });

  }

  escribrir(){
    // Creo el objeto de la imagen 
    let imageObj = new Image();
    imageObj.src = "../../assets/cupon.png";
    // Espero que ser cargue para poder obtener sus propiedades
    imageObj.onload = (()=> {
        this.canvasElement.width = imageObj.width;
        this.canvasElement.crossOrigin = "Anonymous";
        this.canvasElement.height = imageObj.height; 
        this.ctx.font = "48pt BeautifulCreatures"; 
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
              importeVenta: this.formulario.importeVenta.value,
              importeCobrar: this.formulario.importeCobrar.value,
              importeCarga: this.formulario.importeCarga.value,
              importeCuota: this.formulario.importeCuota.value,
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
}
