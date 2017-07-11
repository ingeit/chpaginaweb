var express = require('express');
var passport = require('passport');
var authRoutes = express.Router();
var LoginController = require('./../controllers/login'); 

var requireAuth = passport.authenticate('jwt', {session: false}),
    requireLogin = passport.authenticate('local', {session: false});

// Auth Routes
authRoutes.use('/auth', authRoutes);

authRoutes.post('/login', requireLogin, LoginController.login);

// authRoutes.get('/login', function(req, res, next) {
//   res.send('todo bien ');
// });

module.exports = authRoutes;
