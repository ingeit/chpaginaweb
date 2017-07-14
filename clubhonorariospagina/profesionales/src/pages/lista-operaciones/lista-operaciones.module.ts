import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { ListaOperacionesPage } from './lista-operaciones';

@NgModule({
  declarations: [
    ListaOperacionesPage,
  ],
  imports: [
    IonicPageModule.forChild(ListaOperacionesPage),
  ],
  exports: [
    ListaOperacionesPage
  ]
})
export class ListaOperacionesPageModule {}
