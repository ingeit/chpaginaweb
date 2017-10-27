import { Component, ViewChild } from '@angular/core';
import { App , IonicPage,NavController,LoadingController,AlertController, NavParams, ModalController, Content } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MenuController } from 'ionic-angular';
import { FormularioProvider } from '../../providers/formulario/formulario';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { FormularioWebPaso2Page } from '../formulario-web-paso2/formulario-web-paso2';
import { ModalPage } from '../modal/modal';
import * as configServer from './../../server'

@Component({
  selector: 'page-formulario-web',
  templateUrl: 'formulario-web.html',
})
export class FormularioWebPage {
  formulario: FormGroup;
  submitAttempt: boolean = false;
  loading:any;
  respuesta:any;
  fechaTransaccionMysql: any;
  fechaPagoMysql: any;
  importeVenta: number;
  importeCobrar: number;
  importeCarga: number;
  importeCuota: number;
  tarjeta: any;
  cuotas: number;
  comision: number;
  tarjetasComisiones: any;
  tarjetaNombre: any = false;
  dniProfesionalForm: any;
  lapos: any;
  tipoTarjeta: string=null;
  @ViewChild(Content) content: Content;

  constructor(public navCtrl: NavController,
              public alertCtrl: AlertController,
              private _app: App,
              private menu: MenuController,
              public loadingCtrl: LoadingController,
              public formBuilder: FormBuilder,
              public modalCtrl: ModalController,
              public iab: InAppBrowser,
              public formularioProvider:FormularioProvider
          ) {
      this.dameFechasyComisiones();

      this.formulario = formBuilder.group({
        dniProfesional: ['',Validators.compose([Validators.maxLength(12),Validators.minLength(7),Validators.pattern(/()\d/g),Validators.required])],
        apellidoProfesional: [''],
        nombreProfesional: [''],
        mailProfesional: [''],
        dniCliente: ['',Validators.compose([Validators.maxLength(12),Validators.minLength(7),Validators.pattern(/()\d/g),Validators.required])],
        apellidoCliente: ['',Validators.compose([Validators.maxLength(15),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        nombreCliente: ['',Validators.compose([Validators.maxLength(15),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        telefonoCliente: [''],
        mailCliente: [''],
        tarjeta: ['',Validators.compose([Validators.required])],
        cuotas: [''],
        importeVenta: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(1), Validators.required])],
        importeCobrar: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.required])],
        importeCarga: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(1), Validators.required])],
        importeCuota: [''],
      });
      
  }

  ionViewDidEnter() {
        this._app.setTitle("CH Operaciones");
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

  generar(){
    console.log("dentro de genererar");
    if(!this.formulario.valid || this.lapos === undefined){
      console.log("formulario invalido");
        this.submitAttempt = true;
    }else{
      console.log("form valido");
        this.confirmar();
    }
    
  }

      autoCompletarImportes(){
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

  confirmar() {
    //confirmar mediante modal
    //Si ya tiene lapos, no muestro modal ni abro el link a visa y solo voy al paso 2
    if(this.tipoTarjeta === 'credito'){
            this.cuotas=this.formulario.get('cuotas').value;
          }else{
            this.cuotas=1;
          }
    console.log("desde confirmar se trae el formulario: ",this.formulario.controls);
    if(this.lapos === 'si'){
      console.log("tiene lapos")
      this.navCtrl.setRoot(FormularioWebPaso2Page,{fechaTransaccion: this.fechaTransaccionMysql,
        fechaPago: this.fechaPagoMysql,
        formulario: this.formulario.controls,
        tarjetaNombre: this.tarjetaNombre,
        tarjetasComisiones: this.tarjetasComisiones,
        tipoTarjeta : this.tipoTarjeta
      });
    }else{
      console.log("no tiene lapos, yendo a modal y visa");
      let confirmarModal = this.modalCtrl.create(ModalPage, {desde: 'form1', fechaTransaccion: this.fechaTransaccionMysql,
                                                              fechaPago: this.fechaPagoMysql,
                                                              formulario: this.formulario.controls,
                                                              tarjetaNombre: this.tarjetaNombre,
                                                              tarjetasComisiones: this.tarjetasComisiones,
                                                              tipoTarjeta : this.tipoTarjeta });
      confirmarModal.present();
    }
    
  }

  generarDebug(){
        this.confirmar();  
  }

  consultarProfesional(){
    if(this.dniProfesionalForm){
      let details = {
        dni: parseInt(this.dniProfesionalForm),
      };
      console.log('dni en form: ',details);
      this.showLoader('Consultando Profesional');
      this.formularioProvider.dameProfesional(details).then((result) => {
        console.log('entrando al provider');
          this.respuesta = result[0];
          this.loading.dismiss();
          if(this.respuesta.codigo === 1){
            let apellidoProfesional = this.respuesta.apellido;
            let nombreProfesional = this.respuesta.nombre;
            let mailProfesional = this.respuesta.mail;
            this.formulario.controls['dniProfesional'].setValue(this.dniProfesionalForm);
            this.formulario.controls['apellidoProfesional'].setValue(apellidoProfesional);
            this.formulario.controls['nombreProfesional'].setValue(nombreProfesional);
            this.formulario.controls['mailProfesional'].setValue(mailProfesional);
          }else{
            this.mostrarAlerta('ERROR',this.respuesta.mensaje+". Por favor comunicarse via telefonica a nuestras oficinas");
          }
        }, (err) => {
          this.loading.dismiss();
          this.mostrarAlerta('ERROR',this.respuesta.mensaje);
        });
    }else{
      this.mostrarAlerta('ERROR',this.respuesta.mensaje);
    }
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

      public move(bicho){
        let yOffset = document.getElementById(bicho).offsetTop;
        this.content.scrollTo(0, yOffset, 1000);
    }
}
