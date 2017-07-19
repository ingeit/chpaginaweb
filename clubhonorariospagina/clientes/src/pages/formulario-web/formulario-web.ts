import { Component } from '@angular/core';
import { NavController,LoadingController,AlertController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MenuController } from 'ionic-angular';
import { FormularioProvider } from '../../providers/formulario/formulario';

/**
 * Generated class for the FormularioWebPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */

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
  

  constructor(public navCtrl: NavController,
              public alertCtrl: AlertController,
              private menu: MenuController,
              public loadingCtrl: LoadingController,
              public formBuilder: FormBuilder,
              public formularioProvider:FormularioProvider
          ) {
      this.showLoader('Consultando Hora en servidor');
      this.formularioProvider.dameFechas().then((result) => {
          this.respuesta = result[0];
          if(this.respuesta.codigo === 1){
            console.log(this.respuesta.fechaTransaccion);
            this.fechaTransaccionMysql = this.respuesta.fechaTransaccion;
            this.fechaPagoMysql = this.respuesta.fechaPago;
            this.loading.dismiss();
          }
        }, (err) => {
          console.log("todomal");
          this.loading.dismiss();
          this.mostrarAlerta('Error','Hora del servidor inaccesible');
            // this.loading.dismiss();
            // this.mostrarAlerta('Error','Hay un error en el usuario o contraseña');
        });  
      this.formulario = formBuilder.group({
        dniProfesional: ['',Validators.compose([
          Validators.maxLength(11),
          Validators.minLength(8),
          Validators.pattern(/()\d/g),
          Validators.required])],
        apellidoProfesional: ['',Validators.compose([
          Validators.maxLength(15),
          Validators.minLength(1),
          Validators.pattern(/()\w/g),
          Validators.required])],
        nombreProfesional: ['',Validators.compose([
          Validators.maxLength(15),
          Validators.minLength(1),
          Validators.pattern(/()\w/g),
          Validators.required])],
        mailProfesional: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5),
          Validators.email, 
          Validators.required])],
        dniCliente: ['',Validators.compose([
          Validators.maxLength(11),
          Validators.minLength(8),
          Validators.pattern(/()\d/g),
          Validators.required])],
        apellidoCliente: ['',Validators.compose([
           Validators.maxLength(15),
          Validators.minLength(1),
          Validators.pattern(/()\w/g),
          Validators.required])],
        nombreCliente: ['',Validators.compose([
           Validators.maxLength(15),
          Validators.minLength(1),
          Validators.pattern(/()\w/g),
          Validators.required])],
        telefonoCliente: ['',Validators.compose([
          Validators.maxLength(15),
          Validators.minLength(5),
          Validators.pattern(/()\d/g),
          Validators.required])],
        mailCliente: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5),
          Validators.email, 
          Validators.required])],
        tarjeta: ['',Validators.compose([
          Validators.required])],
        cuotas: ['',Validators.compose([
          Validators.maxLength(1),
          Validators.minLength(2), 
          Validators.required])],
        importeVenta: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(1), 
          Validators.required])],
        importeCobrar: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(1),
          Validators.required])],
        importeCarga: ['',Validators.compose([
           Validators.maxLength(30),
          Validators.minLength(1), 
          Validators.required])],
        importeCuota: ['',Validators.compose([
           Validators.maxLength(30),
          Validators.minLength(1), 
          Validators.required])],
      });
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad FormularioWebPage');
  }

  generar(){
    console.log(this.formulario.value.tarjeta);
    if(!this.formulario.valid){
        this.submitAttempt = true; 
      }   
  }

      autoCompletarImportes(){
        // antes de autocompletar, controlo que haya un importe venta, para no rellenar con ceros.
        if(this.formulario.get('importeVenta').value){

          // obtener importe venta del input
          this.importeVenta = this.formulario.get('importeVenta').value;
          // seteo importe a cobrar del 95%  del valor de importe venta traido del input.
          this.importeCobrar = this.importeVenta*0.95;
          this.formulario.controls['importeCobrar'].setValue(this.importeCobrar);

          // calculo el importe total segun tarjeta y cuotas, simulo valor, falta traer los datos de mysql.
          this.tarjeta=this.formulario.get('tarjeta').value;
          this.cuotas=this.formulario.get('cuotas').value;
          console.log(this.tarjeta);
          console.log(this.cuotas);
          if(this.tarjeta === 'VISA'){
            this.comision = 2; // seria el 100%, para hacerlo visible rapido.
          }else if (this.tarjeta === 'MASTER'){
            this.comision = 3; 
          }else if(this.tarjeta === 'AMEX'){
            this.comision = 4; 
          }
            this.importeCarga=this.importeVenta*this.comision;
            this.formulario.controls['importeCarga'].setValue(this.importeCarga);

            this.importeCuota = this.importeCarga / this.cuotas;
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
}
