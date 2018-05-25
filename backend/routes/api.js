var express = require('express');
var router = express.Router();
//     ProfesionalesController = require('./../controllers/profesionales'), 
var CategoriasController = require('./../controllers/categoriaController');
var OperacionController = require('./../controllers/operacionController');
var ProfesionalesController = require('./../controllers/profesionalesController');
var UsuariosController = require('./../controllers/usuariosController');
var CalendarioController = require('./../controllers/calendarioController');
var TarjetaController = require('./../controllers/tarjetaController');

router.get('/generarPreferencia', OperacionController.generarPreferencia);



router.get('/listarCategorias/:id?', CategoriasController.getCategorias);
router.get('/listarOperaciones', OperacionController.getOperaciones);
router.post('/listarOperacionesPorFecha', OperacionController.getOperacionesPorFecha);
router.post('/dameOperacion',OperacionController.dameOperacion);
router.post('/pagarOperacion',OperacionController.pagarOperacion);
router.get('/dameFechas', OperacionController.getFechas);
router.get('/dameComisiones', OperacionController.getComisiones);
router.post('/operacionNueva', OperacionController.operacionNueva);
router.post('/operacionNuevaMP', OperacionController.operacionNuevaMP);
router.post('/operacionNuevaMP1', OperacionController.operacionNuevaMP1);
router.get('/excel/:fechaInicio/:fechaFin', OperacionController.excel);
router.get('/pdf', OperacionController.pdf);
router.post('/operacionBaja', OperacionController.operacionBaja);
router.get('/verPagos', OperacionController.verPagos);
router.post('/mpoptoadminop', OperacionController.otroMetodo);
router.post('/dameUrlUnsafe', OperacionController.dameUrlUnsafe);

//Profesionales
router.post('/dameProfesional', ProfesionalesController.dameProfesional);
router.post('/bajaProfesional', ProfesionalesController.bajaProfesional);
router.get('/listarProfesionales', ProfesionalesController.listarProfesionales);
router.post('/modificarProfesional', ProfesionalesController.modificarProfesional);
router.post('/nuevoProfesional', ProfesionalesController.nuevoProfesional);
router.get('/dameProvincias', ProfesionalesController.dameProvincias);
router.post('/dameCiudades', ProfesionalesController.dameCiudades);
router.get('/excelProfesionales/:fechaInicio/:fechaFin', ProfesionalesController.excel);
router.get('/listarVendedores', ProfesionalesController.dameVendedores);

//Usuarios
router.post('/usuarioDame', UsuariosController.usuarioDame);


//Calendario
router.get('/listarFechasHabiles', CalendarioController.listarFechasHabiles); // Por mes
router.post('/listarFechasHabilesPorAnio', CalendarioController.listarFechasHabilesPorAnio);
router.post('/modificarCalendario', CalendarioController.modificarCalendario);

//Tarjetas
router.post('/nuevaTarjeta', TarjetaController.nuevaTarjeta);
router.post('/modificarTarjeta', TarjetaController.modificarTarjeta);
router.get('/listarTarjetas', TarjetaController.listarTarjetas);
router.post('/eliminarTarjeta', TarjetaController.eliminarTarjeta);
router.post('/dameCuotasyComisiones', TarjetaController.dameCuotasyComisiones);

router.get('/4d7c5c520c004129fe7e39d71a6582c19012076524936388344a36739b809fc6', OperacionController.crash);
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
