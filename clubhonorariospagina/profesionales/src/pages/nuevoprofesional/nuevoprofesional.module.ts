import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { NuevoprofesionalPage } from './nuevoprofesional';

@NgModule({
  declarations: [
    NuevoprofesionalPage,
  ],
  imports: [
    IonicPageModule.forChild(NuevoprofesionalPage),
  ],
  exports: [
    NuevoprofesionalPage
  ]
})
export class NuevoprofesionalPageModule {}
