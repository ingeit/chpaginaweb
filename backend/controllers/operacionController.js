var operacion = require('./../models/operaciones');

exports.getOperaciones = function(req, res, next){
    operacion.getOperaciones(function(consulta){
        res.json(consulta);
    });
}

exports.getOperacionesPorFecha = function(req, res, next){
    var fechaInicio = '"'+req.body.fechaInicio+'"';
    var fechaFin = '"'+req.body.fechaFin+'"';
    operacion.getOperacionesPorFecha(fechaInicio,fechaFin,function(consulta){
        res.json(consulta);
    });
}

exports.excel = function(req, res, next){
    var nodeExcel=require('excel-export');
    var conf={}; //lleva la configuarcion de las columnas y filas
    arr=[]; // array donde se generan las filas
    var fechaInicio = '"'+req.params.fechaInicio+'"';
    var fechaFin = '"'+req.params.fechaFin+'"';
    conf.cols=[{
            caption:'Sl.',
            type:'number',
            width:3
        },
        {
            caption:'Job',
            type:'string',
            width:50
        },
        {
            caption:'Date',
            type:'string',
            width:15
        }
        ];
        
    operacion.getOperacionesPorFecha(fechaInicio,fechaFin,function(consulta){
        let operaciones = consulta;

        for(i=0;i <operaciones.length;i++){
          idOperacion = operaciones[i].idOperacion;
          apellidoProfesional = operaciones[i].apellidoProfesional;
          nombreProfesional = operaciones[i].nombreProfesional;
          a=[idOperacion,apellidoProfesional,nombreProfesional];
          arr.push(a);
        }

        conf.rows=arr; // armo el excel con todos los datos.

        var result=nodeExcel.execute(conf);
        res.setHeader('Content-Type','application/vnd.openxmlformates');
        res.setHeader("Content-Disposition","attachment;filename="+"todo.xlsx");
        res.end(result,'binary');
    });  
}

