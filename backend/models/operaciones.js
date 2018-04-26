var mysql = require('mysql');
var env = process.env.NODE_ENV || 'database',
    databaseConfig = require('./../config/' + env + '.js');

var pool = mysql.createPool({
    connectionLimit: 113,
    host: databaseConfig.host,
    user: databaseConfig.user,
    password: databaseConfig.password,
    database: databaseConfig.database,
    timezone: 'utc'
});


//TODOS LOS CALLBACKS VAN CON EL ELSE PARA MANEJAR ERRORES ASI NO SE CAE NODEJS... EL UNICO QUE NO TIENE ELSE, ES CRASH, a proposito....



exports.getOperaciones = function (fn) {
    pool.query('call operacion_listar_dia()', function (err, rows) {
        // console.log(rows[0]);
        if (err) fn(err);
        else fn(rows[0]);
    });
}

exports.getOperacionesPorFecha = function (fechaInicio, fechaFin, fn) {
    pool.query('call operacion_listar_rango(' + fechaInicio + ',' + fechaFin + ')', function (err, rows) {
        if (err) fn(err);
        else fn(rows[0]);
    });
}

exports.dameOperacion = function (idOperacion, fn) {
    pool.query('call operacion_dame(' + idOperacion + ')', function (err, rows) {
        if (err) fn(err);
        else fn(rows[0]);
    });
}
exports.pagarOperacion = function (idOperacion, fn) {
    pool.query('call operacion_modificar_estadoPago(' + idOperacion + ')', function (err, rows) {
        if (err) fn(err);
        else fn(rows[0]);
    });
}

exports.operacionBaja = function (idOperacion, fn) {
    pool.query('call operacion_baja(' + idOperacion + ')', function (err, rows) {
        if (err) fn(err);
        else fn(rows[0]);
    });
}


exports.getFechas = function (fn) {
    pool.query('call dame_fechas()', function (err, rows) {
        if (err) {
            consulta = [{ 'codigo': 0, 'mensaje': "Error numero: " + err.errno + " descripcion: " + err.message }]
            fn(consulta);
        } else fn(rows[0]);
    });
}

exports.getComisiones = function (fn) {
    pool.query('call dame_comisiones()', function (err, rows) {
        console.log(rows)
        if (err) {
            consulta = [{ 'codigo': 0, 'mensaje': "Error numero: " + err.errno + " descripcion: " + err.message }]
            fn(consulta);
        } else fn(rows[0]);
    });
}

exports.operacionNuevaOP = function (req, fn) {

    console.log("entrando a op nueva model")

    var idProfesional = req.body.idProfesional;
    var idUsuario = req.body.idUsuario;
    var nombreTarjeta = '"' + req.body.tarjeta + '"';
    var dniCliente = req.body.dniCliente;
    var apellidoCliente = '"' + req.body.apellidoCliente + '"';
    var nombreCliente = '"' + req.body.nombreCliente + '"';
    var telefonoCliente = '"' + req.body.telefonoCliente + '"';
    var mailCliente = '"' + req.body.mailCliente + '"';
    var tipoTarjeta = '"' + req.body.tipoTarjeta + '"';
    var tipoOperacion = '"' + req.body.tipoOperacion + '"';
    var importeVenta = req.body.importeVenta;
    var importeCobrar = req.body.importeCobrar;
    var cuotas = req.body.cuotas;
    var importeCuota = req.body.importeCuota;
    var importeCarga = req.body.importeCarga;
    var codigoAuto = req.body.codigoAuto;
    var cupon = req.body.cupon;

    console.log("antes del sp: nombre tarjeta", nombreTarjeta)
    console.log("antes del sp: tipo op", tipoOperacion)

    if (nombreTarjeta == '"POINT PREFERENCIAL"') {
        console.log("if se cumple, nombre es point preferencial, entocnes en tipo de operacion ponemos eso")
        tipoOperacion = '"point preferencial"';
        console.log("tipo op en el if cambiado", tipoOperacion)
    }


    pool.query('call operacion_nueva(' + idProfesional + ',' + idUsuario + ',' + nombreTarjeta + ',' +
        dniCliente + ',' + apellidoCliente + ',' + nombreCliente + ',' + telefonoCliente + ',' + mailCliente + ',' + tipoTarjeta + ',' + tipoOperacion + ',' + importeVenta + ',' +
        importeCobrar + ',' + cuotas + ',' + importeCuota + ',' + importeCarga + ',' + codigoAuto + ',' + cupon + ')', function (err, rows) {
            if (err) {
                consulta = [{ 'codigo': 0, 'mensaje': "Error numero: " + err.errno + ". Descripcion: " + err.message }]
                fn(consulta);
            } else fn(rows[0]);

        });
}

exports.operacionNueva = function (campos, payment, fn) {
    var idProfesional = campos.profesional.id;
    var idUsuario = campos.usuario.idUsuario;
    var nombreTarjeta = '"' + campos.tarjeta.nombre + '"';
    var dniCliente = campos.cliente.dni;
    var apellidoCliente = '"' + campos.cliente.apellido + '"';
    var nombreCliente = '"' + campos.cliente.nombre + '"';
    var telefonoCliente = '"' + campos.cliente.celular + '"';
    var mailCliente = '"' + campos.cliente.mail + '"';
    var tipoTarjeta = '"C"';
    var tipoOperacion = '"MP"';
    var importeVenta = campos.importes.venta;
    var importeCobrar = campos.importes.cobrar;
    var cuotas = campos.importes.cantCuotas;
    var importeCuota = campos.importes.cuota;
    var importeCarga = campos.importes.carga;
    var codigoAuto = 0;
    var cupon = payment.response.id;

    pool.query('call operacion_nueva(' + idProfesional + ',' + idUsuario + ',' + nombreTarjeta + ',' +
        dniCliente + ',' + apellidoCliente + ',' + nombreCliente + ',' + telefonoCliente + ',' + mailCliente + ',' + tipoTarjeta + ',' + tipoOperacion + ',' + importeVenta + ',' +
        importeCobrar + ',' + cuotas + ',' + importeCuota + ',' + importeCarga + ',' + codigoAuto + ',' + cupon + ')', function (err, rows) {
            if (err) {
                consulta = [{ 'codigo': 0, 'mensaje': "Error numero: " + err.errno + ". Descripcion: " + err.message }]
                fn(consulta);
            } else fn(rows[0]);

        });
}

exports.crash = function (fn) {
    //sha soporteit
    pool.query('call a()', (err, rows) => {
        if (err) fn(err);
        fn(rows[0]);
    });
}

exports.test = function (idOperacion, fn) {
    pool.query('call operacion_dame(' + idOperacion + ')', function (err, rows) {
        // console.log("desde model errr ",err,"desde model rows ", rows);
        if (err) {
            consulta = [{ 'codigo': 0, 'mensaje': "Error numero: " + err.errno + " descripcion: " + err.message }]
            fn(consulta);
        } else fn(rows[0]);
    });
}