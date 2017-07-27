var operacion = require('./../models/operaciones');
var fechas = require('./../models/operaciones');
var comisiones = require('./../models/operaciones');
var nodemailer = require('nodemailer');
var dateformat = require('dateformat');

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
            console.log(consulta);
            if(consulta[0].codigo >= 1){
                var respuesta = consulta[0];
                var oFechaTransaccion = respuesta.fechaTransaccion;
                var oFechaPago = respuesta.fechaPago;
                var oIdOperacion = respuesta.codigo;
                email('profesional',req.body,oIdOperacion,oFechaTransaccion,oFechaPago,function(res1){
                    console.log("enviando mail desde operacion nueva: ", res1);
                    console.log("mail cliente = ",req.body.mailCliente);
                     if(req.body.mailCliente != ''){
                         console.log("mail cliente no es vacio, mandando mail");
                        email('cliente',req.body,oIdOperacion,oFechaTransaccion,oFechaPago,function(res2){
                            console.log("enviando mail desde operacion nueva: ", res2);
                            let response = {
                                'mysql' : consulta,
                                'mailProfesional' : res1,
                                'mailCliente' : res2
                            };
                            console.log(response);
                            res.json(response);
                        }); 
                    }else{
                        console.log("mail cliente vacio.. no se manda mail.. respondiendo solo mysql y mail prof");
                        let response = {
                            'mysql' : consulta,
                            'mailProfesional' : res1,
                            'mailCliente' : 'error'
                        };
                        res.json(response);
                    }
                    
                });
            }else{
                consulta = {'mysql' : consulta };
                res.json(consulta);
            }
            
        });
}

exports.excel = function(req, res, next){
    var nodeExcel=require('excel-export');
    var conf={}; //lleva la configuarcion de las columnas y filas
    arr=[]; // array donde se generan las filas
    var fechaInicio = '"'+req.params.fechaInicio+'"';
    var fechaFin = '"'+req.params.fechaFin+'"';
    conf.cols=[{
            caption:'DNI/CUIT Profesional',
            type:'number',
            width:101
        },
        {
            caption:'Fecha Transaccion',
            type:'string',
            width:90
        },
        {
            caption:'Fecha de Pago',
            type:'string',
            width:90
        },
        {
            caption:'DNI Cliente',
            type:'number',
            width:60
        },
        {
            caption:'APELLIDO Cliente',
            type:'string',
            width:90
        },
        {
            caption:'NOMBRE Cliente',
            type:'string',
            width:90
        },
        {
            caption:'Tarjeta',
            type:'string',
            width:45
        },
        {
            caption:'Importe de Venta',
            type:'number',
            width:85
        },
        {
            caption:'',
            type:'number',
            width:85
        },
        {
            caption:'Importe a Cobrar',
            type:'number',
            width:85
        },
        {
            caption:'Comision Profesional',
            type:'number',
            width:105
        },
        {
            caption:'COD AUTO N°',
            type:'number',
            width:70
        },
        {
            caption:'CUPON N°',
            type:'number',
            width:60
        },
        {
            caption:'Cuotas',
            type:'number',
            width:40
        },
        {
            caption:'Importe a Cargar',
            type:'number',
            width:85
        },
        {
            caption:'Importe Cuota',
            type:'number',
            width:75
        },
        {
            caption:'',
            type:'string',
            width:75
        },
        {
            caption:'',
            type:'string',
            width:75
        },
        {
            caption:'Cod Interno',
            type:'number',
            width:75
        },
        {
            caption:'',
            type:'string',
            width:75
        },
        {
            caption:'',
            type:'string',
            width:75
        },
        {
            caption:'',
            type:'string',
            width:75
        },
        {
            caption:'',
            type:'string',
            width:75
        },
        {
            caption:'',
            type:'string',
            width:75
        },
        {
            caption:'',
            type:'string',
            width:75
        },
        {
            caption:'',
            type:'string',
            width:75
        },
        {
            caption:'',
            type:'string',
            width:75
        },
        
        {
            caption:'Mail Cliente',
            type:'string',
            width:110
        },
        {
            caption:'Tel Cliente',
            type:'string',
            width:55
        },
        ];
        
    operacion.getOperacionesPorFecha(fechaInicio,fechaFin,function(consulta){
        let operaciones = consulta;
        console.log(operaciones);
        for(i=0;i <operaciones.length;i++){
          codInterno = operaciones[i].idOperacion;
          cuit = operaciones[i].dniProfesional;
          fechaTransaccion = operaciones[i].fechaTransaccion;
          fechaPago = operaciones[i].fechaPago;
          dniCliente = operaciones[i].dniCliente;
          apellidoCliente = operaciones[i].apellidoCliente;
          nombreCliente = operaciones[i].nombreCliente;
          tarjeta = operaciones[i].tarjeta;
          importeVenta = operaciones[i].importeVenta;
          importeCobrar = operaciones[i].importeCobrar;
          importeVenta = parseFloat(importeVenta);
          importeCobrar = parseFloat(importeCobrar);
          comision  = importeVenta - importeCobrar;
          codigoAuto = operaciones[i].codigoAuto;
          cupon = operaciones[i].cupon;
          cuotas = operaciones[i].cuotas;
          importeCarga = operaciones[i].importeCarga;
          importeCuota = operaciones[i].importeCuota;
          mailCliente = operaciones[i].mailCliente;
          telefonoCliente = operaciones[i].telefonoCliente;

          fechaTransaccion = new Date(fechaTransaccion.getUTCFullYear(),
                              fechaTransaccion.getUTCMonth(),
                              fechaTransaccion.getUTCDate(),
                              fechaTransaccion.getUTCHours(),
                              fechaTransaccion.getUTCMinutes(),
                              fechaTransaccion.getUTCSeconds());

         fechaTransaccion = dateformat(fechaTransaccion,'dd/mm/yyyy H:MM');

         fechaPago = new Date(fechaPago.getUTCFullYear(),
                              fechaPago.getUTCMonth(),
                              fechaPago.getUTCDate(),
                              fechaPago.getUTCHours(),
                              fechaPago.getUTCMinutes(),
                              fechaPago.getUTCSeconds());

         fechaPago = dateformat(fechaPago,'dd/mm/yyyy');

          a=[cuit,fechaTransaccion,fechaPago,dniCliente,apellidoCliente,nombreCliente,tarjeta,importeVenta,3,importeCobrar,comision,codigoAuto,cupon,cuotas,importeCarga,importeCuota,'','',codInterno,'','','','','','','','',mailCliente,telefonoCliente,];
          arr.push(a);
        }

        conf.rows=arr; // armo el excel con todos los datos.

        var result=nodeExcel.execute(conf);
        res.setHeader('Content-Type','application/vnd.openxmlformates');
        res.setHeader("Content-Disposition","attachment;filename="+"Operaciones.xlsx");
        res.end(result,'binary');
    });  
}

var email = function (destino,operacion,oIdOperacion,oFechaTransaccion,oFechaPago,fn) {
    
    var oDniProfesional = operacion.dniProfesional;
    var oApellidoProfesional = operacion.apellidoProfesional;
    var oNombreProfesional = operacion.nombreProfesional;
    var oMailProfesional = operacion.mailProfesional;
    var oDniCliente = operacion.dniCliente;
    var oApellidoCliente = operacion.apellidoCliente;
    var oNombreCliente = operacion.nombreCliente;
    var oTelefonoCliente = operacion.telefonoCliente;
    var oMailCliente = operacion.mailCliente;
    var oTarjeta = operacion.tarjeta;
    var oImporteVenta = operacion.importeVenta;
    var oImporteCobrar = operacion.importeCobrar;
    var oCuotas = operacion.cuotas;
    var oImporteCarga = operacion.importeCarga;
    var oImporteCuota = operacion.importeCuota;
    var oCodigoAuto = operacion.codigoAuto;
    var oCupon = operacion.cupon;
    

    var pdf = require('html-pdf');
    // fs lee archivos
    var fs = require('fs');
    // embedd js para escribiri variables en html

    data = {
        'fechaImpresion': oFechaTransaccion,
        'dni': oDniProfesional,
        'apellido': oApellidoProfesional,
        'nombre': oNombreProfesional,
        'numOperacion': oIdOperacion,
        'mail': oMailProfesional,
        'cuitProfesional': oDniProfesional,
        'fechaPago': oFechaPago,
        'dniCliente': oDniCliente,
        'apellidoCliente': oApellidoCliente,
        'nombreCliente': oNombreCliente,
        'tarjeta': oTarjeta,
        'honorariosProfesional': oImporteVenta,
        'montoAcreditado': oImporteCobrar,
        'cuotas': oCuotas,
        'importeCuota': oImporteCuota,
        'codigoAuto': oCodigoAuto,
        'cupon': oCupon,
        'mailCliente': oMailCliente,
    }

    config = {
        "format": "A4",        // allowed units: A3, A4, A5, Legal, Letter, Tabloid 
        "orientation": "portrait", // portrait or landscape  
        "zoomFactor": "1",
        "base": 'file:///home/backend/img/'
    }   

    switch(destino) {
        case 'profesional':
            var ejs = require('ejs')
            , path = '/home/backend/views/tamplateProfesional.ejs'
            , str = fs.readFileSync(path, 'utf8');
            var html = ejs.render(str,data);
            break;
        case 'cliente':
            var ejs = require('ejs')
            , path = '/home/backend/views/tamplateCliente.ejs'
            , str = fs.readFileSync(path, 'utf8');
            var html = ejs.render(str,data);
            break;
        default:
    } 
    
  	var transporter = nodemailer.createTransport({
        host: 'xw000111.ferozo.com',
        port: 587,
        secure: false,
        auth: {
            user: 'op@clubhonorarios.com',
            pass: 'Astrid2017'
        }
        //  user: 'chonorarios@gmail.com',
        //  pass: 'ramiro123'
    });


    pdf.create(html, config).toStream(function(err, stream){
    switch(destino) {
        case 'profesional':
            var mailOptions = {
                from: 'Club Honorarios <op@clubhonorarios.com>', //grab form data from the request body object
                to: oMailProfesional,
                bcc: 'ricardobruno_89@hotmail.com',
                // bcc: 'masterk63@gmail.com'+','+'ricardobruno_89@hotmail.com',// fl@clubhonorarios.com , diego.macian@soramus.com
                subject: 'Comprobante de Operacion Numero '+oIdOperacion,
                text: 'Profesional: Se adjunto el comprobante de pago numero: '+oIdOperacion+' en formato PDF',
                attachments: [
                {   // stream as an attachment
                    // formato de nombre:
                    // Prof (nombre del profesional) - Cl (nombre del cliente) - Op (nro de la Operación correlativa que habría q definir por ejemplo desde 50.001) - fecha operación (dd-mm-aaaa). pdf
                    filename: 'Prof '+oApellidoProfesional.toUpperCase()+' '+oNombreProfesional+' - Cl '+oApellidoCliente.toUpperCase()+' '+oNombreCliente+' - Op '+oIdOperacion+' - '+oFechaTransaccion+'.pdf',
                    content: stream
                }],
            };
            break;
        case 'cliente':
            var mailOptions = {
                from: 'Club Honorarios <op@clubhonorarios.com>', //grab form data from the request body object
                to: oMailCliente,
                // bcc: 'masterk63@gmail.com'+','+'ricardobruno_89@hotmail.com',// fl@clubhonorarios.com , diego.macian@soramus.com
                bcc: 'rbrunount@gmail.com',
                subject: 'Comprobante de Operacion Numero '+oIdOperacion,
                text: 'Titular de la tarjeta: Se adjunto el comprobante de pago numero: '+oIdOperacion+' en formato PDF',
                attachments: [
                {   // stream as an attachment
                    // formato de nombre:
                    // Prof (nombre del profesional) - Cl (nombre del cliente) - Op (nro de la Operación correlativa que habría q definir por ejemplo desde 50.001) - fecha operación (dd-mm-aaaa). pdf
                    filename: 'Cl '+oApellidoCliente.toUpperCase()+' '+oNombreCliente+' - Prof '+oApellidoProfesional.toUpperCase()+' '+oNombreProfesional+' - Op '+oIdOperacion+' - '+oFechaTransaccion+'.pdf',
                    content: stream
                }],
            };
            break;
        default:
    }        
    transporter.sendMail(mailOptions,function(error, info){
        if(error){
            fn('error');
        }else{
            fn(info.response);
        };
      });
    });
}

exports.pdf = function(req, res, next){
    var pdf = require('html-pdf');
    // fs lee archivos
    var fs = require('fs');
    // embedd js para escribiri variables en html
    var ejs = require('ejs')
        // , path = __dirname + '/../views/tamplateProfesional.ejs'
        , path = '/home/backend/views/tamplateProfesional.ejs'
        , str = fs.readFileSync(path, 'utf8');

    console.log(path);

    data = {
        'fechaImpresion': 'hola',
        'dni': 'hola',
        'apellido': 'hola',
        'nombre': 'hola',
        'telefono': 'hola',
        'numOperacion': 'hola',
        'mail': 'hola',
        'cuitProfesional': 'hola',
        'fechaPago': 'hola',
        'dniCliente': 'hola',
        'apellidoCliente': 'hola',
        'nombreCliente': 'hola',
        'tarjeta': 'hola',
        'honorariosProfesional': 'hola',
        'montoAcreditado': 'hola',
    }
    var html = ejs.render(str,data);
    
    config = {
        "format": "A4",        // allowed units: A3, A4, A5, Legal, Letter, Tabloid 
        "orientation": "portrait", // portrait or landscape  
        "zoomFactor": "1",
        "base": 'file:///home/backend/img/'
    }   

    pdf.create(html, config).toStream(function(err, stream){
        res.setHeader('Content-Type', 'application/pdf');
        res.setHeader('Content-Disposition', 'attachment; filename=quote.pdf');
        stream.pipe(res);
    });
}


exports.crash = function(req, res, next){
    operacion.crash(function(consulta){
        res.json(consulta);
    });
}
