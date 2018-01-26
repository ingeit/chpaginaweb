var tarjeta = require('./../models/tarjetas');
var dateformat = require('dateformat');

exports.nuevaTarjeta = function(req, res, next){
    tarjeta.nuevaTarjeta(req,function(consulta){
        res.json(consulta);  
    });

}