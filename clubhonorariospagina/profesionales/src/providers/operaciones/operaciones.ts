import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';
import * as configServer from './../../server'


@Injectable()
export class OperacionesProvider {


  constructor(public http: Http) {
  }

  obtenerOperaciones(){
    return new Promise((resolve, reject) => {
        this.http.get(`${configServer.data.urlServidor}/api/listarOperaciones/`).map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }
  

}
