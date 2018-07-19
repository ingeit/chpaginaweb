import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule, LOCALE_ID } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { HttpModule } from '@angular/http';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { TooltipsModule } from 'ionic-tooltips';
import { NgxPaginationModule } from 'ngx-pagination';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { registerLocaleData } from '@angular/common';
import localeEs from '@angular/common/locales/es-AR';
registerLocaleData(localeEs, 'es-AR');


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
import { NuevaOperacionModalPage } from '../pages/nueva-operacion-modal/nueva-operacion-modal'
import { CajaPage } from '../pages/caja/caja';

// Providers
import { Storage } from '@ionic/storage';
import { LoginProvider } from '../providers/login/login';
import { OperacionesProvider } from '../providers/operaciones/operaciones';
import { ProfesionalesProvider } from '../providers/profesionales/profesionales';
import { FechasHabilesProvider } from '../providers/fechas-habiles/fechas-habiles';
import { TarjetasProvider } from '../providers/tarjetas/tarjetas';
import { CajaProvider } from '../providers/caja/caja';

//MATERIAL
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
//Table Materialize
import { MatTableModule } from '@angular/material/table';
import { MatPaginatorModule } from '@angular/material/paginator';
import { MatPaginatorIntl, MatCheckboxModule } from '@angular/material';
import { MatSortModule } from '@angular/material/sort';

//Date Materialize
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatNativeDateModule } from '@angular/material';

//Form Input Material
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material';

//Tabs Material
import { MatTabsModule } from '@angular/material/tabs';

//Button 
import { MatButtonModule } from '@angular/material/button';


//Icon
import { MatIconModule } from '@angular/material/icon';

//SideNavBar
import { MatSidenavModule } from '@angular/material/sidenav';

//Chip
import { MatChipsModule } from '@angular/material/chips';

//ToolTip
import { MatTooltipModule } from '@angular/material/tooltip';

import { MAT_DATE_LOCALE } from '@angular/material';



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
    NuevaOperacionPaso2Page,
    NuevaOperacionModalPage,
    CajaPage
  ],
  imports: [
    MatTableModule,
    MatSidenavModule,
    MatFormFieldModule,
    MatInputModule,
    MatTooltipModule,
    MatIconModule,
    MatSortModule,
    MatChipsModule,
    MatCheckboxModule,
    MatTabsModule,
    MatDatepickerModule,
    MatNativeDateModule,
    MatPaginatorModule,
    MatButtonModule,
    BrowserModule,
    HttpModule,
    NgxPaginationModule,
    BrowserAnimationsModule,
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
    NuevaOperacionPaso2Page,
    CajaPage
  ],
  providers: [
    StatusBar,
    SplashScreen,
    InAppBrowser,
    Storage,
    { provide: ErrorHandler, useClass: IonicErrorHandler },
    { provide: MAT_DATE_LOCALE, useValue: 'es-ES' },
    { provide: LOCALE_ID, useValue: 'es-AR' },
    LoginProvider,
    OperacionesProvider,
    ProfesionalesProvider,
    FechasHabilesProvider,
    TarjetasProvider,
    CajaProvider,
  ]
})
export class AppModule { }
