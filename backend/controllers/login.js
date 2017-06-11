var User = require('./../models/user');

exports.login = function(req, res, next){
    var username = '"'+req.body.username+'"';
    var password = '"'+req.body.password+'"';
    User.login(username,password, function(response) {
        var respuesta = response;
        res.send(respuesta);
    });
}
