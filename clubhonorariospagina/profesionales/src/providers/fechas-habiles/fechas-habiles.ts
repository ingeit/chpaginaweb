import { Injectable } from '@angular/core';
import { Http,Headers } from '@angular/http';
import 'rxjs/add/operator/map';
import * as configServer from './../../server'


@Injectable()
export class FechasHabilesProvider {


  constructor(public http: Http) {
  }

  obtenerFechas(){
    return new Promise((resolve, reject) => {
        this.http.get(`${configServer.data.urlServidor}/api/listarFechasHabiles/`)
        .map(res => res.json())
        .subscribe(res => {
          // transformamos las fechas a UTC por culpa del pipe...
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }
  
}
