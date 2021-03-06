var mysql = require('mysql');
var env    = process.env.NODE_ENV || 'database',
    databaseConfig = require('./../config/' + env + '.js');

    var pool = mysql.createPool({
        connectionLimit: 113,
        host: databaseConfig.host,
        user: databaseConfig.user,
        password: databaseConfig.password,
        database: databaseConfig.database,
        timezone: 'utc'
    });

exports.getCategorias = function(id, fn){
    pool.query('call categoria_listar('+id+')', function(err, rows){  
                if (err) fn (err);  
                fn(rows[0]); 
            });
}


exports.getCategoriasConPath = function(id, fn){
    this.getCategorias(id, function(consulta1){
        // console.log('el id es: ',id);
        pool.query('call categoria_listarAnsestros('+id+')', function(err, rows){  
                if (err) fn (err);  
                // console.log('la consulta es: ',consulta1);
                // console.log('la segunda consulta es: ',rows[0]);
                let resp = {
                'subCategorias'  : consulta1,
                'ansestros': rows[0]
                };
                fn(resp); 
        });
    });
} 
