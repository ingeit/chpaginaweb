var express = require('express');
var LoginController = require('./../controllers/login'); 
var passportService = require('./../config/passport');
var passport = require('passport');
var authRoutes = express.Router();

var requireAuth = passport.authenticate('jwt', {session: false}),
    requireLogin = passport.authenticate('local', {session: false});

// Auth Routes
authRoutes.use('/auth', authRoutes);

authRoutes.post('/login', requireLogin, LoginController.login);

// authRoutes.post('/login', function(req, res, next) {
//   res.send(req.body.username);
// });

module.exports = authRoutes;
