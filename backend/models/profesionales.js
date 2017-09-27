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

exports.dameProfesional = function(dni,fn){
    // console.log('desde el modelo',dni)
    connection.query('call profesionalTemp_dame('+dni+')', function(err, rows){   
        if (err) fn (err);  
        else fn(rows[0]); 
    });
}

exports.bajaProfesional = function(idProfesional,fn){
    connection.query('call profesionalTemp_baja('+idProfesional+')', function(err, rows){   
        if (err) fn (err);  
        else fn(rows[0]); 
    });
}

exports.listarProfesionales = function(fn){
    connection.query('call profesionalTemp_listar()', function(err, rows){
        console.log(rows[0]);  
            if (err) fn (err);  
            else fn(rows[0]); 
    });
}