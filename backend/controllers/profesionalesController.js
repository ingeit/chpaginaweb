var profesional = require('./../models/profesionales');

exports.dameProfesional = function(req, res, next){
//    console.log("dentro de controller nodjs "+req.body.dni);
    var dni = req.body.dni;
    profesional.dameProfesional(dni,function(consulta){
        res.json(consulta);
    });
}

exports.bajaProfesional = function(req, res, next){
        var idProfesional = req.body.idProfesional;
        profesional.bajaProfesional(idProfesional,function(consulta){
            res.json(consulta);
        });
    }

exports.listarProfesionales = function(req, res, next){
        profesional.listarProfesionales(function(consulta){
            res.json(consulta);
        });
    }
    
exports.nuevoProfesional = function(req, res, next){
    
    var oDniProfesional = req.body.dniProfesional;
    var oApellidoProfesional = '"'+req.body.apellidoProfesional+'"';
    var oNombreProfesional = '"'+req.body.nombreProfesional+'"';
    var oMailProfesional = '"'+req.body.mailProfesional+'"';
    var oDniCliente = req.body.dniCliente;
    var oApellidoCliente = '"'+req.body.apellidoCliente+'"';
    var oNombreCliente = '"'+req.body.nombreCliente+'"';
    var oTelefonoCliente = '"'+req.body.telefonoCliente+'"';
    var oMailCliente = '"'+req.body.mailCliente+'"';
    var oTarjeta = '"'+req.body.tarjeta+'"';
    var oImporteVenta = req.body.importeVenta;
    var oImporteCobrar = req.body.importeCobrar;
    var oCuotas = req.body.cuotas;
    var oImporteCarga = req.body.importeCarga;
    var oImporteCuota = req.body.importeCuota;
    var oCodigoAuto = req.body.codigoAuto;
    var oCupon = req.body.cupon;



    operacion.operacionNueva(oDniProfesional,oApellidoProfesional,oNombreProfesional,oMailProfesional,
        oDniCliente,oApellidoCliente,oNombreCliente,oTelefonoCliente,oMailCliente,oTarjeta,oImporteVenta,
        oImporteCobrar,oCuotas,oImporteCarga,oImporteCuota,oCodigoAuto,oCupon,function(consulta){
            console.log(consulta);
                if(consulta[0].codigo >= 1){
                    var respuesta = consulta[0];
                    var oFechaTransaccion = respuesta.fechaTransaccion;
                    var oFechaPago = respuesta.fechaPago;
                    var oIdOperacion = respuesta.codigo;
                    email('profesional',req.body,oIdOperacion,oFechaTransaccion,oFechaPago,function(res1){
                        console.log("enviando mail desde operacion nueva: ", res1);
                        console.log("mail cliente = ",req.body.mailCliente);
                        if(req.body.mailCliente != ''){
                            console.log("mail cliente no es vacio, mandando mail");
                            email('cliente',req.body,oIdOperacion,oFechaTransaccion,oFechaPago,function(res2){
                                console.log("enviando mail desde operacion nueva: ", res2);
                                let response = {
                                    'mysql' : consulta,
                                    'mailProfesional' : res1,
                                    'mailCliente' : res2
                                };
                                console.log(response);
                                res.json(response);
                            }); 
                        }else{
                            console.log("mail cliente vacio.. no se manda mail.. respondiendo solo mysql y mail prof");
                            let response = {
                                'mysql' : consulta,
                                'mailProfesional' : res1,
                                'mailCliente' : 'error'
                            };
                            res.json(response);
                        }
                        
                    });
                }else{
                    console.log("la op no se realizo, no se envian mails y se cancela");
                    res.json(consulta);
                }
        });
}