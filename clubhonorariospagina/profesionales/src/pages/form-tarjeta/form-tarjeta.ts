import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, LoadingController } from 'ionic-angular';
import { Validators, FormGroup, FormArray, FormBuilder } from '@angular/forms';
import { Tarjeta } from './tarjeta.interface';
import { TarjetasProvider } from '../../providers/tarjetas/tarjetas';
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

   private formularioTarjeta: FormGroup; // our form model
   private submitAttempt: boolean = false;
   private loading:any;

   constructor(
      public navCtrl: NavController, 
      public navParams: NavParams, 
      private _fb: FormBuilder, 
      public tarjetaProv: TarjetasProvider, 
      public loadingCtrl: LoadingController) {
   }

   ngOnInit() {
      this.formularioTarjeta = this._fb.group({
         nombre: ['', [Validators.required, Validators.minLength(1), Validators.maxLength(20)]],
         nombreCorto: ['', [Validators.required, Validators.minLength(1), Validators.maxLength(20)]],
         cuotaComision: this._fb.array([
            this.initAddress(),
         ])
      });
   }

   initAddress() {
      return this._fb.group({
         numCuota: ['', [Validators.required, Validators.minLength(1), Validators.maxLength(2), Validators.pattern(/(?!0)[0-9]{1,2}$/)]],
         comision: ['', [Validators.required, Validators.minLength(1), Validators.maxLength(15), Validators.pattern(/^[1-9]{1,1}\.[0-9]{2,14}?$/)]],
      });
   }

   agregarCuotaComision() {
      const control = <FormArray>this.formularioTarjeta.controls['cuotaComision'];
      console.log(this.formularioTarjeta)
      control.push(this.initAddress());
   }

   eliminarCuotaComision(i: number) {
      const control = <FormArray>this.formularioTarjeta.controls['cuotaComision'];
      control.removeAt(i);
   }

   nuevaTarjeta() {
      // call API to save customer
      if (!this.formularioTarjeta.valid) {
         console.log("formulario invalido");
         this.submitAttempt = true;
      } else {
         this.showLoader();
         console.log("form valido");
         console.log(this.formularioTarjeta.value);
         let aux = "";
         for (let i = 0; i < this.formularioTarjeta.value.cuotaComision.length; i++) {
               aux = aux.concat(this.formularioTarjeta.value.cuotaComision[i].numCuota);
               aux = aux.concat("|");
               aux = aux.concat(this.formularioTarjeta.value.cuotaComision[i].comision);
               aux = aux.concat("*");
         }
         let details = {
            nombre: this.formularioTarjeta.value.nombre,
            nombreCorto: this.formularioTarjeta.value.nombreCorto,
            arrayCuotasComisiones: aux
         };
         console.log(details);
         this.tarjetaProv.nuevaTarjeta(details).then((data)=>{
            this.loading.dismiss();
            let response = data[0];
            console.log(response);
            // if(response.codigo !== 1){
            //   console.log(response)
            // //   this.mostrarAlerta('ERROR', "No se realizaron los cambios. Motivo: "+this.response.mensaje)
            // }else{
            // //   this.mostrarAlerta('Operacion Exitosa', this.response.mensaje)
            // }
          });
      }
   }

   showLoader(){
      this.loading = this.loadingCtrl.create({
      });
      this.loading.present();
    }


}
