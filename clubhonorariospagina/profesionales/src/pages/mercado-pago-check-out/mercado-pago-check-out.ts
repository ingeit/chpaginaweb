import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, LoadingController, MenuController, ToastController, AlertController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';

@Component({
  selector: 'page-mercado-pago-check-out',
  templateUrl: 'mercado-pago-check-out.html',
})
export class MercadoPagoCheckOutPage {

  private campos: any = {};
	private tarjetas: any;
	private tarjetasSelect: any;
	private desde: any;
	formulario: FormGroup;
	submitAttempt: boolean = false;
	loading: any;
	respuesta: any;
	fechaTransaccionMysql: any;
	fechaPagoMysql: any;
	importeVenta: number;
	importeCobrar: number;
	importeCarga: number;
	importeCuota: number;
	tarjeta: any;
	arrayCuotas: any;
	cuotas: number;
	comision: number;
	tarjetasComisiones: any;
	tarjetaNombre: any = false;
	dniProfesionalForm: any;
	lapos: any;
	tipoTarjeta: string = null;

  constructor(public navCtrl: NavController,
    public navParams: NavParams,
    public iab: InAppBrowser,
    public operacionesProv: OperacionesProvider,
    public formBuilder: FormBuilder,
    public alertCtrl: AlertController,
		private toastCtrl: ToastController,
		private menu: MenuController,
		public loadingCtrl: LoadingController,
		public opProv: OperacionesProvider,
  ) {
    this.formulario = formBuilder.group({
      dniProfesional: ['', Validators.compose([Validators.maxLength(12), Validators.minLength(7), Validators.pattern(/()\d/g), Validators.required])],
      apellidoProfesional: [''],
      nombreProfesional: [''],
      mailProfesional: [''],
      precioVenta: ['', Validators.compose([Validators.maxLength(12), Validators.minLength(1), Validators.pattern(/()\d/g), Validators.required])],
    });

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad MercadoPagoCheckOutPage');
  }

  consultarProfesional() {
		if (this.dniProfesionalForm) {
			let details = {
				dni: parseInt(this.dniProfesionalForm),
			};
			console.log('dni en form: ', details);
			this.showLoader('Consultando Profesional');
			this.opProv.dameProfesional(details).then((result) => {
				console.log('entrando al provider');
				this.respuesta = result[0];
        this.loading.dismiss();
        console.log("antes del iF",this.respuesta)
				if (this.respuesta.codigo === 1) {
          this.campos.apellido = this.respuesta.apellido;
					this.campos.nombre = this.respuesta.nombre;
					this.campos.mail = this.respuesta.mail;
          this.campos.id = this.respuesta.idProfesional
					this.formulario.controls['dniProfesional'].setValue(this.dniProfesionalForm);
					this.formulario.controls['apellidoProfesional'].setValue( this.campos.apellido);
					this.formulario.controls['nombreProfesional'].setValue( this.campos.nombre);
					this.formulario.controls['mailProfesional'].setValue( this.campos.mail);
					console.log("campos", this.campos);
				} else {
					this.mostrarAlerta('ERROR', this.respuesta.mensaje + ". Por favor comunicarse via telefonica a nuestras oficinas");
				}
			}, (err) => {
				this.loading.dismiss();
				this.mostrarAlerta('ERROR', this.respuesta.mensaje);
			});
		} else {
			this.mostrarAlerta('ERROR', this.respuesta.mensaje);
		}
	}

  generarPreferencia() {
    this.campos.precioVenta = parseInt(this.formulario.get('precioVenta').value);
    this.operacionesProv.generarPreferencia(this.campos).then((respuesta: any) => {
      console.log(respuesta);
      this.iab.create(respuesta.sandbox_init_point);
    }, err => {
      console.log(err)
    });
  }
  
  showLoader(mensaje) {
		this.loading = this.loadingCtrl.create({
			content: mensaje
		});
		this.loading.present();
  }
  
  mostrarAlerta(titulo, mensaje) {
		let alert = this.alertCtrl.create({
			title: titulo,
			subTitle: mensaje,
			buttons: ['Aceptar']
		});
		alert.present();
	}


}
