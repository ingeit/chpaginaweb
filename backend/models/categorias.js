var mysql = require('mysql');
var env    = process.env.NODE_ENV || 'database',
    databaseConfig = require('./../config/' + env + '.js');

var connection = mysql.createConnection({
  host     : databaseConfig.host,
  user     : databaseConfig.user,
  password : databaseConfig.password,
  database : databaseConfig.database,
});

exports.getCategorias = function(id, fn){
    connection.query('call categoria_listar('+id+')', function(err, rows){  
                if (err) fn (err);  
                fn(rows[0]); 
            });
}


exports.getCategoriasConPath = function(id, fn){
    this.getCategorias(id, function(consulta1){
        console.log('el id es: ',id);
        console.log('la consulta es: ',consulta1);
        connection.query('call categoria_listarAnsestros('+id+')', function(err, rows){  
                if (err) fn (err);  
                fn(rows[0],consulta1); 
        });
    });
} 
