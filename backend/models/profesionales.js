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
    console.log('desde el modelo',dni)
    connection.query('call profesionalTemp_dame('+dni+')', function(err, rows){   
        if (err) {
            consulta = [{'codigo' : 0, 'mensaje' : "Error numero: "+err.errno+" descripcion: "+err.message}] 
            fn (consulta);  
        }else fn(rows[0]); 
    });
}

exports.bajaProfesional = function(idProfesional,fn){
    connection.query('call profesionalTemp_baja('+idProfesional+')', function(err, rows){   
        if (err) {
            consulta = [{'codigo' : 0, 'mensaje' : "Error numero: "+err.errno+" descripcion: "+err.message}] 
            fn (consulta);  
        }else fn(rows[0]); 
    });
}

exports.listarProfesionales = function(fn){
    console.log("entrado al modelo listarProf");
    connection.query('call profesionalTemp_listar()', function(err, rows){
        if (err) {
            consulta = [{'codigo' : 0, 'mensaje' : "Error numero: "+err.errno+" descripcion: "+err.message}] 
            fn (consulta);  
        }else fn(rows[0]); 
    });
}

exports.nuevoProfesional = function(dni,apellido,nombre,especialidad,domicilio,localidad,provincia,
                                    telefono,profesion,mail,vendedor,autorizado,dniAutorizado,fn){
    connection.query('call profesionalTemp_nuevo('+dni+','+apellido+','+nombre+','+especialidad+','+
                        domicilio+','+localidad+','+provincia+','+telefono+','+profesion+','+mail+','+vendedor+','+
                        autorizado+','+dniAutorizado+')', function(err, rows){
        if (err) {
            consulta = [{'codigo' : 0, 'mensaje' : "Error numero: "+err.errno+" descripcion: "+err.message}] 
            fn (consulta);  
        }else fn(rows[0]); 
    });
}

exports.modificarProfesional = function(idProfesional,apellido,nombre,especialidad,domicilio,localidad,provincia,
                                    telefono,profesion,mail,vendedor,autorizado,dniAutorizado,fn){
    connection.query('call profesionalTemp_modificar('+idProfesional+','+apellido+','+nombre+','+especialidad+','+
                        domicilio+','+localidad+','+provincia+','+telefono+','+profesion+','+mail+','+vendedor+','+
                        autorizado+','+dniAutorizado+')', function(err, rows){
        if (err) {
            consulta = [{'codigo' : 0, 'mensaje' : "Error numero: "+err.errno+" descripcion: "+err.message}] 
            fn (consulta);  
        }else fn(rows[0]); 
    });
}