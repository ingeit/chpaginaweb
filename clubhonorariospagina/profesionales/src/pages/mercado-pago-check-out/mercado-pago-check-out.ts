import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, LoadingController, MenuController, ToastController, AlertController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';
import { ListaOperacionesPage } from '../lista-operaciones/lista-operaciones';
import ModeloFormulario from './modelo-formulario';
import ClienteModelo from '../../modelos/cliente';
import ProfesionalModelo from '../../modelos/profesional';

@Component({
  selector: 'page-mercado-pago-check-out',
  templateUrl: 'mercado-pago-check-out.html',
})
export class MercadoPagoCheckOutPage {

  private campos: ModeloFormulario;
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
	lapos: any;
	tipoTarjeta: string = null;

  constructor(public navCtrl: NavController,
    public navParams: NavParams,
    public iab: InAppBrowser,
    public formBuilder: FormBuilder,
    public alertCtrl: AlertController,
		private toastCtrl: ToastController,
		private menu: MenuController,
		public loadingCtrl: LoadingController,
		public opProv: OperacionesProvider,
  ) {
		this.campos = new ModeloFormulario();
		this.dameTarjetas();
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad MercadoPagoCheckOutPage');
  }

  consultarProfesional() {
		if (this.campos.profesional.dni) {
			let details = {
				dni: this.campos.profesional.dni,
			};
			console.log('dni en form: ', details);
			this.showLoader('Consultando Profesional');
			this.opProv.dameProfesional(details).then((result) => {
				console.log('entrando al provider');
				this.respuesta = result[0];
        this.loading.dismiss();
        console.log("antes del iF",this.respuesta)
				if (this.respuesta.codigo === 1) {
          this.campos.profesional.apellido = this.respuesta.apellido;
					this.campos.profesional.nombre = this.respuesta.nombre;
					this.campos.profesional.mail = this.respuesta.mail;
          this.campos.profesional.id = this.respuesta.idProfesional;
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
		}).catch((err) => {
			this.tarjetas = 0;
			this.mostrarAlerta('Error', 'Problemas al mostrar tarjetas');
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
	}

	autoCompletarImportes() {
		// antes de autocompletar, controlo que haya un importe venta, para no rellenar con ceros.
		if (this.campos.importes.venta && this.campos.importes.cantCuotas) {
			console.log("entrado a autocompletarimportes")
			this.campos.importes.cobrar = Math.round(this.campos.importes.venta * 0.95 * 100) / 100;

			let i = this.tarjetas.findIndex(t => t.nombreCorto == "VISA");
			let j = this.tarjetas[i].cuotaComision.findIndex(c => c.cantidadCuota == this.campos.importes.cantCuotas);
			this.comision = this.tarjetas[i].cuotaComision[j].comision;

			this.campos.importes.carga = Math.round(this.campos.importes.venta * this.comision * 100) / 100;
			this.campos.importes.cuota = Math.round((this.campos.importes.carga / this.campos.importes.cantCuotas) * 100) / 100;
		}
		if(this.campos.importes.venta){
			this.campos.importes.cobrar = Math.round(this.campos.importes.venta * 0.95 * 100) / 100;
		}
	}

  generarPreferencia() {
    this.opProv.generarPreferencia(this.campos).then((respuesta: any) => {
      console.log(respuesta);
			this.navCtrl.setRoot(ListaOperacionesPage)
			this.iab.create(respuesta.init_point);
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
