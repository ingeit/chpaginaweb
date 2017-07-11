import { Component, ViewChild } from '@angular/core';
import { Nav, Platform } from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { Storage } from '@ionic/storage';
import { HomePage } from '../pages/home/home';
import { SideMenu } from '../pages/sideMenu/sideMenu';

import { NuevoprofesionalPage } from '../pages/nuevoprofesional/nuevoprofesional';

@Component({
  templateUrl: 'app.html'
})
export class MyApp {
  @ViewChild(Nav) nav: Nav;

  rootPage: any; 

  pages: Array<{title: string, component: any}>;

  constructor(public platform: Platform, 
              public statusBar: StatusBar,
              public storage: Storage,
              public splashScreen: SplashScreen) {
    this.initializeApp();

    // used for an example of ngFor and navigation
    this.pages = [
      { title: 'Home', component: HomePage },
      { title: 'sideMenu', component: SideMenu }
    ];

  }

  initializeApp() {
    this.platform.ready().then(() => {
      this.statusBar.styleDefault();
      this.splashScreen.hide();

      this.storage.get('token').then((token) => {
         console.log('token is', token);
         if(token === ''){
           this.rootPage = HomePage;
         }else{
           this.storage.get('rol').then((rol) => {
             console.log('el usario tiene el rol de',rol);
              // if(rol === 'usuario'){
              //   this.menu.enable(false,'admin');
              //   this.menu.enable(true,'user');
              // }else{
              //     this.menu.enable(true,'admin');
              //     this.menu.enable(false,'user');
              // }
              this.rootPage = NuevoprofesionalPage;
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
}
