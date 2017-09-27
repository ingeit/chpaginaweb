var profesional = require('./../models/profesionales');

exports.dameProfesional = function(req, res, next){
//    console.log("dentro de controller nodjs "+req.body.dni);
    var dni = req.body.dni;
    profesional.dameProfesional(dni,function(consulta){
        res.json(consulta);
    });
}