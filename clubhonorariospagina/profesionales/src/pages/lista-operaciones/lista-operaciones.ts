import { Component,ElementRef, ViewChild } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { SideMenu } from '../sideMenu/sideMenu';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';
import { Operaciones } from '../../modelos/operaciones.interface';
import { Observable } from 'rxjs/Observable';

@IonicPage()
@Component({
  selector: 'page-lista-operaciones',
  templateUrl: 'lista-operaciones.html',
})
export class ListaOperacionesPage {

  Operaciones: any;
  @ViewChild('contenedor') contenedor: ElementRef;
  altura:any;

  constructor(public navCtrl: NavController,
              public data: OperacionesProvider, 
              public navParams: NavParams) {
                
  }

  ionViewDidLoad() {
    this.obtenerOperaciones();
  }

  // ngAfterViewChecked() {
  //   if(this.contenedor.nativeElement.offsetHeight > 40){
  //     console.log('es mayor');
  //       if(this.altura != (this.contenedor.nativeElement.offsetHeight + 50)){
  //         console.log('entro');
  //         this.altura = this.contenedor.nativeElement.offsetHeight + 50;
  //         console.log(this.altura);
  //       }
  //   }
  // }

  obtenerOperaciones(){
    this.data.obtenerOperaciones().then((data)=>{
      this.Operaciones = data;
    });
  }

  consutlarAlto(){
    
    
  }

}
