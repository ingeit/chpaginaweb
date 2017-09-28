import { Injectable } from '@angular/core';
import { Http, Headers } from '@angular/http';
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

  public dameProfesional(credentials){
    return new Promise((resolve, reject) => {
        let headers = new Headers();
        headers.append('Content-Type', 'application/json');
        
        this.http.post(`${configServer.data.urlServidor}/api/dameProfesional`, JSON.stringify(credentials), {headers: headers})
        .map(res => res.json())
        .subscribe(res => {
          console.log("respuesta del subscribe: ",res);
          resolve(res);
        }, (err) => {
          console.log(err);
          reject(err);
        });
    });
  }


}
