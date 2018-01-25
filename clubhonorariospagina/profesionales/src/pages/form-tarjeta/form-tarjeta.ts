import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Validators, FormGroup, FormArray, FormBuilder } from '@angular/forms';
import { Tarjeta } from './tarjeta.interface';
/**
 * Generated class for the FormTarjetaPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-form-tarjeta',
  templateUrl: 'form-tarjeta.html',
})
export class FormTarjetaPage {
  
  public formularioTarjeta: FormGroup; // our form model

  constructor(public navCtrl: NavController, public navParams: NavParams, private _fb: FormBuilder) {

  }
  save(model: Tarjeta) {
    // call API to save customer
    console.log(model);
  }
  ngOnInit() {
    // we will initialize our form here
    this.formularioTarjeta = this._fb.group({
      nombre: ['', [Validators.required, Validators.minLength(5)]],
      cuotaComision: this._fb.array([
        this.initAddress(),
      ])
    });
  }

  initAddress() {
    // initialize our address
    return this._fb.group({
      numCuota: ['', Validators.required],
      comision: ['']
    });
  }

  addAddress() {
    // add address to the list
    const control = <FormArray>this.formularioTarjeta.controls['cuotaComision'];
    console.log(this.formularioTarjeta)
    control.push(this.initAddress());
  }

  removeAddress(i: number) {
    // remove address from the list
    const control = <FormArray>this.formularioTarjeta.controls['cuotaComision'];
    control.removeAt(i);
  }


}
