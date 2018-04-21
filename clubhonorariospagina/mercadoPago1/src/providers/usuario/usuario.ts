import { Injectable } from '@angular/core';
import { Http, Headers } from '@angular/http';
import 'rxjs/add/operator/map';
import * as configServer from './../../server';

/*
  Generated class for the UsuarioProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class UsuarioProvider {

  constructor(public http: Http) {
  }

  usuarioDame(credentials){
      return new Promise((resolve, reject) => {
          let headers = new Headers();
          headers.append('Content-Type', 'application/json');
          this.http.post(`${configServer.data.urlServidor}/api/usuarioDame/`, JSON.stringify(credentials), {headers: headers})
          .map(res => res.json())
          .subscribe(res => {
            resolve(res);
          }, (err) => {
            reject(err);
          });
      });
  }

}

