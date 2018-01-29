import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ToastController } from 'ionic-angular';
import { TarjetasProvider } from '../../providers/tarjetas/tarjetas';
import { FormModificarTarjetaPage } from '../form-modificar-tarjeta/form-modificar-tarjeta';

/**
 * Generated class for the TarjetasPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-tarjetas',
  templateUrl: 'tarjetas.html',
})
export class TarjetasPage {

  private respuesta: any;
  private arrayTarjetas: any;

  constructor(public navCtrl: NavController,
    public navParams: NavParams,
    public tarjetaProv: TarjetasProvider,
    private toastCtrl: ToastController) {
    this.listarTarjetas();
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad TarjetasPage');
  }

  listarTarjetas() {
    this.tarjetaProv.listarTarjetas().then((data) => {
      // this.loading.dismiss();
      this.respuesta = data;
      console.log(this.respuesta)
      if (this.respuesta[0].codigo !== 0) {
        this.arrayTarjetas = [];
        for (let i = 0; i < this.respuesta.length; i++) {
          if (!this.arrayTarjetas[this.respuesta[i].idTarjeta]) {
            this.arrayTarjetas[this.respuesta[i].idTarjeta] = {
              idTarjeta: this.respuesta[i].idTarjeta,
              nombre: this.respuesta[i].nombre,
              nombreCorto: this.respuesta[i].nombreCorto,
              cuotaComision: [{
                cantidadCuota: this.respuesta[i].cantidadCuota,
                comision: this.respuesta[i].comision
              }]
            }
          } else {
            this.arrayTarjetas[this.respuesta[i].idTarjeta].cuotaComision.push({ cantidadCuota: this.respuesta[i].cantidadCuota, comision: this.respuesta[i].comision });
          }
        }
        console.log(this.arrayTarjetas)
        //eliminamos los indices que no tienen tarjeta, por ejemplo, [0] no contiene nada
        for (let i = 0; i < this.arrayTarjetas.length; i++) {
          if (this.arrayTarjetas[i] === undefined) {
            this.arrayTarjetas.splice(i, 1);
            i--; // hacemos esto, porque si hay 2 undefined consecutivos, el segundo undefined ocupa el lugar del primero (i-1), y el for ya no lo recorre para borrarlo
          }
        }
        console.log(this.arrayTarjetas)
      }
    }).catch((error) => {
      console.log("error catch", error)
      this.presentToast("Error. No se pudo conectar con el servidor");
    });




  }

  modificarTarjeta(tarjeta) {
    this.navCtrl.setRoot(FormModificarTarjetaPage, { tarjeta: tarjeta });
  }

  presentToast(mensaje) {
    let toast = this.toastCtrl.create({
      message: mensaje,
      duration: 3000,
      position: 'middle',
      closeButtonText: "Cerrar",
      showCloseButton: true
    });

    toast.onDidDismiss(() => {
      console.log('Dismissed toast');
    });

    toast.present();
  }

}
