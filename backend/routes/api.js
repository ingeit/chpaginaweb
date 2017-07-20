var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
//     ProfesionalesController = require('./../controllers/profesionales'), 
var CategoriasController = require('./../controllers/categoriaController');
var OperacionController = require('./../controllers/operacionController');

router.get('/listarCategorias/:id?', CategoriasController.getCategorias);
router.get('/listarOperaciones', OperacionController.getOperaciones);
router.post('/listarOperacionesPorFecha', OperacionController.getOperacionesPorFecha);
router.get('/dameFechas', OperacionController.getFechas);
router.get('/dameComisiones', OperacionController.getComisiones);
router.post('/operacionNueva', OperacionController.operacionNueva);
router.get('/excel/:fechaInicio/:fechaFin', OperacionController.excel);
router.get('/pdf', OperacionController.pdf);

router.get('/email',function (req, res) {
  //Setup Nodemailer transport, I chose gmail. Create an application-specific password to avoid problems.
  var transporter = nodemailer.createTransport({
        host: 'smtp.gmail.com', // mail.clubhonorarios.com
        port: 587,
        // opportunisticTLS: true,
        // secure: false, // secure:true for port 465, secure:false for port 587
        // auth: {
        //     user: 'op@clubhonorarios.com', // chonorarios@gmail.com -- ramiro123
        //     pass: 'Astrid2017' // Your password
        // }
        auth: {
            user: 'chonorarios@gmail.com', // chonorarios@gmail.com -- ramiro123
            pass: 'ramiro123' // Your password
        }
    });
  //Mail options
  var mailOptions = {
      from: 'Club Honorarios <ch@clubhonorarios.com>', //grab form data from the request body object
      to: 'masterk63@gmail.com',
      subject: 'HOlaaa node',
      text: 'holaaa node cuerpo!!!'
  };

  transporter.sendMail(mailOptions,function(error, info){
    if(error){
        console.log(error);
        res.json({yo: 'error'});
    }else{
        console.log('Message sent: ' + info.response);
        res.json({yo: info.response});
    };
});
});




module.exports = router; 
 
    
    // authRoutes.post('/register', AuthenticationController.register);
    // authRoutes.post('/login', AuthenticationController.login);
 
    // authRoutes.get('/protected', requireAuth, function(req, res){
    //     res.send({ content: 'Success'});
    // });
    // //API usuarios
    // apiUsuarios.get('/usuariosListar',UsuariosController.listarUsuarios);
    // apiUsuarios.get('/usuarioDame/:id',UsuariosController.dameUsuario);
    // apiUsuarios.post('/usuarioModificar',UsuariosController.usuarioModificar);
    // apiUsuarios.get('/usuarioBaja/:id',UsuariosController.usuarioBaja);
    // apiUsuarios.post('/forgot',UsuariosController.forgotPassword);
    // //API Registros
    // apiRegistros.get('/registrosListar',RegistrosController.registrosListar);
    // apiRegistros.get('/listarMarkers',RegistrosController.registrosListarMarkers);
    // apiRegistros.get('/registroDame/:id',RegistrosController.registroDame);
    // apiRegistros.get('/registroValidar/:id',RegistrosController.registroValidar);
    // apiRegistros.get('/registroInvalidar/:id',RegistrosController.registroInvalidar);

    
    // app.get('/', function(req, res) {
    //     res.render('index', { title: 'Express' });
    // });
    // app.get('/forgot', function(req, res) {
    //     res.render('forgot', {
    //         user: req.user
    //     });
    // });
