<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\FormularioAlta;
use App\FormularioContacto;
use DB;

Route::get('/', function () {
    return view('welcome');
});


//Route::get('/adhesion','FormularioAltaController@store'); 


use Illuminate\Http\Request;

Route::get('/adhesion/{nombre?}/{apellido?}/{nacimiento?}/{dni?}/{domicilio?}/{Telefono?}/{celular?}/{email?}/{estadoCivil?}/{profesion?}/{especialidad?}/{domicilioLaboral?}/{telefonoLaboral?}/{horarioContacto?}/{emailLaboral?}/', 
                    function 
                    ($nombre = null,
                    $apellido  = null, 
                    $fechaNacimiento = null,
                    $dni = null,
                    $domicilio = null,
                    $telefono = null,
                    $celular = null,
                    $mail = null,
                    $estadoCivil = null,
                    $profesion = null,
                    $especialidad = null,
                    $domicilioLaboral = null,
                    $telefonoLaboral = null,
                    $horarioContacto = null,
                    $mailLaboral = null,
                    Request $request) { //se usa request si o si para la repsuesta jsonp

                    $persona = new FormularioAlta();
                    $persona->nombre = $nombre;
                    $persona->apellido = $apellido;
                    $persona->fechaNacimiento = $fechaNacimiento;
                    $persona->dni = $dni;
                    $persona->domicilio = $domicilio;
                    $persona->telefono = $telefono;
                    $persona->celular = $celular;
                    $persona->mail = $mail;
                    $persona->estadoCivil = $estadoCivil;
                    $persona->profesion = $profesion;
                    $persona->especialidad = $especialidad;
                    $persona->domicilioLaboral = $domicilioLaboral;
                    $persona->telefonoLaboral = $telefonoLaboral;
                    $persona->horarioContacto = $horarioContacto;
                    $persona->mailLaboral = $mailLaboral;
                    DB::statement('insert into clientes 
                        (nombre,apellido,fechaNacimiento,dni,domicilio,telefono,celular,mail,estadoCivil,profesion,especialidad,domocilioLaboral,telefonoLaboral,horarioContacto,mailLaboral)
                        values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', 
                        [$nombre,$apellido,$fechaNacimiento,$dni,$domicilio,$telefono,$celular,$mail,$estadoCivil,$profesion,$especialidad,$domicilioLaboral,$telefonoLaboral,$horarioContacto,$mailLaboral]);
                    Mail::to('relq@clubhonorarios.com')
                    ->send(new App\Mail\FormularioAltaMail($persona));
                    return response() 
                            ->json([$persona])
                            ->withCallback($request->input('callback')); //formato de respuesta jsonp solo asi funciona 
});

Route::get('/contacto/{nombrec?}/{apellidoc?}/{domicilioc?}/{Telefonoc?}/{emailc?}/{mensajec?}/', 
                    function (
                        $nombrec = null,
                        $apellidoc  = null, 
                        $domicilioc = null,
                        $Telefonoc = null,
                        $emailc = null,
                        $mensajec = null,
                        Request $request) { //se usa request si o si para la repsuesta jsonp

                        $persona = new FormularioContacto();
                        $persona->nombre = $nombrec;
                        $persona->apellido = $apellidoc;
                        $persona->domicilio = $domicilioc;
                        $persona->telefono = $Telefonoc;
                        $persona->mail = $emailc;
                        $persona->mensaje = $mensajec;
                    Mail::to('relq@clubhonorarios.com')
                    ->send(new App\Mail\FormularioContactoMail($persona));
                    return response() 
                            ->json([$persona])
                            ->withCallback($request->input('callback')); //formato de respuesta jsonp solo asi funciona 
});


// Route::get('/contacto', function () {
//     Mail::to('masterk63@gmail.com')
//     ->send(new App\Mail\Contacto(['hola']));
// });

// Route::get('/formularioAlta', function () { 
//     $f = new App\FormularioAlta(); 
//     Mail::to('masterk63@gmail.com')
//     ->send(new App\Mail\FormularioAltaMail($f));
// }); 

// Route::get('/formularioAlta', function () {
//     return view('emails.formularioAlta');
// });


 
Route::get('/test', function () {
    return 'hola';
});