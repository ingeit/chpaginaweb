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
						<h3>CONTACTO</h3>
						<p class="lead">Ha recibido una nueva consulta</p>
						<!-- Callout Panel -->

						<!-- social & contact -->
						<table class="social" width="100%">
							<tr>
								<td>
									
										<h3>DATOS DE CONTACTO</h3>
											<p>
												Nombre: <?php echo e($formularioContacto->nombre); ?>

												</br>Apellido: <?php echo e($formularioContacto->apellido); ?>

												</br>Domicilio: <?php echo e($formularioContacto->domicilio); ?>

												</br>Telefono/Celular: <?php echo e($formularioContacto->telefono); ?>

												</br>Correo Electronico: <?php echo e($formularioContacto->mail); ?>

												</br>Mensaje: <?php echo e($formularioContacto->mensaje); ?>

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