import { Injectable } from '@angular/core';
import { Http,Headers } from '@angular/http';
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

  obtenerOperacionesFiltrado(credentials){
    return new Promise((resolve, reject) => {

        let headers = new Headers();
        headers.append('Content-Type', 'application/json');
        
        this.http.post(`${configServer.data.urlServidor}/api/listarOperacionesPorFecha/`, JSON.stringify(credentials), {headers: headers})
        .map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  dameOperacion(credentials){

    console.log("dentro providers dame op, idOp: "+ credentials);
    return new Promise((resolve, reject) => {

        let headers = new Headers();
        headers.append('Content-Type', 'application/json');
        
        this.http.post(`${configServer.data.urlServidor}/api/dameOperacion/`, JSON.stringify(credentials), {headers: headers})
        .map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  

}
