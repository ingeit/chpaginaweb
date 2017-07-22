var operacion = require('./../models/operaciones');
var fechas = require('./../models/operaciones');
var comisiones = require('./../models/operaciones');
var nodemailer = require('nodemailer');

exports.getOperaciones = function(req, res, next){
    operacion.getOperaciones(function(consulta){
        res.json(consulta);
    });
}

exports.getOperacionesPorFecha = function(req, res, next){
    var fechaInicio = '"'+req.body.fechaInicio+'"';
    var fechaFin = '"'+req.body.fechaFin+'"';
    operacion.getOperacionesPorFecha(fechaInicio,fechaFin,function(consulta){
        res.json(consulta);
    });
}

exports.getFechas = function(req, res, next){
    fechas.getFechas(function(consulta){
        res.json(consulta);
    });
}

exports.getComisiones = function(req, res, next){
    comisiones.getComisiones(function(consulta){
        res.json(consulta);
    });
}

exports.dameOperacion = function(req, res, next){
    console.log("dentro de controller nodjs "+req.body.idOperacion);
    var idOperacion = req.body.idOperacion;
    operacion.dameOperacion(idOperacion,function(consulta){
        res.json(consulta);
    });
}



exports.operacionNueva = function(req, res, next){
    
    var oDniProfesional = req.body.dniProfesional;
    var oApellidoProfesional = '"'+req.body.apellidoProfesional+'"';
    var oNombreProfesional = '"'+req.body.nombreProfesional+'"';
    var oMailProfesional = '"'+req.body.mailProfesional+'"';
    var oDniCliente = req.body.dniCliente;
    var oApellidoCliente = '"'+req.body.apellidoCliente+'"';
    var oNombreCliente = '"'+req.body.nombreCliente+'"';
    var oTelefonoCliente = '"'+req.body.telefonoCliente+'"';
    var oMailCliente = '"'+req.body.mailCliente+'"';
    var oTarjeta = '"'+req.body.tarjeta+'"';
    var oImporteVenta = req.body.importeVenta;
    var oImporteCobrar = req.body.importeCobrar;
    var oCuotas = req.body.cuotas;
    var oImporteCarga = req.body.importeCarga;
    var oImporteCuota = req.body.importeCuota;
    var oCodigoAuto = req.body.codigoAuto;
    var oCupon = req.body.cupon;



    operacion.operacionNueva(oDniProfesional,oApellidoProfesional,oNombreProfesional,oMailProfesional,
        oDniCliente,oApellidoCliente,oNombreCliente,oTelefonoCliente,oMailCliente,oTarjeta,oImporteVenta,
        oImporteCobrar,oCuotas,oImporteCarga,oImporteCuota,oCodigoAuto,oCupon,function(consulta){
        res.json(consulta);
    });
}

exports.excel = function(req, res, next){
    var nodeExcel=require('excel-export');
    var conf={}; //lleva la configuarcion de las columnas y filas
    arr=[]; // array donde se generan las filas
    var fechaInicio = '"'+req.params.fechaInicio+'"';
    var fechaFin = '"'+req.params.fechaFin+'"';
    conf.cols=[{
            caption:'Sl.',
            type:'number',
            width:3
        },
        {
            caption:'Job',
            type:'string',
            width:50
        },
        {
            caption:'Date',
            type:'string',
            width:15
        }
        ];
        
    operacion.getOperacionesPorFecha(fechaInicio,fechaFin,function(consulta){
        let operaciones = consulta;

        for(i=0;i <operaciones.length;i++){
          idOperacion = operaciones[i].idOperacion;
          apellidoProfesional = operaciones[i].apellidoProfesional;
          nombreProfesional = operaciones[i].nombreProfesional;
          a=[idOperacion,apellidoProfesional,nombreProfesional];
          arr.push(a);
        }

        conf.rows=arr; // armo el excel con todos los datos.

        var result=nodeExcel.execute(conf);
        res.setHeader('Content-Type','application/vnd.openxmlformates');
        res.setHeader("Content-Disposition","attachment;filename="+"Operaciones.xlsx");
        res.end(result,'binary');
    });  
}

exports.email = function (req, res) {
    var pdf = require('html-pdf');
    var fs = require('fs');
    
    var html = '<h3>hola</h3><p>chau</p>'

  	var transporter = nodemailer.createTransport({
        host: 'smtp.gmail.com', // mail.clubhonorarios.com
        port: 587,
        // opportunisticTLS: true,
        // secure: false, // secure:true for port 465, secure:false for port 587
        // auth: {
        //     user: 'op@clubhonorarios.com', // chonorarios@gmail.com -- ramiro123
        //     pass: 'Astrid2017' // Your password
        // }
        auth: {
             user: 'chonorarios@gmail.com', // chonorarios@gmail.com -- ramiro123
            pass: 'ramiro123' // Your password
        }
    });

    pdf.create(html).toStream(function(err, stream){
      var mailOptions = {
        from: 'Club Honorarios <ch@clubhonorarios.com>', //grab form data from the request body object
        to: 'rbrunount@gmail.com',
        subject: 'PDF',
        text: 'holaaa node cuerpo!!!',
        attachments: [
          {   // stream as an attachment
              filename: 'ejemplo.pdf',
              content: stream
          }],
       };
      transporter.sendMail(mailOptions,function(error, info){
        if(error){
            console.log(error);
            res.json({yo: 'error'});
        }else{
            console.log('Message sent: ' + info.response);
            res.json({yo: info.response});
        };
      });
    });
}



exports.pdf = function(req, res, next){
    var pdf = require('html-pdf');
    var fs = require('fs');
    
    var html = 
    `<!doctype html>
    <html lang="en">
    <head>
        <meta charset="utf-8">

        <title>The HTML5 Herald</title>
        <meta name="description" content="The HTML5 Herald">
        <meta name="author" content="SitePoint">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>

    <body>
 
        <div class="container-fluid navbar-default">
          <div class="navbar-header">
            <a class="navbar-brand" href="#">
              <img alt="Brand" src="http://clubhonorarios.com/img/logo/logo-max.png">
            </a>
          </div>
        </div>
   ]
        <div class="container-fluid contenedorCentro">
            <div class="row centrado tabla">
              <div class="panel panel-default">
                <div class="panel-heading">Datos de Transaccion</div>
                <div class="panel-body">
                  <table class="table">
                    <tbody>
                        <tr>
                        <th>CUIT Profesional</th>
                            <td>20341591814</td>
                        </tr>
                        <tr>
                        <th>Fecha Transaccion</th>
                            <td>20/12/2017</td>
                        </tr>
                        <tr>
                        <th>Fecha de Pago</th>
                            <td>25/12/2017</td>
                        </tr>
                        <tr>
                          <th>DNI Cliente</th>
                            <td>35953451</td>
                        </tr>
                          <tr>
                        <th>APELLDIO Cliente</th>
                            <td>Bruno</td>
                        </tr>
                        <tr>
                        <th>Nombre Cliente</th>
                            <td>Ricardo</td>
                        </tr>
                        <tr>
                        <th>Tarjeta</th>
                            <td>VISA</td>
                        </tr>
                        <tr>
                          <th>Honorarios Profesional</th>
                            <td>$ 1000</td>
                        </tr>
                        <tr>
                          <th>Monto Acreditado</th>
                            <td>$ 950</td>
                        </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
        </div>

        <style> 
          .tabla{
            max-width: 400px;
          }
          	.contenedorCentro {
              position: absolute;
              display: table;
              height: 100%;
              width: 100%;
              text-align: center;
            }
            .centrado {
              display: table-cell;
              vertical-align: middle;
            }

            html {
              height: 100%;
            }
            body {
              min-height: 100%;
            }

            .navbar-default {
                min-height: 95px;
                background-color: #002775;
                border-color: #002775;
            }
        </style>
    </body>
    </html>`;
    
    config = {
  "format": "A4",        // allowed units: A3, A4, A5, Legal, Letter, Tabloid 
  "orientation": "portrait", // portrait or landscape 
 
 
  "header": {
    "height": "45mm",
    "contents": '<div style="text-align: center;">Author: Marc Bachmann</div>'
  },

  // Zooming option, can be used to scale images if `options.type` is not pdf 
  "zoomFactor": "1", // default is 1 
 
}

    pdf.create(html, config).toStream(function(err, stream){
        res.setHeader('Content-Type', 'application/pdf');
        res.setHeader('Content-Disposition', 'attachment; filename=quote.pdf');
        stream.pipe(res);
    });
}
