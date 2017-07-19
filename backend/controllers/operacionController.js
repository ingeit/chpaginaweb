var operacion = require('./../models/operaciones');
var fechas = require('./../models/operaciones');
var comisiones = require('./../models/operaciones');

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

exports.operacionNueva = function(req, res, next){
    TINYINT,  DECIMAL(10,2),
     DECIMAL(10,2),  INT,  INT
    
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

