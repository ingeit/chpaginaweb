import { Component, ViewChild } from '@angular/core';
import { App , IonicPage,NavController,LoadingController,AlertController, NavParams, ModalController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { DatePipe } from '@angular/common';
import { MenuController } from 'ionic-angular';
import { FormularioProvider } from '../../providers/formulario/formulario';
import * as configServer from './../../server'

@Component({
  selector: 'page-formulario-web',
  templateUrl: 'formulario-web.html',
})
export class FormularioWebPage {
  formulario: FormGroup;
  loading:any;
  respuesta:any;
  fechaTransaccionMysql: any;
  fechaPagoMysql: any;
  fechaTransaccion: any;
  fechaPago: any;
  importeVenta: number=0;
  importeCobrar: number=0;
  importeCarga: number=0;
  importeCuota: number=0;
  tarjeta: any;
  cuotas: number=0;
  comision: number;
  tarjetasComisiones: any;
  tarjetaNombre: string = "";
  @ViewChild('myCanvas') canvas: any;
  imagenEditada = false;
  canvasElement: any;
  ctx:any;
  urlImagenCanvas:any;
  urlImagenCanvasAzul:any;
  imagenEditadaAzul = false;
  tipoTarjeta: string=null;

  constructor(public navCtrl: NavController,
              public alertCtrl: AlertController,
              private _app: App,
              private menu: MenuController,
              public loadingCtrl: LoadingController,
              public formBuilder: FormBuilder,
              public formularioProvider:FormularioProvider
          ) {
      this.dameFechasyComisiones();
      this.fechaTransaccion="-";
      this.fechaPago="-";

      this.formulario = formBuilder.group({
        tarjeta: ['',Validators.compose([Validators.required])],
        cuotas: ['',Validators.compose([Validators.maxLength(2),Validators.minLength(1), Validators.required])],
        importeVenta: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(1), Validators.required])],
        importeCobrar: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.required])],
        importeCarga: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(1), Validators.required])],
        importeCuota: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(1), Validators.required])],
      });
  }

  ionViewDidEnter() {
        this._app.setTitle("CH Calculadora");
    }

    ngAfterViewInit(){
      this.canvasElement = this.canvas.nativeElement;
      this.ctx = this.canvasElement.getContext('2d');
      this.escribrirAzul();
      this.escribirNaranja();
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad FormularioWebPage');
  }

  dameFechasyComisiones(){
    // 2 promises añidadas para traer la hora y el array con las tarjetas y comisiones.      
this.showLoader('Consultando Hora en servidor');
this.formularioProvider.dameFechas().then((result) => {
    this.respuesta = result[0];
    if(this.respuesta.codigo === 1){
      console.log("fecha transaccion desde formulario 1 provider", this.respuesta.fechaTransaccion);
      this.fechaTransaccionMysql = this.respuesta.fechaTransaccion;
      this.fechaPagoMysql = this.respuesta.fechaPago;
      this.transformarFechas();
        // CONSULTA ANIDADA para comisiones
        this.formularioProvider.dameComisiones().then((result) => {
            console.log("consulta comisiones");
            this.respuesta = result;
            if(this.respuesta[0].codigo === 1){
              this.tarjetasComisiones = this.respuesta;
              console.log(this.tarjetasComisiones);
            }else{
              console.log("error en traer comisiones");
              this.tarjetasComisiones = 0;
              this.mostrarAlerta('Error','Problemas con el servidor... Comunicarse via telefono');
            }
          }, (err) => {
            console.log("error promises en comisiones");
            this.tarjetasComisiones = 0;
              // this.loading.dismiss();
              // this.mostrarAlerta('Error','Hay un error en el usuario o contraseña');
          });
          //CONSUILTA ANIDADA FIN
      this.loading.dismiss();
    }
  }, (err) => {
    console.log("error promises en hora del servidor");
    this.loading.dismiss();
    this.mostrarAlerta('Error','Hora del servidor inaccesible');
      // this.loading.dismiss();
      // this.mostrarAlerta('Error','Hay un error en el usuario o contraseña');
  });
}

  nuevoCalculo(){
    this.navCtrl.setRoot(FormularioWebPage);
  }

      autoCompletarImportes(){
        this.escribrirAzul();
        this.escribirNaranja();
        //var x yy son para armar la busqueda.. VER MYSQL tabla Tarjetas - observaciones en idTarjeta.
        let x;
        let yy;
        let xyy;
        // antes de autocompletar, controlo que haya un importe venta, para no rellenar con ceros.
        if(this.formulario.get('importeVenta').value){

          // obtener importe venta del input
          this.importeVenta = this.formulario.get('importeVenta').value;
          // seteo importe a cobrar del 95%  del valor de importe venta traido del input.
          this.importeCobrar = Math.round(this.importeVenta*0.95*100)/100;
          this.formulario.controls['importeCobrar'].setValue(this.importeCobrar);
          // calculo el importe total segun tarjeta y cuotas, simulo valor, falta traer los datos de mysql.
          this.tarjeta=this.formulario.get('tarjeta').value;
          if(this.tipoTarjeta === 'credito'){
            this.cuotas=this.formulario.get('cuotas').value;
          }else{
            this.cuotas=0;
          }
          

          //paso de numero a nombre de tarjeta para el label de IMPORTE TOTAL.
              switch (this.tarjeta)
              {
                case '1':
                  this.tarjetaNombre = 'AMERICAN'
                  break;
                case '2':
                  this.tarjetaNombre = 'MASTER'
                  break;
                case '3':
                  this.tarjetaNombre = 'VISA'
                  break;
                default:
                  break;
              }
          
          x=this.tarjeta;
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
          // Los calculos son con los numeros redondeados simplemente al siguiente segundo decimal. EJ
          // Ej: 10.225 = 10.23
          //     10.223 = 10.22 
          console.log("importe carga original "+ this.importeVenta*this.comision);    
          if(this.tipoTarjeta === 'credito'){
            this.importeCarga = Math.round(this.importeVenta*this.comision*100)/100;
          }else{
            this.importeCarga=this.importeVenta;
          }
          
          console.log("importe carga redondeado "+ this.importeCarga);
          
          this.formulario.controls['importeCarga'].setValue(this.importeCarga);
          if(this.tipoTarjeta === 'credito'){
            this.importeCuota = Math.round((this.importeCarga / this.cuotas)*100)/100;
          }else{
            this.importeCuota=0;
          }

          this.formulario.controls['importeCuota'].setValue(this.importeCuota);
        }
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
            this.ctx.font = "bold 15pt Arial"; 
            this.ctx.clearRect(0,0,this.canvasElement.width,this.canvasElement.height);
            this.ctx.drawImage(imageObj, 0, 0);
            this.ctx.fillStyle = "blue";
            let details = {
                  tarjeta: this.primeraLetraMayuscula(this.tarjetaNombre),
                  importeVenta: this.importeVenta,
                  importeCobrar: this.importeCobrar,
                  importeCarga: this.importeCarga,
                  importeCuota: this.importeCuota,
            };
            this.ctx.fillText(details.tarjeta,67,148);
            this.ctx.fillText(details.importeVenta,0.45*850,0.45*650);
            this.ctx.fillText(details.importeCobrar,0.45*850,0.45*780);
            this.ctx.fillText(this.fechaTransaccion,0.45*850,0.45*320);
            this.ctx.fillText(this.fechaPago,0.45*850,0.45*430);
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
            this.ctx.font = "bold 15pt Arial"; 
            this.ctx.clearRect(0,0,this.canvasElement.width,this.canvasElement.height);
            this.ctx.drawImage(imageObj, 0, 0);
            this.ctx.fillStyle = "blue";
            let details = {
                  tarjeta: this.primeraLetraMayuscula(this.tarjetaNombre),
                  importeVenta: this.importeVenta,
                  importeCobrar: this.importeCobrar,
                  importeCarga: this.importeCarga,
                  importeCuota: this.importeCuota,
                  cantidadCuotas: this.cuotas,
            };
            this.ctx.fillText(details.tarjeta,0.45*150,0.45*370);
            this.ctx.fillText(details.cantidadCuotas,0.45*850,0.45*590);
            this.ctx.fillText(details.importeCuota,0.45*850,0.45*730);
            this.ctx.fillText(this.fechaTransaccion,0.45*850,0.45*320);
            this.urlImagenCanvas = this.canvasElement.toDataURL();
            this.imagenEditada = true;
        })
      }

      primeraLetraMayuscula( str ){
          let pieces = str.split(" ");
          for ( let i = 0; i < pieces.length; i++ )
          {
              let j = pieces[i].charAt(0).toUpperCase();
              pieces[i] = j + pieces[i].substr(1).toLowerCase();
          }
          return pieces.join(" ");
      }

      radioTipoTarjeta(){
        console.log(this.tipoTarjeta);
        if(this.tipoTarjeta === 'debito'){
          this.cuotas=0;
          this.importeCuota=0;
          this.importeCarga=this.importeVenta;
        }
      }

      transformarFechas(){
         // creamos una instancia del objeto DatePipe para usar en las fechas luego.
    let datePipe = new DatePipe('es-AR');
    // usamos new Date para crear una nueva fecha del tipo Date de angular, para despues aplicar un pipe...
    this.fechaTransaccion = new Date(this.fechaTransaccionMysql);
    this.fechaTransaccion= new Date(this.fechaTransaccion.getUTCFullYear(),
                                          this.fechaTransaccion.getUTCMonth(),
                                          this.fechaTransaccion.getUTCDate(),
                                          this.fechaTransaccion.getUTCHours(),
                                          this.fechaTransaccion.getUTCMinutes(),
                                          this.fechaTransaccion.getUTCSeconds());
    this.fechaTransaccion = datePipe.transform(this.fechaTransaccion, 'dd/MM/yyyy H:m');
    //Hacemos lo mismo para fecha de pago..
    this.fechaPago = new Date(this.fechaPagoMysql);
    this.fechaPago = new Date(this.fechaPago.getUTCFullYear(),
                              this.fechaPago.getUTCMonth(),
                              this.fechaPago.getUTCDate(),
                              this.fechaPago.getUTCHours(),
                              this.fechaPago.getUTCMinutes(),
                              this.fechaPago.getUTCSeconds());
    this.fechaPago = datePipe.transform(this.fechaPago, 'dd/MM/yyyy');
      }

    showLoader(mensaje){
      this.loading = this.loadingCtrl.create({
        content: mensaje
      });
      this.loading.present();
    }

    mostrarAlerta(titulo,mensaje) {
      let alert = this.alertCtrl.create({
      title: titulo,
      subTitle: mensaje,
      buttons: ['Aceptar']
      });
      alert.present();
  }

}
