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
  segment: 'categorias/:categoriaId'
})
@Component({
  selector: 'page-categorias',
  templateUrl: 'categorias.html',
})
export class CategoriasPage{
  postId: number;
  categorias: any;
  respuesta:any;
  root:any;

  constructor(public navCtrl: NavController,
              public data: LoginProvider, 
              public navParams: NavParams) {
                
  }

  ionViewDidLoad() {
    this.postId = this.navParams.get('categoriaId');
    if(isNaN(this.postId)){
      this.obtenerCategorias(null);
    }else{
      this.obtenerCategorias(this.postId);
    }
  }

  obtenerCategorias(categoriaId: number){
    this.data.obtenerCategorias(categoriaId).then((data)=>{
      this.respuesta = data;
      this.categorias = this.respuesta.subCategorias;
      this.root = this.respuesta.ansestros;
    });
  }

  listar(id: number){
    this.navCtrl.setRoot('listarCategorias',{categoriaId: id});
  }

  home(){
    this.navCtrl.setRoot('listarCategorias',{categoriaId: 'all'});
  }

}
