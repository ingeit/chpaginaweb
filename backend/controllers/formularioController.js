var fechas = require('./../models/formulario');
var comisiones = require('./../models/formulario');

exports.getFechas = function(req, res, next){
    fechas.getFechas(function(consulta){
        res.json(consulta);
    });
}

exports.getComisiones = function(req, res, next){
    comisiones.getComisiones(function(consulta){
        res.json(consulta);
    });
}