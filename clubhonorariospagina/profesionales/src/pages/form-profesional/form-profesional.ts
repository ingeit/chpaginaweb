import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ProfesionalesProvider } from '../../providers/profesionales/profesionales';
import { AlertController,LoadingController } from 'ionic-angular';

/**
 * Generated class for the FormProfesionalPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-form-profesional',
  templateUrl: 'form-profesional.html',
})
export class FormProfesionalPage {

  fomularioProfesional:any;
  submitAttempt:boolean = false;
  public nProfesioanl:any;
  public loading:any;
  profesional:any;
  private isInputDisabled:boolean=false;
  mensajeSubmit:String = 'Crear';
  editable:any;

  constructor(public navCtrl: NavController, 
              public alertCtrl: AlertController,
              public loadingCtrl: LoadingController,
              public formBuilder:FormBuilder,
              public profesionalesPrv:ProfesionalesProvider,
              public navParams: NavParams) {

    this.profesional = this.navParams.get('profesional');
    this.editable = this.navParams.get('edit');
    console.log(this.profesional)
    if(this.profesional){
      if(this.editable === 'false'){
        this.isInputDisabled = true;
      }else{
        this.mensajeSubmit = 'Actualizar';
      }
      
      this.fomularioProfesional = formBuilder.group({
        dni: [this.profesional.dni],
        apellido: [this.profesional.apellido],
        nombre: [this.profesional.nombre],
        especialidad:[this.profesional.especialidad],
        domicilio:[this.profesional.domicilio],
        localidad:[this.profesional.localidad],
        provincia:[this.profesional.provincia],
        telefono: [this.profesional.telefono],
        prefesion:[this.profesional.profesion],
        mail: [this.profesional.mail],
        vendedor:[this.profesional.vendedor],
        autorizado:[this.profesional.autorizado],
        dniAutorizado: [this.profesional.dniAutorizado]
      });
    }else{
      this.fomularioProfesional = formBuilder.group({
        dni: ['',Validators.compose([Validators.maxLength(12),Validators.minLength(7),Validators.pattern(/()\d/g),Validators.required])],
        apellido: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        nombre: ['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        especialidad:['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        domicilio:['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        localidad:['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        provincia:['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        telefono: ['',Validators.compose([Validators.maxLength(12),Validators.minLength(7),Validators.pattern(/()\d/g),Validators.required])],
        prefesion:['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        mail: ['',Validators.email],
        vendedor:['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        autorizado:['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        dniAutorizado: ['',Validators.compose([Validators.maxLength(12),Validators.minLength(7),Validators.pattern(/()\d/g),Validators.required])]
      });
    }
    
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad FormProfesionalPage');
  }

  generar(){
    if(!this.fomularioProfesional.valid){
      console.log("formulario invalido");
      this.submitAttempt = true;
      this.mostrarAlerta('ERROR','Debe completar todos los campos correctamente.')
    }else{
      console.log("form valido");
    
      this.showLoader('Enviando formulario. Espere por favor...'); 

      if(this.editable === 'false'){
        let details = {
          dni: parseInt(this.fomularioProfesional._value.dni),
          apellido: this.fomularioProfesional._value.apellido,
          nombre: this.fomularioProfesional._value.nombre,
          especialidad:this.fomularioProfesional._value.especialidad,
          domicilio:this.fomularioProfesional._value.domicilio,
          localidad:this.fomularioProfesional._value.localidad,
          provincia:this.fomularioProfesional._value.provincia,
          telefono: this.fomularioProfesional._value.telefono,
          prefesion:this.fomularioProfesional._value.prefesion,
          mail: this.fomularioProfesional._value.mail,
          vendedor:this.fomularioProfesional._value.vendedor,
          autorizado:this.fomularioProfesional._value.autorizado,
          dniAutorizado: parseInt(this.fomularioProfesional._value.dniAutorizado)
        };

        this.profesionalesPrv.nuevoProfesional(details).then((data)=>{
          this.loading.dismiss();
          this.nProfesioanl = data[0];
          console.log('Profesinal Crado correctamente',this.nProfesioanl)
          if(this.nProfesioanl.codigo !== 0){
            this.mostrarAlerta('Operacion Exitosa','Profesional creado correctamente')
          }else{
            this.mostrarAlerta('ERROR','Ups!! Algo salio mal')
          }
        });
      }else{

        let details = {
          idProfesional: parseInt(this.profesional.idProfesional),
          apellido: this.fomularioProfesional._value.apellido,
          nombre: this.fomularioProfesional._value.nombre,
          especialidad:this.fomularioProfesional._value.especialidad,
          domicilio:this.fomularioProfesional._value.domicilio,
          localidad:this.fomularioProfesional._value.localidad,
          provincia:this.fomularioProfesional._value.provincia,
          telefono: this.fomularioProfesional._value.telefono,
          profesion:this.fomularioProfesional._value.prefesion,
          mail: this.fomularioProfesional._value.mail,
          vendedor:this.fomularioProfesional._value.vendedor,
          autorizado:this.fomularioProfesional._value.autorizado,
          dniAutorizado: parseInt(this.fomularioProfesional._value.dniAutorizado)
        };

        this.profesionalesPrv.actualizarProfesional(details).then((data)=>{
          this.loading.dismiss();
          this.nProfesioanl = data[0];
          if(this.nProfesioanl.codigo !== 0){
            this.mostrarAlerta('Operacion Exitosa','Profesional modificado correctamente')
          }else{
            this.mostrarAlerta('ERROR','Ups!! Algo salio mal')
          }
        });
      }
    }
  }

  mostrarAlerta(titulo,mensaje) {
    let alert = this.alertCtrl.create({
    title: titulo,
    subTitle: mensaje,
    buttons: ['ACEPTAR']
    });
    alert.present();
  }

  showLoader(mensaje){
      this.loading = this.loadingCtrl.create({
        content: mensaje
      });
      this.loading.present();
  }

}
