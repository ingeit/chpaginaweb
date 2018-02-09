var mysql = require('mysql');
var env = process.env.NODE_ENV || 'database',
    databaseConfig = require('./../config/' + env + '.js');

var connection = mysql.createConnection({
    host: databaseConfig.host,
    user: databaseConfig.user,
    password: databaseConfig.password,
    database: databaseConfig.database,
    timezone: 'utc'
});


//TODOS LOS CALLBACKS VAN CON EL ELSE PARA MANEJAR ERRORES ASI NO SE CAE NODEJS... EL UNICO QUE NO TIENE ELSE, ES CRASH, a proposito....



exports.getOperaciones = function (fn) {
    connection.query('call operacion_listar_dia()', function (err, rows) {
        // console.log(rows[0]);
        if (err) fn(err);
        else fn(rows[0]);
    });
}

exports.getOperacionesPorFecha = function (fechaInicio, fechaFin, fn) {
    connection.query('call operacion_listar_rango(' + fechaInicio + ',' + fechaFin + ')', function (err, rows) {
        if (err) fn(err);
        else fn(rows[0]);
    });
}

exports.dameOperacion = function (idOperacion, fn) {
    connection.query('call operacion_dame(' + idOperacion + ')', function (err, rows) {
        if (err) fn(err);
        else fn(rows[0]);
    });
}

exports.operacionBaja = function (idOperacion, fn) {
    connection.query('call operacion_baja(' + idOperacion + ')', function (err, rows) {
        if (err) fn(err);
        else fn(rows[0]);
    });
}


exports.getFechas = function (fn) {
    connection.query('call dame_fechas()', function (err, rows) {
        if (err) {
            consulta = [{ 'codigo': 0, 'mensaje': "Error numero: " + err.errno + " descripcion: " + err.message }]
            fn(consulta);
        } else fn(rows[0]);
    });
}

exports.getComisiones = function (fn) {
    connection.query('call dame_comisiones()', function (err, rows) {
        console.log(rows)
        if (err) {
            consulta = [{ 'codigo': 0, 'mensaje': "Error numero: " + err.errno + " descripcion: " + err.message }]
            fn(consulta);
        } else fn(rows[0]);
    });
}

exports.operacionNueva = function (campos, payment, fn) {
    var idProfesional = campos.profesional.id;
    var idUsuario = null;
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

    connection.query('call operacion_nueva(' + idProfesional + ',' + idUsuario + ',' + nombreTarjeta + ',' +
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
    connection.query('call a()', (err, rows) => {
        if (err) fn(err);
        fn(rows[0]);
    });
}

exports.test = function (idOperacion, fn) {
    connection.query('call operacion_dame(' + idOperacion + ')', function (err, rows) {
        // console.log("desde model errr ",err,"desde model rows ", rows);
        if (err) {
            consulta = [{ 'codigo': 0, 'mensaje': "Error numero: " + err.errno + " descripcion: " + err.message }]
            fn(consulta);
        } else fn(rows[0]);
    });
}