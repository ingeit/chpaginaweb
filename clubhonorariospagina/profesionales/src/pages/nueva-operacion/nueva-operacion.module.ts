import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { NuevaOperacionPage } from './nueva-operacion';

@NgModule({
  declarations: [
    NuevaOperacionPage,
  ],
  imports: [
    IonicPageModule.forChild(NuevaOperacionPage),
  ],
})
export class NuevaOperacionPageModule {}
