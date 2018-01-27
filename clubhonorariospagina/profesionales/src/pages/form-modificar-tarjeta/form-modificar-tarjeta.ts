import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, LoadingController, AlertController, ToastController  } from 'ionic-angular';
import { Validators, FormGroup, FormArray, FormBuilder } from '@angular/forms';
import { Tarjeta } from '../form-tarjeta/tarjeta.interface';
import { TarjetasPage } from '../tarjetas/tarjetas';
import { TarjetasProvider } from '../../providers/tarjetas/tarjetas';

/**
 * Generated class for the FormModificarTarjetaPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-form-modificar-tarjeta',
  templateUrl: 'form-modificar-tarjeta.html',
})
export class FormModificarTarjetaPage {

  private tarjeta;
  private formularioTarjeta: FormGroup; // our form model
  private submitAttempt: boolean = false;
  private loading: any;

  constructor(
    public navCtrl: NavController,
    public navParams: NavParams,
    private _fb: FormBuilder,
    public tarjetaProv: TarjetasProvider,
    public loadingCtrl: LoadingController,
    private alertCtrl: AlertController,
    private toastCtrl: ToastController) {
    this.tarjeta = this.navParams.get('tarjeta');

  }

  ngOnInit() {
    this.formularioTarjeta = this._fb.group({
      nombre: ['', [Validators.required, Validators.minLength(1), Validators.maxLength(20)]],
      nombreCorto: ['', [Validators.required, Validators.minLength(1), Validators.maxLength(20)]],
      cuotaComision: this._fb.array([
        this._fb.group({
          numCuota: [this.tarjeta.cuotaComision[0].cantidadCuota, [Validators.required, Validators.minLength(1), Validators.maxLength(2), Validators.pattern(/(?!0)[0-9]{1,2}$/)]],
          comision: [this.tarjeta.cuotaComision[0].comision, [Validators.required, Validators.minLength(1), Validators.maxLength(16), Validators.pattern(/^[1-9]{1,1}\.[0-9]{2,14}?$/)]],
        }),

      ])
    });
    this.cargarValores()
  }

  cargarValores() {
    this.formularioTarjeta.controls['nombre'].setValue(this.tarjeta.nombre);
    this.formularioTarjeta.controls['nombreCorto'].setValue(this.tarjeta.nombreCorto);
    for (let i = 1; i < this.tarjeta.cuotaComision.length; i++) {
      let cc = this.tarjeta.cuotaComision[i];
      const control = <FormArray>this.formularioTarjeta.controls['cuotaComision'];
      control.push(this._fb.group({
        numCuota: [cc.cantidadCuota, [Validators.required, Validators.minLength(1), Validators.maxLength(2), Validators.pattern(/(?!0)[0-9]{1,2}$/)]],
        comision: [cc.comision, [Validators.required, Validators.minLength(1), Validators.maxLength(16), Validators.pattern(/^[1-9]{1,1}\.[0-9]{2,14}?$/)]],
      }));
    }
  }

  iniciarCuotaComision() {
    return this._fb.group({
      numCuota: ['', [Validators.required, Validators.minLength(1), Validators.maxLength(2), Validators.pattern(/(?!0)[0-9]{1,2}$/)]],
      comision: ['', [Validators.required, Validators.minLength(1), Validators.maxLength(16), Validators.pattern(/^[1-9]{1,1}\.[0-9]{2,14}?$/)]],
    });
  }

  agregarCuotaComision() {
    const control = <FormArray>this.formularioTarjeta.controls['cuotaComision'];
    control.push(this.iniciarCuotaComision());
  }

  eliminarCuotaComision(i: number) {
    const control = <FormArray>this.formularioTarjeta.controls['cuotaComision'];
    control.removeAt(i);
  }

  modificarTarjeta() {
    if (!this.formularioTarjeta.valid) {
      this.submitAttempt = true;
    } else {
      this.showLoader();
      let aux = "";
      for (let i = 0; i < this.formularioTarjeta.value.cuotaComision.length; i++) {
        aux = aux.concat(this.formularioTarjeta.value.cuotaComision[i].numCuota);
        aux = aux.concat("|");
        aux = aux.concat(this.formularioTarjeta.value.cuotaComision[i].comision);
        aux = aux.concat("*");
      }
      let details = {
        idTarjeta: this.tarjeta.idTarjeta,
        nombre: this.formularioTarjeta.value.nombre.toUpperCase(),
        nombreCorto: this.formularioTarjeta.value.nombreCorto.toUpperCase(),
        arrayCuotasComisiones: aux
      };
      console.log(details)
      this.tarjetaProv.modificarTarjeta(details).then((data) => {
        this.loading.dismiss();
        let response = data[0];
        console.log(response)
        if (response.codigo !== 0) {
          this.presentToast('Tarjeta modificada con exito');
          this.navCtrl.setRoot(TarjetasPage);
        } else {
          this.presentAlert('¡Error!', "Motivo: " + response.mensaje)
        }
      });
    }
  }

  botonCancelar(){
      this.navCtrl.setRoot(TarjetasPage);
  }

  botonEliminar() {
    this.presentConfirm();
  }

  eliminarTarjeta() {
    let details = {
      idTarjeta : this.tarjeta.idTarjeta
    }
    this.tarjetaProv.eliminarTarjeta(details).then((data) => {
      let response = data[0];
      console.log(response)
      if (response.codigo !== 0) {
        this.presentToast('Tarjeta eliminada con exito');
        this.navCtrl.setRoot(TarjetasPage);
      } else {
        this.presentAlert('¡Error!', "Motivo: " + response.mensaje)
      }
    });
  }

  presentAlert(titulo, subtitulo) {
    let alert = this.alertCtrl.create({
      title: titulo,
      subTitle: subtitulo,
      buttons: ['Aceptar']
    });
    alert.present();
  }

  presentConfirm() {
    let alert = this.alertCtrl.create({
      title: 'Confirmar eliminar',
      message: '¿Esta seguro que desea eliminar la tarjeta?',
      buttons: [
        {
          text: 'Cancelar',
          role: 'cancel',
          handler: () => {
          }
        },
        {
          text: 'Eliminar',
          handler: () => {
            this.eliminarTarjeta();
          }
        }
      ]
    });
    alert.present();
  }

  presentToast(mensaje) {
    let toast = this.toastCtrl.create({
      message: mensaje,
      duration: 3000,
      position: 'top'
    });
  
    toast.onDidDismiss(() => {
      console.log('Dismissed toast');
    });
  
    toast.present();
  }

  showLoader() {
    this.loading = this.loadingCtrl.create({
    });
    this.loading.present();
  }


}
