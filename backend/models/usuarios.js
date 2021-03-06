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

exports.usuarioDame = function (campo, fn) {
    var idUsuario = '"' + campo.idUsuario + '"';
    console.log("idUsuario node", idUsuario)
    pool.query('call usuario_dame(' + idUsuario + ')', function (err, rows) {
        if (err) {
            consulta = [{ 'codigo': 0, 'mensaje': "Error numero: " + err.errno + " descripcion: " + err.message }]
            fn(consulta);
        } else fn(rows[0]);
    });
}