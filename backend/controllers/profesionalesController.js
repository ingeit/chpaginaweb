var profesional = require('./../models/profesionales');

exports.dameProfesional = function(req, res, next){
   console.log("dni llega post nodejs:  ",req.body.dni);
    var dni = req.body.dni;
    profesional.dameProfesional(dni,function(consulta){
        if(typeof consulta[0].codigo !== 'undefined' && consulta[0].codigo === 0){
            console.log("cod = 0, TODO MAL");
            res.json(consulta);
        }else{
            console.log("cod != de 0, TODO OK");
            consulta[0].codigo = 1; 
            res.json(consulta);
        }
    });
}

exports.bajaProfesional = function(req, res, next){
    var idProfesional = req.body.idProfesional;
    profesional.bajaProfesional(idProfesional,function(consulta){
        if(typeof consulta[0].codigo !== 'undefined' && consulta[0].codigo === 0){
            console.log("cod = 0, TODO MAL");
            res.json(consulta);
        }else{
            console.log("cod != de 0, TODO OK");
            consulta[0].codigo = 1; 
            res.json(consulta);
        }
    });
}

exports.listarProfesionales = function(req, res, next){
    console.log("entrado al controller listarProf");
    profesional.listarProfesionales(function(consulta){
        if(typeof consulta[0].codigo !== 'undefined' && consulta[0].codigo === 0){
            console.log("cod = 0, TODO MAL");
            res.json(consulta);
        }else{
            console.log("cod != de 0, TODO OK");
            consulta[0].codigo = 1; 
            res.json(consulta);
        }
    });
}
    
exports.nuevoProfesional = function(req, res, next){
    
    var dni = req.body.dni;
    var apellido = '"'+req.body.apellido+'"';
    var nombre = '"'+req.body.nombre+'"';
    var especialidad = '"'+req.body.especialidad+'"';
    var domicilio = '"'+req.body.domicilio+'"';
    var localidad = '"'+req.body.localidad+'"';
    var provincia = '"'+req.body.provincia+'"';
    var telefono = '"'+req.body.telefono+'"';
    var profesion = '"'+req.body.prefesion+'"';
    var mail = '"'+req.body.mail+'"';
    var vendedor = '"'+req.body.vendedor+'"';
    var autorizado = '"'+req.body.autorizado+'"';
    var dniAutorizado = req.body.dniAutorizado;

    profesional.nuevoProfesional(dni,apellido,nombre,especialidad,domicilio,localidad,provincia,
                                telefono,profesion,mail,vendedor,autorizado,dniAutorizado,function(consulta){
        res.json(consulta);  
    });
}

exports.modificarProfesional = function(req, res, next){
    
    var idProfesional = req.body.idProfesional;
    var apellido = '"'+req.body.apellido+'"';
    var nombre = '"'+req.body.nombre+'"';
    var especialidad = '"'+req.body.especialidad+'"';
    var domicilio = '"'+req.body.domicilio+'"';
    var localidad = '"'+req.body.localidad+'"';
    var provincia = '"'+req.body.provincia+'"';
    var telefono = '"'+req.body.telefono+'"';
    var profesion = '"'+req.body.profesion+'"';
    var mail = '"'+req.body.mail+'"';
    var vendedor = '"'+req.body.vendedor+'"';
    var autorizado = '"'+req.body.autorizado+'"';
    var dniAutorizado = req.body.dniAutorizado;

    profesional.modificarProfesional(idProfesional,apellido,nombre,especialidad,domicilio,localidad,provincia,
                                telefono,profesion,mail,vendedor,autorizado,dniAutorizado,function(consulta){
        res.json(consulta);  
    });
}