import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Observable } from 'rxjs/Observable';
import { Categorias } from '../../modelos/categoria.interface';
import { LoginProvider } from '../../providers/login/login';

/**
 * Generated class for the CategoriasPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage({
  name: 'listarCategorias',
  segment: 'categorias-listar'
})
@Component({
  selector: 'page-categorias',
  templateUrl: 'categorias.html',
})
export class CategoriasPage{

  categorias: Observable <Array<Categorias>>;

  constructor(public navCtrl: NavController,
              public data: LoginProvider, 
              public navParams: NavParams) {
                this.obtenerCategorias();
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad CategoriasPage');
  }

  obtenerCategorias(){
    this.categorias = this.data.obtenerCategorias();
  }

  navegateToDetail(categoriaId: number){
    this.navCtrl.push('DetallesCategoriasPage',{categoriaId});
  }
}
