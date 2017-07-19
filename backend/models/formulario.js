var mysql = require('mysql');
var env    = process.env.NODE_ENV || 'database',
    databaseConfig = require('./../config/' + env + '.js');

var connection = mysql.createConnection({
  host     : databaseConfig.host,
  user     : databaseConfig.user,
  password : databaseConfig.password,
  database : databaseConfig.database,
  timezone : 'utc'
});

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