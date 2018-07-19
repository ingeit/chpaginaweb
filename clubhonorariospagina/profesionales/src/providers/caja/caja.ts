import { Injectable } from '@angular/core';
import { Http, Headers } from '@angular/http';
import 'rxjs/add/operator/map';
import * as configServer from './../../server'


/*
  Generated class for the ProfesionalesProvider provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular 2 DI.
*/
@Injectable()
export class CajaProvider {

  constructor(public http: Http) {

  }

  obtenerOpLiquidar(credentials) {
    return new Promise((resolve, reject) => {
      let headers = new Headers();
      headers.append('Content-Type', 'application/json');
      this.http.post(`${configServer.data.urlServidor}/api/obtenerOpLiquidar/`, JSON.stringify(credentials), { headers: headers })
        .map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  liquidacionNueva(params) {
    return new Promise((resolve, reject) => {
      let headers = new Headers();
      headers.append('Content-Type', 'application/json');
      this.http.post(`${configServer.data.urlServidor}/api/nuevaLiquidacion/`, JSON.stringify(params), { headers: headers })
        .map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }



  eliminarProfesional(credentials) {
    return new Promise((resolve, reject) => {

      let headers = new Headers();
      headers.append('Content-Type', 'application/json');

      this.http.post(`${configServer.data.urlServidor}/api/bajaProfesional/`, JSON.stringify(credentials), { headers: headers })
        .map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  dameProvincias() {
    return new Promise((resolve, reject) => {
      this.http.get(`${configServer.data.urlServidor}/api/dameProvincias/`)
        .map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  dameCiudades(credentials) {
    return new Promise((resolve, reject) => {

      let headers = new Headers();
      headers.append('Content-Type', 'application/json');

      this.http.post(`${configServer.data.urlServidor}/api/dameciudades/`, JSON.stringify(credentials), { headers: headers })
        .map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  listarVendedores() {
    return new Promise((resolve, reject) => {
      this.http.get(`${configServer.data.urlServidor}/api/listarVendedores/`)
        .map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  public dameProfesional(credentials) {
    return new Promise((resolve, reject) => {
      let headers = new Headers();
      headers.append('Content-Type', 'application/json');

      this.http.post(`${configServer.data.urlServidor}/api/dameProfesional`, JSON.stringify(credentials), { headers: headers })
        .map(res => res.json())
        .subscribe(res => {
          console.log("respuesta del subscribe: ", res);
          resolve(res);
        }, (err) => {
          console.log(err);
          reject(err);
        });
    });
  }

}
