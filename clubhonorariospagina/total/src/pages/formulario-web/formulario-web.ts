import { Component, ViewChild } from '@angular/core';
import { App , IonicPage,NavController,LoadingController,AlertController, NavParams, ModalController, Content } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { DatePipe } from '@angular/common';
import { MenuController } from 'ionic-angular';
import * as configServer from './../../server'

@Component({
  selector: 'page-formulario-web',
  templateUrl: 'formulario-web.html',
})
export class FormularioWebPage {
  formulario: FormGroup;
  loading:any;
  respuesta:any;
  importeVenta: number=0;
  importeCobrar: number=0;
  importeCarga: number=0;
  importeCuota: number=0;
  tarjeta: any;
  cuotas: number=0;
  comision: number;
  tarjetasComisiones: any;
  tarjetaNombre: string = "";
  @ViewChild(Content) content: Content;
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
          ) {
      this.tarjetasComisiones = [{"idTarjeta":102,"nombre":"AMEX","cuotas":2,"tasa":1.19175257254135},
                                  {"idTarjeta":103,"nombre":"AMEX","cuotas":3,"tasa":1.21751984398118},
                                  {"idTarjeta":104,"nombre":"AMEX","cuotas":4,"tasa":1.24379394175117},
                                  {"idTarjeta":105,"nombre":"AMEX","cuotas":5,"tasa":1.27058456187318},
                                  {"idTarjeta":106,"nombre":"AMEX","cuotas":6,"tasa":1.29790162833062},
                                  {"idTarjeta":107,"nombre":"AMEX","cuotas":7,"tasa":1.35071373052656},
                                  {"idTarjeta":108,"nombre":"AMEX","cuotas":8,"tasa":1.3829510352282},
                                  {"idTarjeta":109,"nombre":"AMEX","cuotas":9,"tasa":1.4158948382851},
                                  {"idTarjeta":110,"nombre":"AMEX","cuotas":10,"tasa":1.44956066927639},
                                  {"idTarjeta":111,"nombre":"AMEX","cuotas":11,"tasa":1.48396449387489},
                                  {"idTarjeta":112,"nombre":"AMEX","cuotas":12,"tasa":1.51912273159945},
                                  {"idTarjeta":202,"nombre":"MASTER","cuotas":2,"tasa":1.19516878661232},
                                  {"idTarjeta":203,"nombre":"MASTER","cuotas":3,"tasa":1.22043435802868},
                                  {"idTarjeta":204,"nombre":"MASTER","cuotas":4,"tasa":1.24618622965634},
                                  {"idTarjeta":205,"nombre":"MASTER","cuotas":5,"tasa":1.27243351829195},
                                  {"idTarjeta":206,"nombre":"MASTER","cuotas":6,"tasa":1.29918555090403},
                                  {"idTarjeta":207,"nombre":"MASTER","cuotas":7,"tasa":1.34181504452872},
                                  {"idTarjeta":208,"nombre":"MASTER","cuotas":8,"tasa":1.3719021577579},
                                  {"idTarjeta":209,"nombre":"MASTER","cuotas":9,"tasa":1.40260879250556},
                                  {"idTarjeta":210,"nombre":"MASTER","cuotas":10,"tasa":1.43394772584297},
                                  {"idTarjeta":211,"nombre":"MASTER","cuotas":11,"tasa":1.46593207047838},
                                  {"idTarjeta":212,"nombre":"MASTER","cuotas":12,"tasa":1.49936782871},
                                  {"idTarjeta":302,"nombre":"VISA","cuotas":2,"tasa":1.19516878661232},
                                  {"idTarjeta":303,"nombre":"VISA","cuotas":3,"tasa":1.22043435802868},
                                  {"idTarjeta":304,"nombre":"VISA","cuotas":4,"tasa":1.24618622965634},
                                  {"idTarjeta":305,"nombre":"VISA","cuotas":5,"tasa":1.27243351829195},
                                  {"idTarjeta":306,"nombre":"VISA","cuotas":6,"tasa":1.29918555090403},
                                  {"idTarjeta":307,"nombre":"VISA","cuotas":7,"tasa":1.34696679453166},
                                  {"idTarjeta":308,"nombre":"VISA","cuotas":8,"tasa":1.37782938064888},
                                  {"idTarjeta":309,"nombre":"VISA","cuotas":9,"tasa":1.40934159330108},
                                  {"idTarjeta":310,"nombre":"VISA","cuotas":10,"tasa":1.44151714525045},
                                  {"idTarjeta":311,"nombre":"VISA","cuotas":11,"tasa":1.47437011846107},
                                  {"idTarjeta":312,"nombre":"VISA","cuotas":12,"tasa":1.5079149784994}]

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
                  this.tarjetaNombre = 'AMEX'
                  break;
                case '2':
                  this.tarjetaNombre = 'MASTERCARD / MAESTRO'
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
        this.autoCompletarImportes();
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

  public move(bicho){
        let yOffset = document.getElementById(bicho).offsetTop;
        this.content.scrollTo(0, yOffset, 1000);
    }

}
