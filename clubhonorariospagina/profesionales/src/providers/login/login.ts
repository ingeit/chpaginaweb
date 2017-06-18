import { Injectable } from '@angular/core';
import { Http ,Headers} from '@angular/http';
import 'rxjs/add/operator/map';
import * as configServer from './../../server'
import 'rxjs/add/operator/take'
import { Observable } from "rxjs/Observable";
import { Categorias } from '../../modelos/categoria.interface';

/*
  Generated class for the LoginProvider provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular 2 DI.
*/
@Injectable()
export class LoginProvider {

  rootURL: string ='https://jsonplaceholder.typicode.com';
  categorias: string ='posts';

  constructor(public http: Http) {
    console.log('Hello LoginProvider Provider');
  }

  public login(credentials){
 
    return new Promise((resolve, reject) => {
 
        let headers = new Headers();
        headers.append('Content-Type', 'application/json');
        
        this.http.post(configServer.data.urlServidor+'/api/login', JSON.stringify(credentials), {headers: headers})
          .subscribe(res => {
            let data = res.json();
            data = data[0];
            // this.token = data.token;
            // this.storage.set('token', data.token);
            // this.storage.set('idUsuario', data.user._id);
            // this.storage.set('rol', data.user.rol);
            resolve(data);
          }, (err) => {
            reject(err);
          });
 
    });
 
  }

  obtenerCategorias(){
    return this.http.get(`${this.rootURL}/${this.categorias}`).map(res => res.json()).take(1);
  }
  
  obtenerCategoriasPorId(id:number){
    return this.http.get(`${this.rootURL}/${this.categorias}/${id}`).map(res => res.json()).take(1);
  }

}
