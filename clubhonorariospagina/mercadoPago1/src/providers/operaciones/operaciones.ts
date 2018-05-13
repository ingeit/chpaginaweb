import { Injectable } from '@angular/core';
import { Http, Headers } from '@angular/http';
import 'rxjs/add/operator/map';
import * as configServer from './../../server';
import { InAppBrowser } from '@ionic-native/in-app-browser';

/*
  Generated class for the OperacionesProvider provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular 2 DI.
*/
@Injectable()
export class OperacionesProvider {

  constructor(public http: Http,public iab: InAppBrowser,) {
    console.log('Hello OperacionesProvider Provider');
  }

  operacionNueva(credentials) {
    console.log("dentro del funcion opnueva provider");
    return new Promise((resolve, reject) => {

      let headers = new Headers();
      headers.append('Content-Type', 'application/json');

      this.http.post(`${configServer.data.urlServidor}/api/operacionNuevaMP1/`, JSON.stringify(credentials), {headers: headers})
        .map(res => res.json())
        .subscribe(res => {
          console.log(res);
          resolve(res);
        }, (err) => {
          console.log(err);
          reject(err);
        });
    });
  }

  otroMetodo(jwt) {
    let uri = {
      value: jwt
    }
    let headers = new Headers();
    headers.append('Content-Type', 'application/json');

    this.http.post(`${configServer.data.urlServidor}/api/mpoptoadminop/`, JSON.stringify(uri), { headers: headers })
      .map(res => res.json())
      .subscribe(res => {
        let url = res;
        console.log(url)
        const browser = this.iab.create(url);
      }, (err) => {

      });
  }

}
