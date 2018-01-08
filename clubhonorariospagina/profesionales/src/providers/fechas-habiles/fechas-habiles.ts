import { Injectable } from '@angular/core';
import { Http,Headers } from '@angular/http';
import 'rxjs/add/operator/map';
import * as configServer from './../../server'


@Injectable()
export class FechasHabilesProvider {


  constructor(public http: Http) {
  }

  obtenerFechasPorAnio(credentials){
    return new Promise((resolve, reject) => {
        let headers = new Headers();
        headers.append('Content-Type', 'application/json');
        this.http.post(`${configServer.data.urlServidor}/api/listarFechasHabilesPorAnio/`, JSON.stringify(credentials), {headers: headers})
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

  obtenerFechasMes(){
    return new Promise((resolve, reject) => {
        this.http.get(`${configServer.data.urlServidor}/api/listarFechasHabiles/`)
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

  modificarCalendario(credentials){
    return new Promise((resolve, reject) => {
        let headers = new Headers();
        headers.append('Content-Type', 'application/json');
        this.http.post(`${configServer.data.urlServidor}/api/modificarCalendario/`, JSON.stringify(credentials), {headers: headers})
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
        valores[index].Fechas = new Date(valores[index].Fechas);
        valores[index].Fechas = new Date(valores[index].Fechas.getUTCFullYear(),
                                                  valores[index].Fechas.getUTCMonth(),
                                                  valores[index].Fechas.getUTCDate());
    });
    return valores;
  }
  
}
