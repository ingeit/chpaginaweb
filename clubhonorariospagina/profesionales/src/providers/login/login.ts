import { Injectable } from '@angular/core';
import { Http, Headers } from '@angular/http';
import 'rxjs/add/operator/map';
import * as configServer from './../../server'
import 'rxjs/add/operator/take'
import { Observable } from "rxjs/Observable";
import { Categorias } from '../../modelos/categoria.interface';
import { Storage } from '@ionic/storage';

@Injectable()
export class LoginProvider {

  constructor(public http: Http,
    public storage: Storage) {
  }



  public login(credentials) {

    return new Promise((resolve, reject) => {

      let headers = new Headers();
      headers.append('Content-Type', 'application/json');

      this.http.post(configServer.data.urlServidor + '/auth/login', JSON.stringify(credentials), { headers: headers })
        .subscribe(res => {
          let data = res.json();
          console.log("datos del usuario", data)
          this.storage.clear().then((res) => {
            console.log("respuesta destroy",res);
            this.storage.set('token', data.token);
            this.storage.set('_id', data.user._id);
            this.storage.set('rol', data.user.rol);
            this.storage.set('usuario', data.user);
            resolve(data);
          });
        }, (err) => {
          reject(err);
        });

    });

  }

  logout() {
    return new Promise((resolve, reject) => {
      this.storage.set('token', '');
      this.storage.set('idUsuario', '');
      this.storage.set('rol', '');
      resolve(42);
    });
  }

  // obtenerCategorias(){
  //   return this.http.get(`${configServer.data.urlServidor}/${this.categorias}`).map(res => res.json()).take(1);
  // }

  public obtenerCategorias(id: number) {
    return new Promise((resolve, reject) => {
      let url;
      if (id) {
        url = `${configServer.data.urlServidor}/api/listarCategorias/${id}`
      } else {
        url = `${configServer.data.urlServidor}/api/listarCategorias/`
      }
      this.http.get(url).map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });

    });
    //return this.http.get(url).map(res => res.json());
  }

}
