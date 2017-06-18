import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { LoginProvider } from '../../providers/login/login'; 
import { Categorias } from '../../modelos/categoria.interface';
import { Observable } from "rxjs/Observable";

/**
 * Generated class for the DetallesCategoriasPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage({
  segment: 'categorias/:categoriaId'
})
@Component({
  selector: 'page-detalles-categorias',
  templateUrl: 'detalles-categorias.html',
})
export class DetallesCategoriasPage {
  postId: number;
  categoria: Observable <Categorias>;

  constructor(public navCtrl: NavController, 
              public data: LoginProvider, 
              public navParams: NavParams) {
  }

  ionViewDidLoad() {
    this.postId = this.navParams.get('categoriaId');
    console.log(this.postId);
    this.categoria = this.data.obtenerCategoriasPorId(this.postId);
    console.log(this.categoria);
  }

}
