import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';
import * as configServer from './../../server'

/*
  Generated class for the FormularioProvider provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular DI.
*/
@Injectable()
export class FormularioProvider {

  constructor(public http: Http) {
    console.log('Hello FormularioProvider Provider');
  }

  public dameFechas(){
    return new Promise((resolve, reject) => {
      let url;
      url = `${configServer.data.urlServidor}/api/dameFechas`
        this.http.get(url).map(res => res.json())
          .subscribe(res => {
            resolve(res);
          }, (err) => {
            reject(err);
          });
 
    });
  }

  public dameComisiones(){
    return new Promise((resolve, reject) => {
      let url;
      url = `${configServer.data.urlServidor}/api/dameComisiones`
        this.http.get(url).map(res => res.json())
          .subscribe(res => {
            resolve(res);
          }, (err) => {
            reject(err);
          });
 
    });
  }


}
