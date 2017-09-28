import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { ProfesionalesProvider } from '../../providers/profesionales/profesionales';
import { FormProfesionalPage } from '../form-profesional/form-profesional';

/**
 * Generated class for the ListarProfesionalesPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-listar-profesionales',
  templateUrl: 'listar-profesionales.html',
})
export class ListarProfesionalesPage {

  public listaProfesionales:any;
  public listaProfesionalesBusqueda:any;
  public searchTerm: any = '';
  public paginationInfo:any = {
    page: 20,
    pageSize: 50,
    rowCount: 50,
    pageCount: 20,
  }

  constructor(public navCtrl: NavController, 
              public profesionalesProvider:ProfesionalesProvider,
              public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ListarProfesionalesPage');
    this.profesionalesProvider.obtenerProfesionales().then((data)=>{
      this.listaProfesionales = data;
      for(let p of this.listaProfesionales){
        p.apellido = p.apellido+' '+p.nombre;
      }
      this.listaProfesionalesBusqueda = this.listaProfesionales;
    }); 
  }

  setFilteredItems() {
    if(this.searchTerm.length > 2){
      if(isNaN(this.searchTerm)){
        console.log('no es un numoero')
        
        this.listaProfesionalesBusqueda = this.listaProfesionales.filter((item) => {
          // IndexOf() devuelvo la passicion de letra que esta buscando, entonces si yo
          // hago === 0 significa que le digo que quiero que me devuelvas todos los valores
          // donde el appellido comienze con R.
          // si por ejemplo hago > -1 hago que donde encuentre la coincidencia lo devuelva
          // osea que si un apellido es juarez, y aprieto la R lo va a devolver.
          return item.apellido.toLowerCase().indexOf(this.searchTerm.toLowerCase()) > -1;
        
        });
      }else{
        console.log('es un numoero')
        this.listaProfesionalesBusqueda = this.listaProfesionales.filter((item) => {
          return item.dni.toString().indexOf(this.searchTerm) === 0;
        }); 
      }
    }else{
      this.listaProfesionalesBusqueda = this.listaProfesionales.filter((item) => {
        return item.apellido.toLowerCase().indexOf('') > -1;
      });
    }
  }

  irDetalles(p){
    this.navCtrl.push(FormProfesionalPage)
  }

}
