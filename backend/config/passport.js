var passport = require('passport');
var User = require('./../models/user');
var env    = process.env.NODE_ENV || 'auth',
    config = require('./' + env + '.js');
var JwtStrategy = require('passport-jwt').Strategy;
var ExtractJwt = require('passport-jwt').ExtractJwt;
var LocalStrategy = require('passport-local').Strategy;


var localLogin = new LocalStrategy(
  function(username, password, done) {
    process.nextTick(function () {
        var user = '"'+username+'"';
        var pass = '"'+password+'"';
        User.login(user,pass, function(response) {
            console.log('​response', response);
            var respuesta = response[0];
            if(respuesta.codigo != 0){
                return done(null, username);
            }else{
                return done(null, false);
            }
        });
    });
  }
);

var jwtOptions = {
    jwtFromRequest: ExtractJwt.fromAuthHeader(),
    secretOrKey: config.secret
};
 

var jwtLogin = new JwtStrategy(jwtOptions, function(payload, done){
 
    User.dame(payload._id, function(user){
        if(user[0].codigo != 0){
            done(null, user);
        }else {
            done(null, false);
        }
    });
});
 
passport.use(localLogin);
passport.use(jwtLogin);