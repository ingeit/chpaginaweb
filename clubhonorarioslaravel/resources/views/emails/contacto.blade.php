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
						<h3>CONTACTO</h3>
						<p class="lead">Ha recibido una nueva consulta</p>
						<!-- Callout Panel -->

						<!-- social & contact -->
						<table class="social" width="100%">
							<tr>
								<td>
									
										<h3>DATOS DE CONTACTO</h3>
											<p>
												Nombre: {{$formularioContacto->nombre}}
												</br>Apellido: {{$formularioContacto->apellido}}
												</br>Domicilio: {{$formularioContacto->domicilio}}
												</br>Telefono/Celular: {{$formularioContacto->telefono}}
												</br>Correo Electronico: {{$formularioContacto->mail}}
												</br>Mensaje: {{$formularioContacto->mensaje}}
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