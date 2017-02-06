<title>Formulario Alta</title>
	
<link rel="stylesheet" type="text/css" href="{{ asset('css/app.css') }}"/>

</head>
 
<body bgcolor="#FFFFFF">

<!-- HEADER -->
<table class="head-wrap" bgcolor="#999999">
	<tr>
		<td></td>
		<td class="header container" >
				
				<div class="content">
				<table bgcolor="#999999">
					<tr>
						<td><img src="{{ asset('img/logo-color.png') }}" /></td>
					</tr>
				</table>
				</div>
				
		</td>
		<td></td>
	</tr>
</table><!-- /HEADER -->


<!-- BODY -->
<table class="body-wrap">
	<tr>
		<td></td>
		<td class="container" bgcolor="#FFFFFF">

			<div class="content">
			<table>
				<tr>
					<td>
						<h3>Formulario de Alta</h3>
						<p class="lead">Datos del profesional o prestador de servicio:</p>
						<!-- Callout Panel -->

						<!-- social & contact -->
						<table class="social" width="100%">
							<tr>
								<td>
									
										<h3>DATOS PERSONALES</h3>
											<p>
												Nombre: {{$formularioAlta->nombre}}
												</br>Apellido: {{$formularioAlta->apellido}}
												</br>Fecha de Nacimiento: {{$formularioAlta->fechaNacimiento}}
												</br>DNI: {{$formularioAlta->dni}}
												</br>Domicilio: {{$formularioAlta->domicilio}}
												</br>Telefono: {{$formularioAlta->telefono}}
												</br>Celular: {{$formularioAlta->celular}}
												</br>Correo Electronico: {{$formularioAlta->mail}}
												</br>Estado Civil: {{$formularioAlta->estadoCivil}}
											</p>
										<h3>DATOS PROFESIONALES</h3>
											<p>
												</br>Profesion: {{$formularioAlta->profesion}}
												</br>Especialidad: {{$formularioAlta->especialidad}}
												</br>Domicilio Laboral: {{$formularioAlta->domicilioLaboral}}
												</br>Telefono Laboral: {{$formularioAlta->telefonoLaboral}}
												</br>Horario de Contacto: {{$formularioAlta->horarioContacto}}
												</br>Email Laboral: {{$formularioAlta->mailLaboral}}
											</p>
									
								</td>
							</tr>
						</table><!-- /social & contact -->
						
					</td>
				</tr>
			</table>
			</div><!-- /content -->
									
		</td>
		<td></td>
	</tr>
</table><!-- /BODY -->

</body>
</html>