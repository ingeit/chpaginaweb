import { Injectable } from '@angular/core';
import { Http,Headers } from '@angular/http';
import 'rxjs/add/operator/map';
import * as configServer from './../../server'


/*
  Generated class for the ProfesionalesProvider provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular 2 DI.
*/
@Injectable()
export class ProfesionalesProvider {

  constructor(public http: Http) {
    console.log('Hello ProfesionalesProvider Provider');
  }

  obtenerProfesionales(){
    return new Promise((resolve, reject) => {
        this.http.get(`${configServer.data.urlServidor}/api/listarProfesionales/`)
        .map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  nuevoProfesional(credentials){
    return new Promise((resolve, reject) => {

        let headers = new Headers();
        headers.append('Content-Type', 'application/json');
        
        this.http.post(`${configServer.data.urlServidor}/api/nuevoProfesional/`, JSON.stringify(credentials), {headers: headers})
        .map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  actualizarProfesional(credentials){
    return new Promise((resolve, reject) => {

        let headers = new Headers();
        headers.append('Content-Type', 'application/json');
        
        this.http.post(`${configServer.data.urlServidor}/api/modificarProfesional/`, JSON.stringify(credentials), {headers: headers})
        .map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }


}
