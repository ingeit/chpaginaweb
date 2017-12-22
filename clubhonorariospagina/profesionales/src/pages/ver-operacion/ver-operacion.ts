import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController, LoadingController} from 'ionic-angular';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';
import { ListaOperacionesPage  } from '../lista-operaciones/lista-operaciones';

/**
 * Generated class for the VerOperacionPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@Component({
  selector: 'page-ver-operacion',
  templateUrl: 'ver-operacion.html',
})
export class VerOperacionPage {

  operacion: any;
  loading: any;
  respuesta: any;

  constructor(public navCtrl: NavController, 
              public navParams: NavParams, 
              public operacionProvider:OperacionesProvider,
              public loadingCtrl: LoadingController,
              private alertCtrl: AlertController){
    this.operacion = this.navParams.get('operacion');
    if(this.operacion.tipoTarjeta === 'C'){
      this.operacion.tipoTarjeta = 'Credito'
    }else{
      this.operacion.tipoTarjeta = 'Debito'
    }
  }

  ionViewDidLoad() {
    console.log("operacion desde ver op", this.operacion);
  }

  setClasses(terjetaIn){
    let tar;
    switch (terjetaIn)
    {
      case 'AMEX':
        tar = 'fa-cc-amex';
        break;
      case 'VISA':
        tar = 'fa-cc-visa';
        break;
      case 'MASTER':
        tar = 'fa-cc-mastercard';
        break;
    }
      return tar;
  }

  botonEliminar(idOperacion){
    let titulo = "Eliminar Operación";
    let mensaje = "¿Está seguro que desea eliminar la operación?";
    this.confirmarEliminar(titulo,mensaje,idOperacion);
  }

  confirmarEliminar(titulo,mensaje,idOperacion) {
    let alert = this.alertCtrl.create({
      title: titulo,
      message: mensaje,
      buttons: [
        {
          text: 'Cancelar',
          role: 'cancel',
          handler: () => {
            
          }
        },
        {
          text: 'Aceptar',
          handler: () => {
            this.eliminar(idOperacion);
          }
        }
      ]
    });
    alert.present();
  }

  eliminar(idOperacion){
    this.showLoader('Eliminando Operación. Por favor espere...');
    let details = {
      idOperacion: parseInt(idOperacion),
    };
    this.operacionProvider.operacionBaja(details).then((data)=>{
      this.loading.dismiss();
      this.respuesta = data[0];
      if(this.respuesta.codigo !== 0){
        this.mostrarAlerta('Operacion eliminada exitosamente',this.respuesta.mensaje);
      }else{
        this.mostrarAlerta('ERROR',this.respuesta.mensaje);
      }
    });

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
    buttons: [{
      text: 'Aceptar',
      handler: () => {;
        this.navCtrl.setRoot(ListaOperacionesPage);
      }
    }]
    });
    alert.present();
  }

}
