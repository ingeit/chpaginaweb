import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { FormularioWebPaso2Page } from './formulario-web-paso2';

@NgModule({
  declarations: [
    FormularioWebPaso2Page,
  ],
  imports: [
    IonicPageModule.forChild(FormularioWebPaso2Page),
  ],
  exports: [
    FormularioWebPaso2Page
  ]
})
export class FormularioWebPaso2PageModule {}
