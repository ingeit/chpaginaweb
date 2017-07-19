import { Component } from '@angular/core';
import { IonicPage,NavController,LoadingController,AlertController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MenuController } from 'ionic-angular';
import { FormularioProvider } from '../../providers/formulario/formulario';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { FormularioWebPaso2Page } from '../formulario-web-paso2/formulario-web-paso2';

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
  

  constructor(public navCtrl: NavController,
              public alertCtrl: AlertController,
              private menu: MenuController,
              public loadingCtrl: LoadingController,
              public formBuilder: FormBuilder,
              public iab: InAppBrowser,
              public formularioProvider:FormularioProvider
          ) {

      this.dameFechasyComisiones();

      this.formulario = formBuilder.group({
        dniProfesional: ['',Validators.compose([Validators.maxLength(11),Validators.minLength(8),Validators.pattern(/()\d/g),Validators.required])],
        apellidoProfesional: ['',Validators.compose([Validators.maxLength(15),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        nombreProfesional: ['',Validators.compose([Validators.maxLength(15),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        mailProfesional: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(5),Validators.email, Validators.required])],
        dniCliente: ['',Validators.compose([Validators.maxLength(11),Validators.minLength(8),Validators.pattern(/()\d/g),Validators.required])],
        apellidoCliente: ['',Validators.compose([Validators.maxLength(15),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        nombreCliente: ['',Validators.compose([Validators.maxLength(15),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        telefonoCliente: ['',Validators.compose([Validators.maxLength(15),Validators.minLength(5),Validators.pattern(/()\d/g),Validators.required])],
        mailCliente: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(5),Validators.email, Validators.required])],
        tarjeta: ['',Validators.compose([Validators.required])],
        cuotas: ['',Validators.compose([Validators.maxLength(2),Validators.minLength(1), Validators.required])],
        importeVenta: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(1), Validators.required])],
        importeCobrar: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.required])],
        importeCarga: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(1), Validators.required])],
        importeCuota: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(1), Validators.required])],
      });
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad FormularioWebPage');
  }

  dameFechasyComisiones(){
          // 2 promises añidadas para traer la hora y el array con las tarjetas y comisiones.      
      this.showLoader('Consultando Hora en servidor');
      this.formularioProvider.dameFechas().then((result) => {
          console.log("consulta anidada 1 ");
          this.respuesta = result[0];
          if(this.respuesta.codigo === 1){
            console.log(this.respuesta.fechaTransaccion);
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

    if(!this.formulario.valid){
        this.submitAttempt = true;
    }else{
        
    }
    // importante.. ESTE CONFIRMAR VA DENTRO DEL ELSE para que no permita campos vacios.
    this.confirmar();
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
          this.cuotas=this.formulario.get('cuotas').value;
          
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
          this.importeCarga = Math.round(this.importeVenta*this.comision*100)/100;
          console.log("importe carga redondeado "+ this.importeCarga);
          
          this.formulario.controls['importeCarga'].setValue(this.importeCarga);

          this.importeCuota = Math.round((this.importeCarga / this.cuotas)*100)/100;
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
    let confirm = this.alertCtrl.create({
      title: 'IMPORTANTE',
      message: 'Paso 2: A continuacion se abrira una nueva pestaña con redireccion a la pagina de la tarjeta seleccionada.'+ 
                'Al finalizar la operacion en dicha pagina, debera copiar el codigo de autorizacion y numero de cupon '+
                'facilitados en la operacion realizada. A continuacion, seleccione en la parte superior del navegador '+
                'la pestaña del formulario de Club Honorarios, y debera pegar dichos codigos de la operacion en los campos '+
                'correspondientes de manera inmediata y hacer clic en el boton "Enviar"',


      buttons: [
        {
          text: 'Cancelar',
          handler: () => {
            console.log('Disagree clicked');
          }
        },
        {
          text: 'Aceptar',
          handler: () => {
            this.irPaso2();
          }
        }
      ]
    });
    confirm.present();
  }

  irPaso2(){
    this.navCtrl.push(FormularioWebPaso2Page,{fechaTransaccion: this.fechaTransaccionMysql,
                                fechaPago: this.fechaPagoMysql,
                                formulario: this.formulario.controls
    });
    // Visa y Amex
    if(this.tarjeta === "1" || this.tarjeta === "3"){
      console.log(this.tarjeta);
      const browser = this.iab.create('https://vnet.visa.com.ar/cspv/adm/GetLogin.event');
    }else{
      //Master
    const browser = this.iab.create('https://www1.posnet.com.ar/webposnet');
    }

  }

}
