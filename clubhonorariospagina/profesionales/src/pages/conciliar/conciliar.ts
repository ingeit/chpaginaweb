import { Component, ViewChild, ElementRef } from '@angular/core';
import { NavController, NavParams, LoadingController, ToastController } from 'ionic-angular';
import * as XLSX from 'xlsx';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';

//Table
import { MatTableModule, MatTableDataSource } from '@angular/material/table';
import { MatPaginatorModule } from '@angular/material/paginator';
import { MatSortModule, MatSort } from '@angular/material/sort';
import { SelectionModel } from '@angular/cdk/collections';

import { MatFormFieldModule } from '@angular/material/form-field';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatTabsModule } from '@angular/material/tabs';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';


// variable para conciliar
type AOA = any[][];

//para la tabla
export interface PeriodicElement {
  name: string;
  position: number;
  weight: number;
  symbol: string;
}

const ELEMENT_DATA: PeriodicElement[] = [
  { position: 1, name: 'Hydrogen', weight: 1.0079, symbol: 'H' },
  { position: 2, name: 'Helium', weight: 4.0026, symbol: 'He' },
  { position: 3, name: 'Lithium', weight: 6.941, symbol: 'Li' },
  { position: 4, name: 'Beryllium', weight: 9.0122, symbol: 'Be' },
  { position: 5, name: 'Boron', weight: 10.811, symbol: 'B' },
  { position: 6, name: 'Carbon', weight: 12.0107, symbol: 'C' },
  { position: 7, name: 'Nitrogen', weight: 14.0067, symbol: 'N' },
  { position: 8, name: 'Oxygen', weight: 15.9994, symbol: 'O' },
  { position: 9, name: 'Fluorine', weight: 18.9984, symbol: 'F' },
  { position: 10, name: 'Neon', weight: 20.1797, symbol: 'Ne' },
];

@Component({
  selector: 'page-conciliar',
  templateUrl: 'conciliar.html',
})
export class ConciliarPage {
  @ViewChild('inputFile') inputFile: ElementRef;

  loading: any;
  //conciliar excel
  data: any[][];
  opDB: any;
  opExcel: any;
  opConciliadas: any = [];

  //tabla
  displayedColumns: string[] = ['select', 'position', 'name', 'weight', 'symbol'];
  dataSource:any;
  selection: SelectionModel<PeriodicElement>;
  
  constructor(public navCtrl: NavController,
    public navParams: NavParams,
    private opPrv: OperacionesProvider,
    public loadingCtrl: LoadingController,
    private toastCtrl: ToastController) {
      this.obtenerOpNoConciliadas();
      this.dataSource = new MatTableDataSource<PeriodicElement>(ELEMENT_DATA);
      this.selection = new SelectionModel<PeriodicElement>(true, []);
  }

  obtenerOpNoConciliadas() {
    this.opPrv.obtenerOpNoConciliadas()
      .then(res => {
        this.opDB = res;
        console.log('​ConciliarPage -> onFileChange -> this.opDB', this.opDB);

      })
      .catch(err => {
        console.log('​CoinciliarPage -> obtenerOpNoConciliadas -> err', err);
      })
  }

  subirArchivo() {
    this.inputFile.nativeElement.click();
  }

  onFileChange(evt: any) {
    this.showLoader();
    if (this.opDB.length != 0) {
      /* wire up file reader */
      const target: DataTransfer = <DataTransfer>(evt.target);
      if (target.files.length !== 1) throw new Error('Cannot use multiple files');
      const reader: FileReader = new FileReader();
      reader.onload = (e: any) => {
        const bstr: string = e.target.result;
        this.read(bstr);
      };
      reader.readAsBinaryString(target.files[0]);
    } else {
      this.loading.dismiss();
      console.log("no hay op para conciliar")
    }
  }

  async read(bstr: string) {
    /* read workbook */
    const wb: XLSX.WorkBook = XLSX.read(bstr, { type: 'binary' });

    /* grab first sheet */
    const wsname: string = wb.SheetNames[2];
    const ws: XLSX.WorkSheet = wb.Sheets[wsname];

    /* save data */
    this.data = await <AOA>(XLSX.utils.sheet_to_json(ws, { header: 1 }));
    if (this.data) {
      this.opExcel = this.data.map(fila => {
        return {
          idOperacion: parseInt(fila[18].replace(',', '')),
          liquidacion: fila[30]
        }
      });
      this.opExcel.shift();
      console.log('​CoinciliarPage -> read -> opExcel', this.opExcel);
      this.cambiarEstado();
    }
    this.loading.dismiss();

  }

  cambiarEstado() {
    for (let i = 0; i < this.opDB.length; i++) {
      let fila = this.opExcel.find((fila) => {
        return fila.idOperacion === this.opDB[i].idOperacion;
      });
      // si fila es undefined es porq no se encontro nada en el find, entonces primero corroboro q no sea eso..
      if (fila) {
        //no es undefined, entocnes podemos leer la propiedad de los objetos porq existe fila..
        // liquidacion es un string en caso q haya y undefined si no esta conciliada en el excel
        if (fila.liquidacion) {
          this.opConciliadas.push(fila.idOperacion);
          this.opDB.splice(this.opDB.indexOf(this.opDB[i]), 1);
          i = i - 1;
        }
      }
    }
  }

  aceptarConciliar() {
    if (this.opConciliadas.length != 0) {
      // todo ok.. listo para ir a mysql
      this.opPrv.setConciliadas(this.opConciliadas.toString())
        .then(res => {
          console.log('​ConciliarPage -> cambiarEstado -> res', res);
          this.presentToast(res[0].mensaje, "toastConciliacion", false)
          this.opConciliadas = [];
        })
        .catch(err => {
          console.log('​ConciliarPage -> cambiarEstado -> err', err);
          this.presentToast("Error al conciliar operaciones", "toastErrorConciliacion", true)
        })
    } else {
      this.presentToast("No se encontraron nuevas conciliaciones", "toastNoConciliacion", false)
    }
    //elimino el archivo del input para volver a subir otro.
    this.inputFile.nativeElement.value = null;
    console.log('​ConciliarPage -> cambiarEstado ->  this.opConciliadas', this.opConciliadas);
  }

  // tabla
  isAllSelected() {
    const numSelected = this.selection.selected.length;
    const numRows = this.dataSource.data.length;
    return numSelected === numRows;
  }

  /** Selects all rows if they are not all selected; otherwise clear selection. */
  masterToggle() {
    this.isAllSelected() ?
      this.selection.clear() :
      this.dataSource.data.forEach(row => this.selection.select(row));
  }

  showLoader() {
    this.loading = this.loadingCtrl.create({
      content: 'Procesando información...'
    });
    this.loading.present();
  }

  presentToast(mensaje, clase, botonCerrar) {
    let duracion: number;
    (botonCerrar) ? duracion = 0 : duracion = 3000
    let toast = this.toastCtrl.create({
      message: mensaje,
      duration: duracion,
      position: 'middle',
      cssClass: clase,
      showCloseButton: botonCerrar,
      closeButtonText: "Cerrar"
    });

    toast.onDidDismiss(() => {
      console.log('Dismissed toast');
    });

    toast.present();
  }

}