import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ProfesionalesProvider } from '../../providers/profesionales/profesionales';
import { AlertController,LoadingController } from 'ionic-angular';
import { ListarProfesionalesPage } from '../listar-profesionales/listar-profesionales';

@Component({
  selector: 'page-form-profesional',
  templateUrl: 'form-profesional.html',
})
export class FormProfesionalPage {

  fomularioProfesional:any;
  submitAttempt:boolean = false;
  public respuesta:any;
  public loading:any;
  profesional:any;
  private isInputDisabled:boolean=false;
  mensajeSubmit:String = 'Crear';
  editable: String;
  public dniHabilitado:boolean;
  public selectOptionsProvincia:any;
  public selectOptionsCiudad:any;
  public provincias:any;
  public mostrarCiudades:boolean = false;
  public ciudades:any;
  public vendedores:any;

  constructor(public navCtrl: NavController, 
              public alertCtrl: AlertController,
              public loadingCtrl: LoadingController,
              public formBuilder:FormBuilder,
              public profesionalesPrv:ProfesionalesProvider,
              public navParams: NavParams) {

    this.selectOptionsProvincia = {
      title: 'Provincias',
      subTitle: 'Seleccione una Provincia',
      mode: 'md'
    };
    this.selectOptionsCiudad = {
      title: 'Ciudades',
      subTitle: 'Seleccione una Ciudad',
      mode: 'md'
    };

    this.dameProvincias();
    this.listarVendedores();

    this.profesional = this.navParams.get('profesional'); 
    console.log('Profesional',this.profesional);
    this.editable = this.navParams.get('edit');

    if(this.editable === undefined){
      this.editable="false";
    }

    if(this.profesional){

      if(this.editable === 'false'){
        this.isInputDisabled = true;
      }else{
        this.mensajeSubmit = 'Actualizar';
      }
      
      this.dameCiudades(this.profesional.provincia);

      this.fomularioProfesional = formBuilder.group({
        fechaImpresion: [this.profesional.fechaImpresion],
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
        fechaImpresion:[(new Date().toISOString())],
        dni: ['',Validators.compose([Validators.maxLength(12),Validators.minLength(7),Validators.pattern(/()\d/g),Validators.required])],
        apellido: ['',Validators.compose([Validators.maxLength(45),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        nombre: ['',Validators.compose([Validators.maxLength(45),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        especialidad:['',Validators.compose([Validators.maxLength(30),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        domicilio:['',Validators.compose([Validators.maxLength(200),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        localidad:['',Validators.compose([Validators.maxLength(100),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        provincia:['',Validators.compose([Validators.maxLength(45),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        telefono: ['',Validators.compose([Validators.maxLength(100),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        prefesion:['',Validators.compose([Validators.maxLength(45),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        mail: ['',Validators.email],
        vendedor:['',Validators.compose([Validators.maxLength(45),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        autorizado:['',Validators.compose([Validators.maxLength(100),Validators.minLength(1),Validators.pattern(/()\w/g),Validators.required])],
        dniAutorizado: ['',Validators.compose([Validators.maxLength(12),Validators.minLength(7),Validators.pattern(/()\d/g),Validators.required])]
      });
    }
    this.habilitarDNI();
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

      if(this.editable === 'false'){
        console.log("editable: ",this.editable);
        this.showLoader('Enviando formulario. Espere por favor...'); 
        let details = {
          fechaImpresion: this.fomularioProfesional.value.fechaImpresion,
          dni: parseInt(this.fomularioProfesional.value.dni),
          apellido: this.fomularioProfesional.value.apellido,
          nombre: this.fomularioProfesional.value.nombre,
          especialidad:this.fomularioProfesional.value.especialidad,
          domicilio:this.fomularioProfesional.value.domicilio,
          localidad:this.fomularioProfesional.value.localidad,
          provincia:this.fomularioProfesional.value.provincia,
          telefono: this.fomularioProfesional.value.telefono,
          prefesion:this.fomularioProfesional.value.prefesion,
          mail: this.fomularioProfesional.value.mail,
          vendedor:this.fomularioProfesional.value.vendedor,
          autorizado:this.fomularioProfesional.value.autorizado,
          dniAutorizado: parseInt(this.fomularioProfesional.value.dniAutorizado)
        };
        let fImpresion = details.fechaImpresion.split('T');
        fImpresion = fImpresion[0];
        details.fechaImpresion = fImpresion;
        console.log(details);
        this.profesionalesPrv.nuevoProfesional(details).then((data)=>{
          this.loading.dismiss();
          this.respuesta = data[0];
          console.log('Profesinal Crado correctamente',this.respuesta)
          if(this.respuesta.codigo !== 0){
            this.mostrarAlerta('Operacion Exitosa',this.respuesta.mensaje)
          }else{
            this.mostrarAlerta('ERROR',this.respuesta.mensaje)
          }
        });
      }else{
        console.log("editable: ",this.editable);
        let details = {
          idProfesional: parseInt(this.profesional.idProfesional),
          apellido: this.fomularioProfesional.value.apellido,
          nombre: this.fomularioProfesional.value.nombre,
          especialidad:this.fomularioProfesional.value.especialidad,
          domicilio:this.fomularioProfesional.value.domicilio,
          localidad:this.fomularioProfesional.value.localidad,
          provincia:this.fomularioProfesional.value.provincia,
          telefono: this.fomularioProfesional.value.telefono,
          profesion:this.fomularioProfesional.value.prefesion,
          mail: this.fomularioProfesional.value.mail,
          vendedor:this.fomularioProfesional.value.vendedor,
          autorizado:this.fomularioProfesional.value.autorizado,
          dniAutorizado: parseInt(this.fomularioProfesional.value.dniAutorizado)
        };

        let titulo = "Modificar Profesional";
        let mensaje = "¿Esta seguro que desea modificar el profesional?";
        this.confirmarModificar(titulo,mensaje,details);
      }
    }
  }

  public habilitarDNI(){
    if(this.isInputDisabled){
      this.dniHabilitado = true;
    }else{
      if(this.editable === 'true'){
        this.dniHabilitado = true;
      }else{
        this.dniHabilitado = false;
      }
    }
  }

  mostrarAlerta(titulo,mensaje) {
    let alert = this.alertCtrl.create({
    title: titulo,
    subTitle: mensaje,
    buttons: [{
      text: 'Aceptar',
      handler: () => {
        if(this.editable === "true"){
          this.navCtrl.pop();
        }
        if(this.fomularioProfesional.valid){
          this.navCtrl.setRoot(ListarProfesionalesPage);
        }
      }
    }]
    });
    alert.present();
  }

  showLoader(mensaje){
      this.loading = this.loadingCtrl.create({
        content: mensaje
      });
      this.loading.present();
  }



  confirmarModificar(titulo,mensaje,details) {
    let alert = this.alertCtrl.create({
      title: titulo,
      message: mensaje,
      buttons: [
        {
          text: 'Cancelar',
          role: 'cancel',
          handler: () => {
            
          }
        },
        {
          text: 'Aceptar',
          handler: () => {
            this.modificar(details);
          }
        }
      ]
    });
    alert.present();
  }

  modificar(details){
    this.showLoader('Modificando Profesional. Por favor espere...');

    this.profesionalesPrv.actualizarProfesional(details).then((data)=>{
          this.loading.dismiss();
          this.respuesta = data[0];
          if(this.respuesta.codigo !== 0){
            this.mostrarAlerta('Operacion Exitosa',this.respuesta.mensaje)
          }else{
            this.mostrarAlerta('ERROR',this.respuesta.mensaje)
          }
        });

  }
  
  dameProvincias(){
    this.profesionalesPrv.dameProvincias().then((data)=>{
      this.respuesta = data[0];
      if(this.respuesta.codigo !== 0){
        this.provincias = data;
        console.log(this.provincias)
      }else{
        this.mostrarAlerta('ERROR',this.respuesta.mensaje)
      }
    });
  }

  provinciaElegida(idProvinciaSeleccionada: any) {
    this.dameCiudades(idProvinciaSeleccionada);
  }

  dameCiudades(idProv){
    let details = {
      idProvincia: idProv,
    }

    this.profesionalesPrv.dameCiudades(details).then((data)=>{
      this.respuesta = data[0];
      if(this.respuesta.codigo !== 0){
        this.ciudades = data;
        console.log(this.ciudades)
        this.mostrarCiudades = true;
      }else{
        this.mostrarAlerta('ERROR',this.respuesta.mensaje)
      }
    });
  }

  listarVendedores(){
    this.profesionalesPrv.listarVendedores().then((data)=>{
      this.respuesta = data[0];
      if(this.respuesta.codigo !== 0){
        this.vendedores = data;
        console.log(this.vendedores)
      }else{
        this.mostrarAlerta('ERROR',this.respuesta.mensaje)
      }
    });
  }

}
