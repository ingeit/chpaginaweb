import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import * as XLSX from 'xlsx';
import { OperacionesProvider } from '../../providers/operaciones/operaciones';

type AOA = any[][];

@Component({
  selector: 'page-conciliar',
  templateUrl: 'conciliar.html',
})
export class ConciliarPage {
  data: any[][];
  opDB: any;
  opExcel: any;
  opConciliadas: any = [];
  constructor(public navCtrl: NavController,
    public navParams: NavParams,
    private opPrv: OperacionesProvider) {

  }

  /* File Input element for browser */
  onFileChange(evt: any) {
    this.opPrv.obtenerOpNoConciliadas()
      .then(res => {
        this.opDB = res;
        console.log('​ConciliarPage -> onFileChange -> this.opDB', this.opDB);
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
          console.log("no hay op para conciliar")
        }
      })
      .catch(err => {
        console.log('​CoinciliarPage -> obtenerOpNoConciliadas -> err', err);
      })
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

  }

  cambiarEstado() {
    for (let o of this.opDB) {
      let fila = this.opExcel.find((fila) => {
        return fila.idOperacion === o.idOperacion;
      });
      // si fila es undefined es porq no se encontro nada en el find, entonces primero corroboro q no sea eso..
      if (fila) {
        //no es undefined, entocnes podemos leer la propiedad de los objetos porq existe fila..
        // liquidacion es un string en caso q haya y undefined si no esta conciliada en el excel
        if (fila.liquidacion) {
          this.opConciliadas.push(fila.idOperacion);
        }
      }
    }
    console.log('​ConciliarPage -> cambiarEstado ->  this.opConciliadas',  this.opConciliadas);
  }


}