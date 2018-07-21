import { Component, ViewChild, ElementRef } from '@angular/core';
import { FormControl } from '@angular/forms';
import { NavController, NavParams, LoadingController, ToastController, AlertController, ModalController } from 'ionic-angular';

@Component({
  selector: 'modal',
  template: `
   <ion-header>

<ion-navbar>
   <ion-title>Liquidacion Correcta</ion-title>
</ion-navbar>

</ion-header>
<ion-content padding>
<ion-grid>
  <ion-row>
    <ion-col>
        <ion-col col-12 col-sm>
            <div class="card" style="text-align: center;background:#459349" (click)="liquidacion()">
               <ion-row>
                  <ion-col style="margin-top: 12px;">
                     <ion-icon name="md-calendar"></ion-icon>
                  </ion-col>
               </ion-row>
               <ion-row>
                  <ion-col>
                     <p>CALENDARIO</p>
                  </ion-col>
               </ion-row>
            </div>
         </ion-col>
    </ion-col>
  </ion-row>
</ion-grid>
</ion-content>`,
  styles: [` .scroll-content {
   background: #F1F1F1 !important;
}
.card {
   -moz-border-radius: 2px;
   -webkit-border-radius: 2px;
   border-radius: 2px;
   -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
   -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
   box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
   max-width: 200px;
   border-radius: 5px;
   margin: 0 auto;
   cursor: pointer;
}
.card:hover {
   background: #002775 !important;
}
.card ion-icon {
   font-size: 4em;
}
.card p {
   font-size: 2em;
}
.card p,
.card ion-icon {
   color: white;
}`]
})
export class ModalPage {
  generarPDFLiquidacion: any;
  botonPDF: boolean;
  constructor(private navParams: NavParams,
  ) {
  }

  liquidacion() {
    this.generarPDFLiquidacion = this.navParams.get('generarPDFLiquidacion')

  }

}