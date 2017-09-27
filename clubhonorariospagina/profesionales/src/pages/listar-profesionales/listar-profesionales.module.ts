import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { ListarProfesionalesPage } from './listar-profesionales';

@NgModule({
  declarations: [
    ListarProfesionalesPage,
  ],
  imports: [
    IonicPageModule.forChild(ListarProfesionalesPage),
  ],
  exports: [
    ListarProfesionalesPage
  ]
})
export class ListarProfesionalesPageModule {}
