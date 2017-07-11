var User = require('./../models/user');

exports.login = function(req, res, next){
    var username = '"'+req.body.username+'"';
    var password = '"'+req.body.password+'"';
    User.login(username,password, function(response) {
        var respuesta = response;
        res.send(respuesta);
    });
}

function generateToken(user){
    return jwt.sign(user, authConfig.secret, {
        expiresIn: 10080
    });
}
 
function setUserInfo(request){
    console.log(request);
    return {
        _id: request.idUsuario,
        username: request.usuario,
        rol:request.rol,
    };
}
 
// exports.login = function(req, res, next){
//     var username = '"'+req.body.username+'"';
//     User.login(username, function(user) {
//         var usuario = user[0];
//         if(usuario.codigo != 0){
//             if(usuario.contrasenia === req.body.password){
//                 var userInfo = setUserInfo(usuario);
//                 res.status(200).json({
//                     token: 'JWT ' + generateToken(userInfo),
//                     user: userInfo
//                 });
//             }
//         }else{
//             res.json(usuario);
//         }
//     });
// }