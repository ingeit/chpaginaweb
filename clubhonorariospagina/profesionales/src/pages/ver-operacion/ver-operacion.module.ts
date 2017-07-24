import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { VerOperacionPage } from './ver-operacion';

@NgModule({
  declarations: [
    VerOperacionPage,
  ],
  imports: [
    IonicPageModule.forChild(VerOperacionPage),
  ],
  exports: [
    VerOperacionPage
  ]
})
export class VerOperacionPageModule {}
