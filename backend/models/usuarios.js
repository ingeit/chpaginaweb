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

exports.usuarioDame = function (campo, fn) {
    var idUsuarioMD5 = '"' + campo.idUsuarioMD5 + '"';
    console.log(idUsuarioMD5)
    connection.query('call usuario_dame(' + idUsuarioMD5 + ')', function (err, rows) {
        if (err) {
            consulta = [{ 'codigo': 0, 'mensaje': "Error numero: " + err.errno + " descripcion: " + err.message }]
            fn(consulta);
        } else fn(rows[0]);
    });
}