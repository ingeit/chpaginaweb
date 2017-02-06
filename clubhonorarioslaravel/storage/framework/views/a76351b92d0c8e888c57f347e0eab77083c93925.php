<title>Formulario Alta</title>
	
<link rel="stylesheet" type="text/css" href="<?php echo e(asset('css/app.css')); ?>"/>

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
						<td><img src="<?php echo e(asset('img/logo-color.png')); ?>" /></td>
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
												Nombre: <?php echo e($formularioAlta->nombre); ?>

												</br>Apellido: <?php echo e($formularioAlta->apellido); ?>

												</br>Fecha de Nacimiento: <?php echo e($formularioAlta->fechaNacimiento); ?>

												</br>DNI: <?php echo e($formularioAlta->dni); ?>

												</br>Domicilio: <?php echo e($formularioAlta->domicilio); ?>

												</br>Telefono: <?php echo e($formularioAlta->telefono); ?>

												</br>Celular: <?php echo e($formularioAlta->celular); ?>

												</br>Correo Electronico: <?php echo e($formularioAlta->mail); ?>

												</br>Estado Civil: <?php echo e($formularioAlta->estadoCivil); ?>

											</p>
										<h3>DATOS PROFESIONALES</h3>
											<p>
												</br>Profesion: <?php echo e($formularioAlta->profesion); ?>

												</br>Especialidad: <?php echo e($formularioAlta->especialidad); ?>

												</br>Domicilio Laboral: <?php echo e($formularioAlta->domicilioLaboral); ?>

												</br>Telefono Laboral: <?php echo e($formularioAlta->telefonoLaboral); ?>

												</br>Horario de Contacto: <?php echo e($formularioAlta->horarioContacto); ?>

												</br>Email Laboral: <?php echo e($formularioAlta->mailLaboral); ?>

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