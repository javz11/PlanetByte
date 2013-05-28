<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="lib/jquery.tools.js"></script>	
<script type="text/javascript" src="lib/jquery.custom.js"></script>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
<link href="estilos.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="shortcut icon" href="Imagenes/icono.jpg"/>
<title>PlanetByte</title>
</head>

<body>
	<div id="cuerpo">
    	<div id="banner">
        	<div class="logo">
           	  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="610" height="113" id="FlashID" title="PlanetByte">
            	  <param name="movie" value="Imagenes/banner.swf" />
            	  <param name="quality" value="high" />
            	  <param name="wmode" value="opaque" />
            	  <param name="swfversion" value="6.0.65.0" />
            	  <!-- Esta etiqueta param indica a los usuarios de Flash Player 6.0 r65 o posterior que descarguen la versión más reciente de Flash Player. Elimínela si no desea que los usuarios vean el mensaje. -->
            	  <param name="expressinstall" value="Scripts/expressInstall.swf" />
            	  <!-- La siguiente etiqueta object es para navegadores distintos de IE. Ocúltela a IE mediante IECC. -->
            	  <!--[if !IE]>-->
            	  <object type="application/x-shockwave-flash" data="Imagenes/banner.swf" width="610" height="113">
            	    <!--<![endif]-->
            	    <param name="quality" value="high" />
            	    <param name="wmode" value="opaque" />
            	    <param name="swfversion" value="6.0.65.0" />
            	    <param name="expressinstall" value="Scripts/expressInstall.swf" />
            	    <!-- El navegador muestra el siguiente contenido alternativo para usuarios con Flash Player 6.0 o versiones anteriores. -->
            	    <div>
            	      <h4>El contenido de esta página requiere una versión más reciente de Adobe Flash Player.</h4>
            	      <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Obtener Adobe Flash Player" /></a></p>
          	      </div>
            	    <!--[if !IE]>-->
          	    </object>
            	  <!--<![endif]-->
          	  </object>
          </div>
            <!-- Fin logo -->
            <div id="lineV"></div>
            <!-- Fin lineaV-->
            <div class="login">
            <div id="espacio"></div>
            	<form action="inicio.php" method="post" name="form1">
                	<div class="texto">
                    	Usuario
                    </div>
                    <div class="cajas">
                    	<input name="cedula" type="text" />
                    </div>
                    <div class="texto">
                    	Clave
                    </div>
                    <div class="cajas">
                    	<input name="clave" type="password" />
                    </div>
                    <div align="center" style="color:#F00"> 
					<input type="submit" name="button" id="button" value="Iniciar" /></div>
                </form>
                <div id="errorD">
                	<?
						if($_GET["nota"] == "incorrecto")
						{
							echo"Datos invalidos";
						}
					?>
                </div>
                <!-- Fin mensaje de datos incorrectos-->
                <div class="cajas" style="width:150px;">
                    	<div id="enlacesDer"><a href="registro.php">Registrarse</a></div>
                </div>
            </div>
            <!-- Fin login -->
        </div>
        <!-- Fin banner -->
        <div id="menu">
        	<a href="index.php" class="but">Inicio</a>
            <a href="#">Opcion2</a>
            <a href="#">Opcion3</a>
            <a href="#">Opcion4</a>
            <a href="#">Opcion5</a>
        </div>
        <div id="espacioG"></div>
        <!-- Fin Menu -->
        <div class="arriba">
        	<div class="scrollable">
            	<div class="items">
					<div class="item">
						<div class="imagen1"></div>									
					</div>
					<div class="item">
						<div class="imagen2"></div>						
					</div>
					<div class="item">
						<div class="imagen3"></div>						
					</div>
					<div class="item">
						<div class="imagen4"></div>
					</div>
				</div>
            </div>
        </div>
        <div class="top_bot">
			<div class="navi"></div>
		</div>
        <!-- Fin div de presentacion de Imágenes-->
        <div id="contenido_top"></div>
        <!-- Aqui va todo el contenido que queremos que valla en la pagina-->
            <div id="contenido">
            	<div id="espacio"></div>
            	<h1>Bienvenido a PlanetByte</h1>
                <h2>Subtitulos con h2</h2>
            	Aqui escribimos todo lo que necesitamos.....
                <div class="puntos"></div><br/>
            </div>
        <!-- Fin del contenido-->
        <div id="contenido_bot"></div>
        <div id="espacioG"></div>
        <!-- Inicio del pie de página-->
        <div id="contenido_top"></div>
        	<div id="pie">
            	<!-- Columna 1-->
            	<div id="b_col1">
                	<h1>PlanetByte</h1>
                    <ul>
                    	<li><a href="index.php" class="but">Inicio</a></li>
                    </ul>
                </div>
                <!-- Columna 2-->
                <div id="b_col2">
                	<h1>Columna 2</h1>
                </div>
                <!-- Columna 3-->
                <div id="b_col3">
                	<h1>Columna 3</h1>
                </div>
                <!-- Columna 4-->
                <div id="b_col4">
                	<h1>Cont&aacute;ctenos</h1>
                    PlanetByte<br />
                    Calle 3 N° 1-132<br />
                    Caneyes Parte baja - Palmira<br />
                    Telf: 0276 - 3563381<br />
                    Telf: 0416 - 7727604
              </div>
                <div style="clear: both; height:1px;"></div>
            </div>
        <div id="contenido_bot"></div>
        <!-- Fin de pie de página--> 
        <div id="espacioG"></div>
        <div id="footer">
		<p>PlanetByte &copy; 2013</p>
		</div>
    </div>
    <!-- Fin cuerpo -->
<script type="text/javascript">
swfobject.registerObject("FlashID");
    </script>
</body>
<!-- Fin body -->
</html>
