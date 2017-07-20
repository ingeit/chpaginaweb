import { Component,HostListener } from '@angular/core';
import { NavController, NavParams, IonicPage,AlertController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';


@Component({
  selector: 'page-formulario-web-paso2',
  templateUrl: 'formulario-web-paso2.html',
})
export class FormularioWebPaso2Page {
  //Evita que cierre la pestanña
  @HostListener('window:beforeunload', ['$event'])
  doSomething($event) {
    if(true) $event.returnValue='Perderas la informacion!';
  }

  fechaTransaccionMysql: any;
  fechaPago:any;
  formulario:any;
  codigo:any;
  tarjeta:any;
  codigoAuto:any;

  constructor(public navCtrl: NavController,
              public alertCtrl: AlertController,
              public formBuilder: FormBuilder,
              public navParams: NavParams) {
                

      this.codigo = formBuilder.group({
        dniProfesional: ['',Validators.compose([Validators.maxLength(11),Validators.minLength(8),Validators.pattern(/()\d/g),Validators.required])],
        apellidoProfesional: ['',Validators.compose([Validators.maxLength(15),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])]
      });
  }

  ionViewDidLoad() {
    this.fechaTransaccionMysql = this.navParams.get('fechaTransaccion');
    this.fechaPago = this.navParams.get('fechaPago');
    this.formulario = this.navParams.get('formulario');  

    switch (this.formulario.tarjeta.value)
      {
        case '1':
          this.tarjeta = 'AMERICAN EX.';
          this.codigoAuto = 'Cod Auto'
          break;
        case '2':
          this.tarjeta = 'MASTERCARD';
          this.codigoAuto = 'Auto-Cod'
          break;
        case '3':
          this.tarjeta = 'VISA';
          this.codigoAuto = 'Cod Auto'
          break;
        default:
          this.tarjeta = '';
          this.codigoAuto = 'Cod Auto'
          break;
      }
    console.log(this.fechaTransaccionMysql,this.fechaPago,this.formulario);  
  }


}
