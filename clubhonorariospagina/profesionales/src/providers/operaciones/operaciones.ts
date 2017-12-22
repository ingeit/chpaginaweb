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
        this.http.get(`${configServer.data.urlServidor}/api/listarOperaciones/`)
        .map(res => res.json())
        .subscribe(res => {
          // transformamos las fechas a UTC por culpa del pipe...
          res = this.transformarFechas(res);
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
          res = this.transformarFechas(res);
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  dameOperacion(credentials){
    return new Promise((resolve, reject) => { 

        let headers = new Headers();
        headers.append('Content-Type', 'application/json');

        this.http.post(`${configServer.data.urlServidor}/api/dameOperacion`, JSON.stringify(credentials), {headers: headers})
        .map(res => res.json())
        .subscribe(res => {
          res = this.transformarFechas(res);
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  operacionBaja(credentials){
    return new Promise((resolve, reject) => { 

        let headers = new Headers();
        headers.append('Content-Type', 'application/json');

        this.http.post(`${configServer.data.urlServidor}/api/operacionBaja`, JSON.stringify(credentials), {headers: headers})
        .map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  transformarFechas(valores){
    valores.forEach((element, index) => {    
        valores[index].fechaTransaccion = new Date(valores[index].fechaTransaccion);
        valores[index].fechaTransaccion = new Date(valores[index].fechaTransaccion.getUTCFullYear(),
                                                  valores[index].fechaTransaccion.getUTCMonth(),
                                                  valores[index].fechaTransaccion.getUTCDate(),
                                                  valores[index].fechaTransaccion.getUTCHours(),
                                                  valores[index].fechaTransaccion.getUTCMinutes(),
                                                  valores[index].fechaTransaccion.getUTCSeconds());
    valores[index].fechaPago = new Date(valores[index].fechaPago);
        valores[index].fechaPago = new Date(valores[index].fechaPago.getUTCFullYear(),
                                                  valores[index].fechaPago.getUTCMonth(),
                                                  valores[index].fechaPago.getUTCDate(),
                                                  valores[index].fechaPago.getUTCHours(),
                                                  valores[index].fechaPago.getUTCMinutes(),
                                                  valores[index].fechaPago.getUTCSeconds());
    });
    return valores;
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

  

}
