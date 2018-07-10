import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import * as XLSX from 'xlsx';

type AOA = any[][];

@Component({
  selector: 'page-coinciliar',
  templateUrl: 'coinciliar.html',
})
export class CoinciliarPage {
  data: any[][];

  constructor(public navCtrl: NavController,
    public navParams: NavParams, ) {

  }

  read(bstr: string) {
    /* read workbook */
    const wb: XLSX.WorkBook = XLSX.read(bstr, { type: 'binary' });

    /* grab first sheet */
    const wsname: string = wb.SheetNames[2];
    const ws: XLSX.WorkSheet = wb.Sheets[wsname];

    /* save data */
    this.data = <AOA>(XLSX.utils.sheet_to_json(ws, { header: 1 }));
    let datos = this.data.map(fila => {
      return {
        id: parseInt(fila[18].replace(',','')),
        cupon: fila[30]
      }
    });
    console.log('​CoinciliarPage -> read -> datos', datos);

  };

  /* File Input element for browser */
  onFileChange(evt: any) {
    /* wire up file reader */
    const target: DataTransfer = <DataTransfer>(evt.target);
    if (target.files.length !== 1) throw new Error('Cannot use multiple files');
    const reader: FileReader = new FileReader();
    reader.onload = (e: any) => {
      const bstr: string = e.target.result;
      this.read(bstr);
    };
    reader.readAsBinaryString(target.files[0]);
  };

}