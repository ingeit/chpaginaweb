var mysql = require('mysql');
var env    = process.env.NODE_ENV || 'database',
    databaseConfig = require('./../config/' + env + '.js');

var connection = mysql.createConnection({
  host     : databaseConfig.host,
  user     : databaseConfig.user,
  password : databaseConfig.password,
  database : databaseConfig.database,
//   timezone : 'utc'
});

exports.getOperaciones = function(fn){
    connection.query('call operacion_listar_dia()', function(err, rows){  
                if (err) fn (err);  
                fn(rows[0]); 
            });
}

exports.getOperacionesPorFecha = function(fechaInicio,fechaFin,fn){
    connection.query('call operacion_listar_rango('+fechaInicio+','+fechaFin+')', function(err, rows){  
                if (err) fn (err);  
                fn(rows[0]); 
            });
}

exports.dameOperacion = function(idOperacion,fn){
    connection.query('call operacion_dame('+idOperacion+')', function(err, rows){  
                if (err) fn (err);  
                fn(rows[0]); 
            });
}


exports.getFechas = function(fn){
    connection.query('call dame_fechas()', function(err, rows){  
                if (err) fn (err);  
                fn(rows[0]); 
            });
}

exports.getComisiones = function(fn){
    connection.query('call dame_comisiones()', function(err, rows){  
                if (err) fn (err);  
                fn(rows[0]); 
            });
}

exports.operacionNueva = function(oDniProfesional,oApellidoProfesional,oNombreProfesional,oMailProfesional,
        oDniCliente,oApellidoCliente,oNombreCliente,oTelefonoCliente,oMailCliente,oTarjeta,oImporteVenta,
        oImporteCobrar,oCuotas,oImporteCarga,oImporteCuota,oCodigoAuto,oCupon,fn){
        //     console.log(oDniProfesional,oApellidoProfesional,oNombreProfesional,oMailProfesional,
        // oDniCliente,oApellidoCliente,oNombreCliente,oTelefonoCliente,oMailCliente,oTarjeta,oImporteVenta,
        // oImporteCobrar,oCuotas,oImporteCarga,oImporteCuota,oCodigoAuto,oCupon);
    connection.query('call operacion_nueva('+oDniProfesional+','+oApellidoProfesional+','+oNombreProfesional+','+oMailProfesional+','+
        oDniCliente+','+oApellidoCliente+','+oNombreCliente+','+oTelefonoCliente+','+oMailCliente+','+oTarjeta+','+oImporteVenta+','+
        oImporteCobrar+','+oCuotas+','+oImporteCarga+','+oImporteCuota+','+oCodigoAuto+','+oCupon+')', function(err, rows){  
                if (err) fn (err);  
                fn(rows[0]); 
            });
}