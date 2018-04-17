import { Component } from '@angular/core';
import { NavController,LoadingController,AlertController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { LoginProvider } from '../../providers/login/login';
import { ListaOperacionesPage } from '../lista-operaciones/lista-operaciones';
import { DashboardPage } from '../dashboard/dashboard';
import { MenuController } from 'ionic-angular';


@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {
 
  //form Validators
  login: FormGroup;
  submitAttempt: boolean = false;
  loading:any;
  respuesta:any;

  constructor(public navCtrl: NavController,
              public loginProviderCtrl:LoginProvider,
              public alertCtrl: AlertController,
              private menu: MenuController,
              public loadingCtrl: LoadingController,
              public formBuilder: FormBuilder) {

      this.login = formBuilder.group({
        username: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
        password: ['',Validators.compose([
          Validators.maxLength(30),
          Validators.minLength(5), 
          Validators.required])],
      });
  }

  public ingresar(){
    if(!this.login.valid){
        this.submitAttempt = true; 
      }else{
        this.showLoader();
        let details = {
              username: this.login.value.username,
              password: this.login.value.password,
        };
        
        this.loginProviderCtrl.login(details).then((result) => {
          this.loading.dismiss();
          this.respuesta = result;
          if(this.respuesta.codigo !== 0){
            console.log(this.login.value.username)
            this.menu.enable(true);
            this.navCtrl.setRoot(DashboardPage);
          }
        }, (err) => {
            this.loading.dismiss();
            this.mostrarAlerta('Error','Hay un error en el usuario o contraseña');
        });    
      }
  }

  showLoader(){
    this.loading = this.loadingCtrl.create({
      content: 'Ingresando...'
    });
    this.loading.present();
  }

  mostrarAlerta(titulo,mensaje) {
    let alert = this.alertCtrl.create({
    title: titulo,
    subTitle: mensaje,
    buttons: ['ACEPTAR']
    });
    alert.present();
  }



}
