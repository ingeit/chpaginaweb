$(document).ready(function() {
    var front1 = true;
    var front2 = true;
    var front3 = true;
    $('#flip1').click(function(){
        if(front1){
            $(this).find('.back').removeClass("backflip-front");
            $(this).find('.front').removeClass("backflip-back");
            $(this).find('.back').addClass("backflip-back");
            $(this).find('.front').addClass("backflip-front");
            front1 = !front1;
            $('#flip2 .back').removeClass("backflip-back");
            $('#flip2 .front').removeClass("backflip-front");
            $('#flip2 .back').addClass("backflip-front");
            $('#flip2 .front').addClass("backflip-back");
            front2 = true;
            $('#flip3 .back').removeClass("backflip-back");
            $('#flip3 .front').removeClass("backflip-front");
            $('#flip3 .back').addClass("backflip-front");
            $('#flip3 .front').addClass("backflip-back");
            front3 = true;
        }
        else{
            $(this).find('.back').removeClass("backflip-back");
            $(this).find('.front').removeClass("backflip-front");
            $(this).find('.back').addClass("backflip-front");
            $(this).find('.front').addClass("backflip-back");
            front1 = !front1;
        }
    });
    
    $('#flip2').click(function(){
        if(front2){        
            $(this).find('.back').removeClass("backflip-front");
            $(this).find('.front').removeClass("backflip-back");
            $(this).find('.back').addClass("backflip-back");
            $(this).find('.front').addClass("backflip-front");
            front2 = !front2;
            $('#flip1 .back').removeClass("backflip-back");
            $('#flip1 .front').removeClass("backflip-front");
            $('#flip1 .back').addClass("backflip-front");
            $('#flip1 .front').addClass("backflip-back");
            front1 = true;
            $('#flip3 .back').removeClass("backflip-back");
            $('#flip3 .front').removeClass("backflip-front");
            $('#flip3 .back').addClass("backflip-front");
            $('#flip3 .front').addClass("backflip-back");
            front3 = true;
        }
        else{
            $(this).find('.back').removeClass("backflip-back");
            $(this).find('.front').removeClass("backflip-front");
            $(this).find('.back').addClass("backflip-front");
            $(this).find('.front').addClass("backflip-back");
            front2 = !front2;
        }
    });
    
    $('#flip3').click(function(){
        if(front3){        
            $(this).find('.back').removeClass("backflip-front");
            $(this).find('.front').removeClass("backflip-back");
            $(this).find('.back').addClass("backflip-back");
            $(this).find('.front').addClass("backflip-front");
            front3 = !front3;
            $('#flip2 .back').removeClass("backflip-back");
            $('#flip2 .front').removeClass("backflip-front");
            $('#flip2 .back').addClass("backflip-front");
            $('#flip2 .front').addClass("backflip-back");
            front2 = true;
            $('#flip1 .back').removeClass("backflip-back");
            $('#flip1 .front').removeClass("backflip-front");
            $('#flip1 .back').addClass("backflip-front");
            $('#flip1 .front').addClass("backflip-back");
            front1 = true;
        }
        else{
            $(this).find('.back').removeClass("backflip-back");
            $(this).find('.front').removeClass("backflip-front");
            $(this).find('.back').addClass("backflip-front");
            $(this).find('.front').addClass("backflip-back");
            front3 = !front3;
        }
    });
	
	
});

$(function() {
// Initialize form validation on the registration form.
  // It has the name attribute "registration"
  $("form[name='registration']").validate({
    // Specify validation rules
    rules: {
      // The key name on the left side is the name attribute
      // of an input field. Validation rules are defined
      // on the right side
      nombre: "required",
      apellido: "required",
      nacimiento: "required",
      dni: {
        required: true,
        number: true,
        minlength: 8,
        maxlength: 8
      },
      domicilio: "required",
      Telefono: {
        required: true,
        number: true
      },
      celular: {
        required: true,
        number: true
      },
      estadoCivil: "required",
      profesion: "required",
      especialidad: "required",
      domicilioLaboral: "required",
      telefonoLaboral: {
        required: true,
        number: true
      },
      horarioContacto: {
        required: true,
      },
      email: {
        required: true,
        // Specify that email should be validated
        // by the built-in "email" rule
        email: true
      },
      emailLaboral: {
        required: true,
        // Specify that email should be validated
        // by the built-in "email" rule
        email: true
      },
    },
    // Specify validation error messages
    messages: {
      nombre: "Por Favor Ingrese un nombre",
      apellido: "Por Favor Ingrese un apellido",
      nacimiento: "Por Favor Ingrese un nacimiento",
      dni: {
            required: "Por Favor Ingrese un DNI",
            minlength: "Ingrese al menos 8 numeros",
            maxlength: "No puede ingresar mas de 8 numeros",
            number: "Ingrese solo Numeros"
        },
      domicilio: "Por Favor Ingrese un domicilio",
      Telefono: {
            required: "Por Favor Ingrese un Telefono",
            number: "Ingrese solo Numeros"
        },
      celular: {
            required: "Por Favor Ingrese un Celular",
            number: "Ingrese solo Numeros"
        },
      estadoCivil: "Por Favor Ingrese un estado Civil",
      profesion: "Por Favor Ingrese un profesion",
      especialidad: "Por Favor Ingrese un especialidad",
      domicilioLaboral: "Por Favor Ingrese un domicilio Laboral",
      telefonoLaboral: {
            required: "Por Favor Ingrese un Telefono",
            number: "Ingrese solo Numeros"
        },
      horarioContacto: {
            required: "Por Favor Ingrese un Horario de Contacto",
        },
      email: {
            required: "Por Favor Ingrese un Email",
            email: "Ingrese un formato valido de Email"
        },
      emailLaboral: {
            required: "Por Favor Ingrese un Email",
            email: "Ingrese un formato valido de Email"
        },
    },
    // Make sure the form is submitted to the destination defined
    // in the "action" attribute of the form when valid
    submitHandler: function(form) {
            $('#formulariomodal').modal('show');
            formularioAdhesion();
            //form.submit();
    },
  });


  $("form[name='contactanos']").validate({
    // Specify validation rules
    rules: {
      // The key name on the left side is the name attribute
      // of an input field. Validation rules are defined
      // on the right side
      nombrec: "required",
      apellidoc: "required",
      domicilioc: "required",
      telefonoc: {
        required: true,
        number: true
      },
      mensajec: "required",
      emailc: {
        required: true,
        // Specify that email should be validated
        // by the built-in "email" rule
        email: true
      },
    },
    // Specify validation error messages
    messages: {
      nombrec: "Por Favor Ingrese un nombre",
      apellidoc: "Por Favor Ingrese un apellido",
      domicilioc: "Por Favor Ingrese un domicilio",
      telefonoc: {
            required: "Por Favor Ingrese un Telefono",
            number: "Ingrese solo Numeros"
        },
      mensajec: "Por Favor Ingrese un mensaje",
      emailc: {
            required: "Por Favor Ingrese un Email",
            email: "Ingrese un formato valido de Email"
        },
    },
    // Make sure the form is submitted to the destination defined
    // in the "action" attribute of the form when valid
    submitHandler: function(form) {
            $('#mensajemodal').modal('show');
            formularioContacto();
            //form.submit();
    },
  });

});

function formularioAdhesion(){
    var nombre = $('#nombre').val().toUpperCase();
    var apellido = $('#apellido').val().toUpperCase();
    var nacimiento = $('#nacimiento').val().toUpperCase();
    var dni = $('#dni').val().toUpperCase();
    var domicilio = $('#domicilio').val().toUpperCase();
    var Telefono = $('#Telefono').val().toUpperCase();
    var celular = $('#celular').val().toUpperCase();
    var email = $('#email').val().toLowerCase();
    var estadoCivil = $('#estadoCivil').val().toUpperCase();
    var profesion = $('#profesion').val().toUpperCase();
    var especialidad = $('#especialidad').val().toUpperCase();
    var domicilioLaboral = $('#domicilioLaboral').val().toUpperCase();
    var telefonoLaboral = $('#telefonoLaboral').val().toUpperCase();
    var horarioContacto = $('#horarioContacto').val().toUpperCase();
    var emailLaboral = $('#emailLaboral').val().toLowerCase();

    $.ajax({ //Como tengo que enviar el formulario a back end, tiene que ser jsonp para evitar cross-origin,
             // pero al ser jsonp solo se puede usar method GET
        type: "GET",
        url: "http://vps-1317973-x.dattaweb.com/adhesion/"
            +nombre+"/"
            +apellido+"/"
            +nacimiento+"/"
            +dni+"/"
            +domicilio+"/"
            +Telefono+"/"
            +celular+"/"
            +email+"/"
            +estadoCivil+"/"
            +profesion+"/"
            +especialidad+"/"
            +domicilioLaboral+"/"
            +telefonoLaboral+"/"
            +horarioContacto+"/"
            +emailLaboral, 
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        dataType: "jsonp", 
        success: function(json) //cuando finaliza la consulta
        {   
            $('#nombre').val('');
            $('#apellido').val('');
            $('#nacimiento').val('');
            $('#dni').val('');
            $('#domicilio').val('');
            $('#Telefono').val('');
            $('#celular').val('');
            $('#email').val('');
            $('#estadoCivil').val('');
            $('#profesion').val('');
            $('#especialidad').val('');
            $('#domicilioLaboral').val('');
            $('#telefonoLaboral').val('');
            $('#horarioContacto').val('');
            $('#emailLaboral').val(''); 
            $('#formulariomodal .modal-body').html('');
            $('#formulariomodal .modal-body').append('Fomulario de alta enviado correctamente <button type="button" class="btn btn-primary" style="background-color:#FF6F08;border-color: #FF6F08" data-dismiss="modal">Cerrar</button>');
        } 
    });
}


 

function formularioContacto(){
    var nombrec = $('#nombrec').val().toUpperCase();
    var apellidoc = $('#apellidoc').val().toUpperCase();
    var domicilioc = $('#domicilioc').val().toUpperCase();
    var telefonoc = $('#telefonoc').val().toUpperCase();
    var emailc = $('#emailc').val().toLowerCase(); 
    var mensajec = $('#mensajec').val().toUpperCase();

    $.ajax({ //Como tengo que enviar el formulario a back end, tiene que ser jsonp para evitar cross-origin,
             // pero al ser jsonp solo se puede usar method GET
        type: "GET",
        url: "http://vps-1317973-x.dattaweb.com/contacto/"
            +nombrec+"/"
            +apellidoc+"/"
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
            $('#nombrec').val('');
            $('#apellidoc').val('');
            $('#domicilioc').val('');
            $('#telefonoc').val('');
            $('#emailc').val('');
            $('#mensajec').val('');
            $('#mensajemodal .modal-body').html('');
            $('#mensajemodal .modal-body').append('Mensaje enviado correctamente <button type="button" class="btn btn-primary" style="background-color:#FF6F08;border-color: #FF6F08" data-dismiss="modal">Cerrar</button>');
    
        } 
    });
}