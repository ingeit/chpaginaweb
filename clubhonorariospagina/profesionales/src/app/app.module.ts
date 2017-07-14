import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { HttpModule} from '@angular/http';

//Pages
import { MyApp } from './app.component';
import { HomePage } from '../pages/home/home';
import { SideMenu } from '../pages/sideMenu/sideMenu';
import { ListaOperacionesPage } from '../pages/lista-operaciones/lista-operaciones';

// Providers
import { Storage } from '@ionic/storage';
import { LoginProvider } from '../providers/login/login';
import { OperacionesProvider } from '../providers/operaciones/operaciones';



@NgModule({
  declarations: [
    MyApp,
    HomePage,
    ListaOperacionesPage,
    SideMenu
  ],
  imports: [
    BrowserModule,
    HttpModule,
    IonicModule.forRoot(MyApp),
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    HomePage,
    ListaOperacionesPage,
    SideMenu
  ],
  providers: [
    StatusBar,
    SplashScreen,
    Storage,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    LoginProvider,
    OperacionesProvider
  ]
})
export class AppModule {}
