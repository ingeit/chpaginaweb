import { Component, ViewChild } from '@angular/core';
import { Nav, Platform } from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { Storage } from '@ionic/storage';
import { HomePage } from '../pages/home/home';
import { SideMenu } from '../pages/sideMenu/sideMenu';
import { ListaOperacionesPage } from '../pages/lista-operaciones/lista-operaciones';
import { MenuController } from 'ionic-angular';
import { LoginProvider } from './../providers/login/login';

@Component({
  templateUrl: 'app.html'
})
export class MyApp {
  @ViewChild(Nav) nav: Nav;

  rootPage: any; 
  mostrarOperaciones = false;
  mostrarProfesionales = false;
  pages: Array<{title: string, component: any}>;

  constructor(public platform: Platform, 
              public statusBar: StatusBar,
              public loginProviderCtrl:LoginProvider,
              public storage: Storage,
              private menu: MenuController,
              public splashScreen: SplashScreen) {
                this.initializeApp();
                
                // used for an example of ngFor and navigation
                this.pages = [
                  { title: 'Home', component: HomePage },
                ];
  }

  initializeApp() {
    this.platform.ready().then(() => {
      this.menu.enable(false);
      this.statusBar.styleDefault();
      this.splashScreen.hide();

      this.storage.get('token').then((token) => {
         console.log('token is', token);
         if(token === '' || token === null){
           this.rootPage = HomePage;
         }else{
           this.storage.get('rol').then((rol) => {
             console.log('el usario tiene el rol de',rol);
              this.menu.enable(true);
              this.rootPage = ListaOperacionesPage;
           });
         }
       }).catch((err)=>{ 
            console.log(err);
       });

     });
    
  }


  openPage(page) {
    // Reset the content nav to have just this page
    // we wouldn't want the back button to show in this scenario
    this.nav.setRoot(page.component);
  }

  public logout(){
    console.log('saliendo logout');
    this.loginProviderCtrl.logout().then(()=>{
    console.log('listo borrado, dirijiendo al login');
    this.menu.enable(false);
    this.nav.setRoot(HomePage) ;
    });
  }

  public mostrarElementos(aux){
    if(aux === 'profesionales'){
      this.mostrarProfesionales = !this.mostrarProfesionales;
    }else{
      this.mostrarOperaciones = !this.mostrarOperaciones;
    }
  }

  ir(page){
    this.nav.setRoot(ListaOperacionesPage);
  }

}
