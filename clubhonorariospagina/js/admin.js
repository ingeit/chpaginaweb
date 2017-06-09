$(function() {
  $("form[name='login']").validate({
    // Specify validation rules
    rules: {
      // The key name on the left side is the name attribute
      // of an input field. Validation rules are defined
      // on the right side
      user: "required",
      password: "required",
    },
    // Specify validation error messages
    messages: {
      user: "Por Favor Ingrese un Usuario",
      password: "Por Favor Ingrese una Contraseña",
    },
    // Make sure the form is submitted to the destination defined
    // in the "action" attribute of the form when valid
    submitHandler: function(form) {
            $('#mensajemodal').modal('show');
            //autentifcarse();
            form.submit();
    },
  });

});
 

function autentifcarse(){
    var user = $('#user').val().toUpperCase();
    var password = $('#password').val().toUpperCase();
    var domicilioc = $('#domicilioc').val().toUpperCase();
    var telefonoc = $('#telefonoc').val().toUpperCase();
    var emailc = $('#emailc').val().toLowerCase(); 
    var mensajec = $('#mensajec').val().toUpperCase();

    $.ajax({ //Como tengo que enviar el formulario a back end, tiene que ser jsonp para evitar cross-origin,
             // pero al ser jsonp solo se puede usar method GET
        type: "GET",
        url: "http://vps-1317973-x.dattaweb.com/contacto/"
            +user+"/"
            +password+"/"
            +domicilioc+"/"
            +telefonoc+"/"
            +emailc+"/"
            +mensajec, 
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        dataType: "jsonp", 
        success: function(json) //cuando finaliza la consulta
        { 
            $('#user').val('');
            $('#password').val('');
            $('#domicilioc').val('');
            $('#telefonoc').val('');
            $('#emailc').val('');
            $('#mensajec').val('');
            $('#mensajemodal .modal-body').html('');
            $('#mensajemodal .modal-body').append('Mensaje enviado correctamente <button type="button" class="btn btn-primary" style="background-color:#FF6F08;border-color: #FF6F08" data-dismiss="modal">Cerrar</button>');
    
        } 
    });
}