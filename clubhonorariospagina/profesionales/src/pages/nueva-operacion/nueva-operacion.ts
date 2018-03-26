import { Component, ViewChild } from '@angular/core';
import { App, IonicPage, NavController, LoadingController, AlertController, NavParams, ModalController, Content, ToastController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MenuController } from 'ionic-angular';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';
import { InAppBrowser } from '@ionic-native/in-app-browser';
// import { FormularioWebPaso2Page } from '../formulario-web-paso2/formulario-web-paso2';
// import { ModalPage } from '../modal/modal';
import ModeloFormulario from '../../modelos/modelo-formulario';
import * as token from './../../server';
import * as jwt from 'jsonwebtoken';
import { DashboardPage } from '../dashboard/dashboard';

/**
 * Generated class for the NuevaOperacionPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage({
	name: 'NuevaOperacion',
	segment: 'op/:campos'
})
@Component({
	selector: 'page-nueva-operacion',
	templateUrl: 'nueva-operacion.html',
})

export class NuevaOperacionPage {
	private campos: any;
	private tarjetas: any;
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
	cuotas: number;
	comision: number;
	tarjetasComisiones: any;
	tarjetaNombre: any = false;
	dniProfesionalForm: any;
	lapos: any;
	tipoTarjeta: string = null;
	@ViewChild(Content) content: Content;

	constructor(public navCtrl: NavController,
		public alertCtrl: AlertController,
		private toastCtrl: ToastController,
		private _app: App,
		public navParams: NavParams,
		private menu: MenuController,
		public loadingCtrl: LoadingController,
		public formBuilder: FormBuilder,
		public modalCtrl: ModalController,
		public iab: InAppBrowser,
		public opProv: OperacionesProvider) {

		this.campos = {};
		this.dameFechas();
		this.dameTarjetas();

		this.formulario = formBuilder.group({
			dniProfesional: ['', Validators.compose([Validators.maxLength(12), Validators.minLength(7), Validators.pattern(/()\d/g), Validators.required])],
			apellidoProfesional: [''],
			nombreProfesional: [''],
			mailProfesional: [''],
			dniCliente: ['', Validators.compose([Validators.maxLength(12), Validators.minLength(7), Validators.pattern(/()\d/g), Validators.required])],
			apellidoCliente: ['', Validators.compose([Validators.maxLength(45), Validators.minLength(1), Validators.pattern(/()\w/g), Validators.required])],
			nombreCliente: ['', Validators.compose([Validators.maxLength(45), Validators.minLength(1), Validators.pattern(/()\w/g), Validators.required])],
			telefonoCliente: [''],
			mailCliente: [''],
			tarjeta: ['', Validators.compose([Validators.required])],
			cuotas: [''],
			importeVenta: ['', Validators.compose([Validators.maxLength(30), Validators.minLength(1), Validators.required])],
			importeCobrar: ['', Validators.compose([Validators.maxLength(30), Validators.minLength(1), Validators.required])],
			importeCarga: ['', Validators.compose([Validators.maxLength(30), Validators.minLength(1), Validators.required])],
			importeCuota: [''],
			tipoTarjeta: [''],
			profesionProfesional: [''],
			especialidadProfesional: [''],
			telefonoProfesional: [''],
		});

		if (this.navParams.get('campos') == '') {
			this.desde = 'adminOp'
		} else {
			this.desde = 'mpop';
			jwt.verify(this.navParams.get('campos'), 'shhola', (err, decoded) => {
				if (err) {
					this.presentToast("ERROR, Sesion Expirada");
					this.navCtrl.setRoot(DashboardPage);
					console.log("error jwt", err);
				} else {
					console.log("decodificado", decoded)
					this.campos = decoded.campos;
					this.cargarValores();
				}
			});
		}
		console.log("desde:", this.desde)
		console.log("hola campos", this.campos)


	}

	ionViewDidEnter() {
		this._app.setTitle("CH Operaciones");
	}

	ionViewDidLoad() {
		console.log('ionViewDidLoad FormularioWebPage');
	}

	dameFechas() {
		this.opProv.dameFechas().then((result: any) => {
			if (result[0].codigo !== 1) {
				this.mostrarAlerta('Error', 'Hora del servidor inaccesible');
			} else {
				this.campos.fechas = {
					pago: result[0].fechaPago,
					transaccion: result[0].fechaTransaccion
				}
			}
		}).catch((err) => {
			this.mostrarAlerta('Error', 'Hora del servidor inaccesible');
		});
	}

	dameTarjetas() {
		this.opProv.dameTarjetas().then((result) => {
			this.tarjetas = result;
			console.log(this.tarjetas)
			if (this.tarjetas[0].codigo === 1) {
				this.armarArrayTarjetas(this.tarjetas);
				console.log(this.tarjetas);
			} else {
				this.tarjetas = 0;
				this.mostrarAlerta('Error', 'Problemas al mostrar tarjetas');
			}
			console.log(this.campos)
		}).catch((err) => {
			this.tarjetas = 0;
			this.mostrarAlerta('Error catch', 'Problemas al mostrar tarjetas');
		});
	}

	armarArrayTarjetas(array) {
		this.tarjetas = [];
		for (let i = 0; i < array.length; i++) {
			if (!this.tarjetas[array[i].idTarjeta]) {
				this.tarjetas[array[i].idTarjeta] = {
					idTarjeta: array[i].idTarjeta,
					nombre: array[i].nombre,
					nombreCorto: array[i].nombreCorto,
					cuotaComision: [{
						cantidadCuota: array[i].cantidadCuota,
						comision: array[i].comision
					}]
				}
			} else {
				this.tarjetas[array[i].idTarjeta].cuotaComision.push({ cantidadCuota: array[i].cantidadCuota, comision: array[i].comision });
			}
		}
		//eliminamos los indices que no tienen tarjeta, por ejemplo, [0] no contiene nada
		for (let i = 0; i < this.tarjetas.length; i++) {
			if (this.tarjetas[i] === undefined) {
				this.tarjetas.splice(i, 1);
				i--; // hacemos esto, porque si hay 2 undefined consecutivos, el segundo undefined ocupa el lugar del primero (i-1), y el for ya no lo recorre para borrarlo
			}
		}
		console.log(this.tarjetas)
	}

	generar() {
		console.log("dentro de genererar");
		if (!this.formulario.valid || this.lapos === undefined) {
			console.log("formulario invalido");
			this.submitAttempt = true;
		} else {
			console.log("form valido");
			this.confirmar();
		}

	}

	autoCompletarImportes() {
		this.tipoTarjeta = this.cuotas = this.formulario.get('tipoTarjeta').value;
		//var x yy son para armar la busqueda.. VER MYSQL tabla Tarjetas - observaciones en idTarjeta.
		let x;
		let yy;
		let xyy;
		// antes de autocompletar, controlo que haya un importe venta, para no rellenar con ceros.
		if (this.formulario.get('importeVenta').value) {

			// obtener importe venta del input
			this.importeVenta = this.formulario.get('importeVenta').value;
			// seteo importe a cobrar del 95%  del valor de importe venta traido del input.
			this.importeCobrar = Math.round(this.importeVenta * 0.95 * 100) / 100;
			this.formulario.controls['importeCobrar'].setValue(this.importeCobrar);
			// calculo el importe total segun tarjeta y cuotas, simulo valor, falta traer los datos de mysql.
			this.tarjeta = this.formulario.get('tarjeta').value;
			if (this.tipoTarjeta === 'credito') {
				this.cuotas = this.formulario.get('cuotas').value;
			}

			//paso de numero a nombre de tarjeta para el label de IMPORTE TOTAL.
			switch (this.tarjeta) {
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

			x = this.tarjeta;
			//armo el YY de mysql con el 0 adelante en caso de cuotas menores a 10

			yy = this.cuotas;
			// Listo, ya tengo el idTarjeta. ahora recorremos todo el array donde estan las comisiones buscando este id
			xyy = x + yy;

			for (let t of this.tarjetasComisiones) {
				if (t.idTarjeta.toString() === xyy) {
					console.log("coincidencia en " + t.idTarjeta);
					this.comision = t.tasa;
					console.log(" y la comision es " + this.comision);
				}
			}
			// Los calculos son con los numeros redondeados simplemente al siguiente segundo decimal. EJ
			// Ej: 10.225 = 10.23
			//     10.223 = 10.22 
			console.log("importe carga original " + this.importeVenta * this.comision);
			if (this.tipoTarjeta === 'credito') {
				this.importeCarga = Math.round(this.importeVenta * this.comision * 100) / 100;
			} else {
				this.importeCarga = this.importeVenta;
			}

			console.log("importe carga redondeado " + this.importeCarga);

			this.formulario.controls['importeCarga'].setValue(this.importeCarga);

			if (this.tipoTarjeta === 'credito') {
				this.importeCuota = Math.round((this.importeCarga / this.cuotas) * 100) / 100;
			} else {
				this.importeCuota = 0;
			}
			this.formulario.controls['importeCuota'].setValue(this.importeCuota);
		}
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

	presentToast(mensaje) {
		let toast = this.toastCtrl.create({
		  message: mensaje,
		  duration: 3000,
		  position: 'middle'
		});
	 
		toast.onDidDismiss(() => {
		  console.log('Dismissed toast');
		});
	 
		toast.present();
	 }

	confirmar() {
		//confirmar mediante modal
		//Si ya tiene lapos, no muestro modal ni abro el link a visa y solo voy al paso 2
		// console.log("desde confirmar se trae el formulario: ", this.formulario.controls);
		// if (this.lapos === 'si') {
		// 	console.log("tiene lapos")
		// 	this.navCtrl.setRoot(FormularioWebPaso2Page, {
		// 		fechaTransaccion: this.fechaTransaccionMysql,
		// 		fechaPago: this.fechaPagoMysql,
		// 		formulario: this.formulario.controls,
		// 		tarjetaNombre: this.tarjetaNombre,
		// 		tarjetasComisiones: this.tarjetasComisiones,
		// 		tipoTarjeta: this.tipoTarjeta
		// 	});
		// } else {
		// 	console.log("no tiene lapos, yendo a modal y visa");
		// 	let confirmarModal = this.modalCtrl.create(ModalPage, {
		// 		desde: 'form1', fechaTransaccion: this.fechaTransaccionMysql,
		// 		fechaPago: this.fechaPagoMysql,
		// 		formulario: this.formulario.controls,
		// 		tarjetaNombre: this.tarjetaNombre,
		// 		tarjetasComisiones: this.tarjetasComisiones,
		// 		tipoTarjeta: this.tipoTarjeta
		// 	});
		// 	confirmarModal.present();
		// }

	}

	generarDebug() {
		this.confirmar();
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
				if (this.respuesta.codigo === 1) {
					let apellidoProfesional = this.respuesta.apellido;
					let nombreProfesional = this.respuesta.nombre;
					let mailProfesional = this.respuesta.mail;
					let profesionProfesional = this.respuesta.profesion;
					let especialidadProfesional = this.respuesta.especialidad;
					let telefonoProfesional = this.respuesta.telefono;
					this.formulario.controls['dniProfesional'].setValue(this.dniProfesionalForm);
					this.formulario.controls['apellidoProfesional'].setValue(apellidoProfesional);
					this.formulario.controls['nombreProfesional'].setValue(nombreProfesional);
					this.formulario.controls['mailProfesional'].setValue(mailProfesional);
					this.formulario.controls['profesionProfesional'].setValue(profesionProfesional);
					this.formulario.controls['especialidadProfesional'].setValue(especialidadProfesional);
					this.formulario.controls['telefonoProfesional'].setValue(telefonoProfesional);
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

	radioTipoTarjeta() {
		if (this.tipoTarjeta === 'debito') {
			this.cuotas = 0;
			this.importeCuota = 0;
			this.importeCarga = this.importeVenta;
		}
		this.autoCompletarImportes();
	}

	public move(bicho) {
		let yOffset = document.getElementById(bicho).offsetTop;
		this.content.scrollTo(0, yOffset, 1000);
	}
}

