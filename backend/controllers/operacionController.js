var operacion = require('./../models/operaciones');

exports.getOperaciones = function(req, res, next){
    operacion.getOperaciones(function(consulta){
        res.json(consulta);
    });
}


