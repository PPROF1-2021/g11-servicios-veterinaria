<?php
$contrasena_formu=$_POST['contrasena'];
$dni_formu=$_POST['dni'];



include("conexion.php");
$host="localhost";
 $usuario="id17593546_admin";
 $clave="Romina123456.";
 $basededatos="id17593546_veterinariapatitas";
 $con = mysqli_connect($host,$usuario,$clave,$basededatos) or die ("No se ha podido conectar al servidor de Base de datos");
if (! $con) {
    die("Conexión fallida: " . mysqli_connect_error());
}

 $db = mysqli_select_db($con,  $basededatos) or die ( "Upps! no se ha podido conectar a la base de datos" );



include("conexion.php");
$host="localhost";
 $usuario="id17593546_admin";
 $clave="Romina123456.";
 $basededatos="id17593546_veterinariapatitas";
 $con = mysqli_connect($host,$usuario,$clave,$basededatos) or die ("No se ha podido conectar al servidor de Base de datos");
if (! $con) {
    die("Conexión fallida: " . mysqli_connect_error());
}

//proceso de baja
 $db = mysqli_select_db($con,  $basededatos) or die ( "Upps! no se ha podido conectar a la base de datos" );
 
$constatacion=("select * from usuario where correo_electronico='$correo_formu' and dni='$dni_formu'");
$resultado=mysqli_query($con,$constatacion);
$num=mysqli_num_rows($resultado);


if ($num>0) {
    	$id=("select IdAcceso from usuario where correo_electronico='$correo_formu' and dni='$dni_formu'");
        $IdAcceso= mysqli_query($con,$id);
        $resultadoID= $IdAcceso->fetch_array()[0];
        $DateAndTime = date('y-m-d h:i:s', time());
        $consultadeactualizacion = "UPDATE  usuario set fecha_de_baja=$DateAndTime  where IdAcceso=$resultadoID')";
        mysqli_query ($con,$consultadeactualizacion);
 
		Echo:("Lamentamos Su baja!");
	
	} else{
	    
        Echo:("No escontramos su registracion compruebe los datos");
	}
 mysqli_close($con);



?>
