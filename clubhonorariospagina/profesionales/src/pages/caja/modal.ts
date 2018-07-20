import { Component, ViewChild, ElementRef } from '@angular/core';
import { FormControl } from '@angular/forms';
import { NavController, NavParams, LoadingController, ToastController, AlertController, ModalController } from 'ionic-angular';

@Component({
   selector: 'modal',
   template: `
   <ion-header>

<ion-navbar>
   <ion-title>Acerca de</ion-title>
</ion-navbar>

</ion-header>
<ion-content padding>
</ion-content>`
})
export class ModalPage {
   generarPDFLiquidacion: any;
   constructor(params: NavParams,
   ) {
      this.generarPDFLiquidacion = params.get('generarPDFLiquidacion')
   }
   imprimir() {
      console.log("imprimir desde modal")
      this.generarPDFLiquidacion
   }

}