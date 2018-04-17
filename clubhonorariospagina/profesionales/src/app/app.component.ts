import { Component, ViewChild } from '@angular/core';
import { Nav, Platform } from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { Storage } from '@ionic/storage';
import { HomePage } from '../pages/home/home';
import { SideMenu } from '../pages/sideMenu/sideMenu';
import { ListaOperacionesPage } from '../pages/lista-operaciones/lista-operaciones';
import { ListarProfesionalesPage } from '../pages/listar-profesionales/listar-profesionales';
import { FormProfesionalPage } from '../pages/form-profesional/form-profesional';
import { DashboardPage } from '../pages/dashboard/dashboard';
import { TarjetasPage } from '../pages/tarjetas/tarjetas';
import { FormTarjetaPage } from '../pages/form-tarjeta/form-tarjeta';
import { FormModificarTarjetaPage } from '../pages/form-modificar-tarjeta/form-modificar-tarjeta';
import { NuevaOperacionPaso2Page } from '../pages/nueva-operacion-paso2/nueva-operacion-paso2';
import { NuevaOperacionModalPage } from '../pages/nueva-operacion-modal/nueva-operacion-modal';
import { CalendarioPage } from '../pages/calendario/calendario';

import { MenuController } from 'ionic-angular';
import { LoginProvider } from './../providers/login/login';

@Component({
  templateUrl: 'app.html'
})
export class MyApp {
  @ViewChild(Nav) nav: Nav;

  rootPage: any;
  pages: Array<{ tituloPrincipal: string, iconoPrincipal: string, mostrarComponentes: boolean, componenentes: Array<{ titulo: string, icono: string, componente: any }> }>;

  constructor(public platform: Platform,
    public statusBar: StatusBar,
    public loginProviderCtrl: LoginProvider,
    public storage: Storage,
    private menu: MenuController,
    public splashScreen: SplashScreen) {
    this.initializeApp();

    // used for an example of ngFor and navigation
    this.pages = [
      { tituloPrincipal: 'Menu Principal', iconoPrincipal: 'menu', mostrarComponentes: false, componenentes: [{ titulo: 'Listar', icono: 'list', componente: DashboardPage }] },
      { tituloPrincipal: 'Operaciones', iconoPrincipal: 'card', mostrarComponentes: false, componenentes: [{ titulo: 'Listar', icono: 'list', componente: ListaOperacionesPage }] },
      { tituloPrincipal: 'Profesionales', iconoPrincipal: 'people', mostrarComponentes: false, componenentes: [{ titulo: 'Listar', icono: 'list', componente: ListarProfesionalesPage }, { titulo: 'Nuevo', icono: 'person-add', componente: FormProfesionalPage }] },
      { tituloPrincipal: 'Tarjetas', iconoPrincipal: 'card', mostrarComponentes: false, componenentes: [{ titulo: 'Listar', icono: 'list', componente: TarjetasPage }, { titulo: 'Nueva', icono: 'card-add', componente: FormTarjetaPage }] },
      { tituloPrincipal: 'Calendario', iconoPrincipal: 'calendar', mostrarComponentes: false, componenentes: [{ titulo: 'Ver', icono: 'calendar', componente: CalendarioPage }] },
    ];
  }

  initializeApp() {
    this.platform.ready().then(() => {
      this.menu.enable(false);
      this.statusBar.styleDefault();
      this.splashScreen.hide();

      this.storage.get('token').then((token) => {
        console.log('token is', token);
        if (token === '' || token === null) {
          this.rootPage = HomePage;
        } else {
          this.storage.get('rol').then((rol) => {
            console.log('el usario tiene el rol de', rol);
            this.menu.enable(true);
          });
        }
      }).catch((err) => {
        console.log(err);
      });

    });

  }


  openPage(page) {
    // Reset the content nav to have just this page
    // we wouldn't want the back button to show in this scenario
    this.nav.setRoot(page);
  }

  public logout() {
    console.log('saliendo logout');
    this.loginProviderCtrl.logout().then(() => {
      console.log('listo borrado, dirijiendo al login');
      this.menu.enable(false);
      this.nav.setRoot(HomePage);
    });
  }

  public mostrarElementos(aux) {
    aux.mostrarComponentes = !aux.mostrarComponentes;
  }

}
