<?php
$contrasena_formu=$_POST['contrasena'];
$correo_formu=$_POST['correo'];



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

$contrasena_formu=$_POST['contrasena'];
$correo_formu=$_POST['correo'];



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
 
$constatacion=("select * from usuario where correo_electronico='$correo_formu' and contrasena='$contrasena_formu'");
$resultado=mysqli_query($con,$constatacion);
$num=mysqli_num_rows($resultado);

//$fechaHora=getdate(YYYY-MM-DD);
if ($num>0) {
    	$id=("select IdAcceso from usuario where correo_electronico='$correo_formu' and contrasena='$contrasena_formu'");
        $IdAcceso= mysqli_query($con,$id);
        $resultadoID= $IdAcceso->fetch_array()[0];
        $DateAndTime = date('y-m-d h:i:s', time());
        $consultadeinsercion = "INSERT INTO login (IdAcceso, fechaHora) VALUES ('$resultadoID', '$DateAndTime')";
        mysqli_query ($con,$consultadeinsercion);
 
		header("Location: bienvenido.php");
	
	} else{
	    	header("Location: errordeinicio.php");
	}
 mysqli_close($con);



?>
