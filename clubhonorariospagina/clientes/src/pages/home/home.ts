import { Component,ViewChild } from '@angular/core';
import { NavController } from 'ionic-angular';
import { FormularioWebPage } from '../formulario-web/formulario-web';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  @ViewChild('myCanvas') canvas: any;
  @ViewChild('imagen') imagen: any;
  canvasElement: any;
  imagenHTML: any;
  ctx:any;
  urlImagenCanvas:any;

  constructor(public navCtrl: NavController) {


  }

    ngAfterViewInit(){
        this.canvasElement = this.canvas.nativeElement;
        this.imagenHTML = this.imagen.nativeElement;
        this.ctx = this.canvasElement.getContext('2d');
    }

    escribrir(){
        this.canvasElement.width = this.imagenHTML.width;
        this.canvasElement.crossOrigin = "Anonymous";
        this.canvasElement.height = this.imagenHTML.height;
        this.ctx.font = "36pt Verdana";

            this.ctx.clearRect(0,0,this.canvasElement.width,this.canvasElement.height);
            this.ctx.drawImage(this.imagenHTML, 0, 0);
            this.ctx.fillStyle = "blue";
            this.ctx.fillText('kevin',200,120);
            this.ctx.fillText('34159181',200,220);
      console.log(this.canvasElement.toDataURL());
      this.urlImagenCanvas = this.canvasElement.toDataURL();
    }

  formularioWeb(){
    this.navCtrl.setRoot(FormularioWebPage);
  }

}
