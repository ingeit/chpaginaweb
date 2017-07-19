import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { FormularioWebPage } from './formulario-web';

@NgModule({
  declarations: [
    FormularioWebPage,
  ],
  imports: [
    IonicPageModule.forChild(FormularioWebPage),
  ],
  exports: [
    FormularioWebPage
  ]
})
export class FormularioWebPageModule {}
