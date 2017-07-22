import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';
import { SplashScreen } from '@ionic-native/splash-screen';
import { StatusBar } from '@ionic-native/status-bar';
import { HttpModule} from '@angular/http';
import { MyApp } from './app.component';
import { HomePage } from '../pages/home/home';
import { FormularioWebPage } from '../pages/formulario-web/formulario-web';
import { FormularioWebPaso2Page } from '../pages/formulario-web-paso2/formulario-web-paso2';
import { FormularioProvider } from '../providers/formulario/formulario';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { OperacionesProvider } from '../providers/operaciones/operaciones';
import { IonicImageViewerModule } from 'ionic-img-viewer';

@NgModule({
  declarations: [
    MyApp,
    HomePage,
    FormularioWebPage,
    FormularioWebPaso2Page
  ],
  imports: [
    BrowserModule,
    HttpModule,
    IonicImageViewerModule,
    IonicModule.forRoot(MyApp, {
      backButtonText: 'Ir Atras',
      mode: "md",
      iconMode: 'md',
      modalEnter: 'modal-slide-in',
      modalLeave: 'modal-slide-out',
      tabsPlacement: 'bottom',
      pageTransition: 'md-transition',
      monthNames: ['Enero', 'Febrero', 'Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
      monthShortNames: ['Ene', 'Feb', 'Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic'],
    }),
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    HomePage,
    FormularioWebPage,
    FormularioWebPaso2Page
  ],
  providers: [
    StatusBar,
    SplashScreen,
    InAppBrowser,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    FormularioProvider,
    OperacionesProvider
  ]
})
export class AppModule {}
