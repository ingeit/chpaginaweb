import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { HttpModule } from '@angular/http';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { TooltipsModule } from 'ionic-tooltips';
import { NgxPaginationModule } from 'ngx-pagination';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';


//Pages
import { MyApp } from './app.component';
import { HomePage } from '../pages/home/home';
import { SideMenu } from '../pages/sideMenu/sideMenu';
import { ListaOperacionesPage } from '../pages/lista-operaciones/lista-operaciones';
import { VerOperacionPage } from '../pages/ver-operacion/ver-operacion';
import { ListarProfesionalesPage } from '../pages/listar-profesionales/listar-profesionales';
import { FormProfesionalPage } from '../pages/form-profesional/form-profesional';
import { DashboardPage } from '../pages/dashboard/dashboard';
import { CalendarioPage } from '../pages/calendario/calendario';
import { TarjetasPage } from '../pages/tarjetas/tarjetas';
import { FormTarjetaPage } from '../pages/form-tarjeta/form-tarjeta';
import { FormModificarTarjetaPage } from '../pages/form-modificar-tarjeta/form-modificar-tarjeta';
import { NuevaOperacionPaso2Page } from '../pages/nueva-operacion-paso2/nueva-operacion-paso2'

// Providers
import { Storage } from '@ionic/storage';
import { LoginProvider } from '../providers/login/login';
import { OperacionesProvider } from '../providers/operaciones/operaciones';
import { ProfesionalesProvider } from '../providers/profesionales/profesionales';
import { FechasHabilesProvider } from '../providers/fechas-habiles/fechas-habiles';
import { TarjetasProvider } from '../providers/tarjetas/tarjetas';



@NgModule({
  declarations: [
    MyApp,
    HomePage,
    ListaOperacionesPage,
    VerOperacionPage,
    SideMenu,
    DashboardPage,
    ListarProfesionalesPage,
    FormProfesionalPage,
    CalendarioPage,
    TarjetasPage,
    FormTarjetaPage,
    FormModificarTarjetaPage,
    NuevaOperacionPaso2Page
  ],
  imports: [
    BrowserModule,
    HttpModule,
    NgxPaginationModule,
    TooltipsModule,
    ReactiveFormsModule,
    IonicModule.forRoot(MyApp, {
      backButtonText: 'Ir Atras',
      mode: "md",
      iconMode: 'md',
      modalEnter: 'modal-slide-in',
      modalLeave: 'modal-slide-out',
      tabsPlacement: 'bottom',
      pageTransition: 'md-transition',
      monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
      monthShortNames: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
      dayNames: ['Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado'],
      dayShortNames: ['Dom', 'Lun', 'Mar', 'Mie', 'Jue', 'Vie', 'Sab'],

    }),
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    HomePage,
    ListaOperacionesPage,
    VerOperacionPage,
    DashboardPage,
    ListarProfesionalesPage,
    FormProfesionalPage,
    SideMenu,
    CalendarioPage,
    TarjetasPage,
    FormTarjetaPage,
    FormModificarTarjetaPage,
    NuevaOperacionPaso2Page
  ],
  providers: [
    StatusBar,
    SplashScreen,
    InAppBrowser,
    Storage,
    { provide: ErrorHandler, useClass: IonicErrorHandler },
    LoginProvider,
    OperacionesProvider,
    ProfesionalesProvider,
    FechasHabilesProvider,
    TarjetasProvider
  ]
})
export class AppModule { }
