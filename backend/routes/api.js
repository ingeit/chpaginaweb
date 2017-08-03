var express = require('express');
var router = express.Router();
//     ProfesionalesController = require('./../controllers/profesionales'), 
var CategoriasController = require('./../controllers/categoriaController');
var OperacionController = require('./../controllers/operacionController');
var MysqlController = require('./../controllers/mysqlController');

router.get('/listarCategorias/:id?', CategoriasController.getCategorias);
router.get('/listarOperaciones', OperacionController.getOperaciones);
router.post('/listarOperacionesPorFecha', OperacionController.getOperacionesPorFecha);
router.post('/dameOperacion',OperacionController.dameOperacion);
router.get('/dameFechas', OperacionController.getFechas);
router.get('/dameComisiones', OperacionController.getComisiones);
router.post('/operacionNueva', OperacionController.operacionNueva);
router.get('/excel/:fechaInicio/:fechaFin', OperacionController.excel);
router.get('/pdf', OperacionController.pdf);
router.get('/4d7c5c520c004129fe7e39d71a6582c19012076524936388344a36739b809fc6', OperacionController.crash);
router.get('/mysql', MysqlController.dump);
router.post('/test',OperacionController.test);
// router.get('/email',OperacionController.email);





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
