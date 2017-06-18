import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DetallesCategoriasPage } from './detalles-categorias';

@NgModule({
  declarations: [
    DetallesCategoriasPage,
  ],
  imports: [
    IonicPageModule.forChild(DetallesCategoriasPage),
  ],
  exports: [
    DetallesCategoriasPage
  ]
})
export class DetallesCategoriasPageModule {}
