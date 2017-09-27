import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { HttpModule} from '@angular/http';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { TooltipsModule } from 'ionic-tooltips';

//Pages
import { MyApp } from './app.component';
import { HomePage } from '../pages/home/home';
import { SideMenu } from '../pages/sideMenu/sideMenu';
import { ListaOperacionesPage } from '../pages/lista-operaciones/lista-operaciones';
import { VerOperacionPage } from '../pages/ver-operacion/ver-operacion';
import { ListarProfesionalesPage } from '../pages/listar-profesionales/listar-profesionales';

import { PaginationComponent } from 'ionic2-pagination';
// Providers
import { Storage } from '@ionic/storage';
import { LoginProvider } from '../providers/login/login';
import { OperacionesProvider } from '../providers/operaciones/operaciones';
import { ProfesionalesProvider } from '../providers/profesionales/profesionales';



@NgModule({
  declarations: [
    MyApp,
    HomePage,
    ListaOperacionesPage,
    VerOperacionPage,
    SideMenu,
    PaginationComponent,
    ListarProfesionalesPage
  ],
  imports: [
    BrowserModule,
    HttpModule,
    TooltipsModule,
    IonicModule.forRoot(MyApp, {
      backButtonText: 'Ir Atras',
      mode: "md",
      iconMode: 'md',
      modalEnter: 'modal-slide-in',
      modalLeave: 'modal-slide-out',
      tabsPlacement: 'bottom',
      pageTransition: 'md-transition',
      monthShortNames: ['Ene', 'Feb', 'Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic'],
    }),
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    HomePage,
    PaginationComponent,
    ListaOperacionesPage,
    VerOperacionPage,
    ListarProfesionalesPage,
    SideMenu
  ],
  providers: [
    StatusBar,
    SplashScreen,
    InAppBrowser,
    Storage,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    LoginProvider,
    OperacionesProvider,
    ProfesionalesProvider
  ]
})
export class AppModule {}
