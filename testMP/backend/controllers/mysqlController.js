var mysql = require('./../models/mysql');

exports.dump = function(req, res, next){
    mysql.dump(function(consulta){
        console.log("desde controller mysql: ",consulta);
        res.json(consulta);
    });
}
