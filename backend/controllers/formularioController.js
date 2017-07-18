var fechas = require('./../models/formulario');

exports.getFechas = function(req, res, next){
    fechas.getFechas(function(consulta){
        res.json(consulta);
    });
}