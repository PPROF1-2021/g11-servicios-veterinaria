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
//$id=mysql_query("select IdAcceso from usuario where correo_electronico='$correo_formu' and contrasena='$contrasena_formu'");
//$fechaHora=getdate(YYYY-MM-DD);
if ($num>0) {
 
		header("Location: bienvenido.php");
     //   $IdAcceso= mysql
       // $consulta = "INSERT INTO login (IdAcceso, fechaHora) VALUES ('$id', '$fechaHora', )";
 
	} else{
	    	header("Location: errordeinicio.php");
//echo "<h1>INTENTA DE NUEVO, verifica tu email o contraseña</h1>";
 
//$consulta = "INSERT INTO contacto (nombreapellido, correo, telefono, motivo, mensaje) VALUES ('$nombre_formu', '$correo_formu', '$tel_formu','$motivo_formu', '$mensaje_formu')";

//Usamos esas variables:
//if (mysqli_query ($con,  $consulta)){
   //echo "Has Iniciado Sesion";
    
   //  header("Location: index.html");
   // } else {
    //echo "<h3>No se encontro registro de usuario</h3>";
   // echo "Error: " .  $consulta . "<br>" . mysqli_error($con);
 }
 mysqli_close($con);



?>
