var categorias = require('./../models/categorias');

exports.getCategorias = function(req, res, next){
    var id = req.params.id;
    if (!id) {
        id = null;
        console.log('la categoria es nula:',id);
    }else{
        console.log('la categoria es:',id);
    }
    categorias.getCategorias(id,function(consulta){
        res.json(consulta);
    });
}
