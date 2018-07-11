import { Injectable } from '@angular/core';
import { Http, Headers } from '@angular/http';
import 'rxjs/add/operator/map';
import * as configServer from './../../server'


@Injectable()
export class OperacionesProvider {


  constructor(public http: Http) {
  }

  cargarOperacion(credentials) {
    console.log("dentro del funcion opnueva provider");
    return new Promise((resolve, reject) => {

      let headers = new Headers();
      headers.append('Content-Type', 'application/json');

      this.http.post(`${configServer.data.urlServidor}/api/operacionNueva/`, JSON.stringify(credentials), { headers: headers })
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

  generarPreferencia(campos) {
    console.log("dentro del funcion opnueva provider");
    let headers = new Headers();
    headers.append('Content-Type', 'application/json');
    return new Promise((resolve, reject) => {
      this.http.post(`${configServer.data.urlServidor}/api/generarPreferencia/`, JSON.stringify(campos), { headers: headers })
        .map(res => res.json())
        .subscribe(res => {
          console.log("res preference", res);
          resolve(res.body);
        }, (err) => {
          console.log("err preference", err);
          reject(err);
        });
    });
  }

  obtenerOperaciones() {
    return new Promise((resolve, reject) => {
      this.http.get(`${configServer.data.urlServidor}/api/listarOperaciones/`)
        .map(res => res.json())
        .subscribe(res => {
          // transformamos las fechas a UTC por culpa del pipe...
          res = this.transformarFechas(res);
          console.log("respuesta en provider", res);
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  obtenerOpNoConciliadas() {
    return new Promise((resolve, reject) => {
      this.http.get(`${configServer.data.urlServidor}/api/opNoConciliadas/`)
        .map(res => res.json())
        .subscribe(res => {
          console.log("op no conciliadas", res);
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  obtenerOperacionesFiltrado(credentials) {
    return new Promise((resolve, reject) => {

      let headers = new Headers();
      headers.append('Content-Type', 'application/json');

      this.http.post(`${configServer.data.urlServidor}/api/listarOperacionesPorFecha/`, JSON.stringify(credentials), { headers: headers })
        .map(res => res.json())
        .subscribe(res => {
          res = this.transformarFechas(res);
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  dameOperacion(credentials) {
    return new Promise((resolve, reject) => {

      let headers = new Headers();
      headers.append('Content-Type', 'application/json');

      this.http.post(`${configServer.data.urlServidor}/api/dameOperacion`, JSON.stringify(credentials), { headers: headers })
        .map(res => res.json())
        .subscribe(res => {
          res = this.transformarFechas(res);
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  pagarOperacion(credentials) {
    return new Promise((resolve, reject) => {

      let headers = new Headers();
      headers.append('Content-Type', 'application/json');

      this.http.post(`${configServer.data.urlServidor}/api/pagarOperacion`, JSON.stringify(credentials), { headers: headers })
        .map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  operacionBaja(credentials) {
    return new Promise((resolve, reject) => {

      let headers = new Headers();
      headers.append('Content-Type', 'application/json');

      this.http.post(`${configServer.data.urlServidor}/api/operacionBaja`, JSON.stringify(credentials), { headers: headers })
        .map(res => res.json())
        .subscribe(res => {
          resolve(res);
        }, (err) => {
          reject(err);
        });
    });
  }

  transformarFechas(valores) {
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

  public dameFechas() {
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

  public dameTarjetas() {
    return new Promise((resolve, reject) => {
      let url;
      url = `${configServer.data.urlServidor}/api/listarTarjetas`
      this.http.get(url).map(res => res.json())
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
