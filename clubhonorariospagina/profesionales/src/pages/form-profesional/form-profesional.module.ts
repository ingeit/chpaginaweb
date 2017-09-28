import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { FormProfesionalPage } from './form-profesional';

@NgModule({
  declarations: [
    FormProfesionalPage,
  ],
  imports: [
    IonicPageModule.forChild(FormProfesionalPage),
  ],
  exports: [
    FormProfesionalPage
  ]
})
export class FormProfesionalPageModule {}
