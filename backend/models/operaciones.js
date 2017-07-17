var mysql = require('mysql');
var env    = process.env.NODE_ENV || 'database',
    databaseConfig = require('./../config/' + env + '.js');

var connection = mysql.createConnection({
  host     : databaseConfig.host,
  user     : databaseConfig.user,
  password : databaseConfig.password,
  database : databaseConfig.database,
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