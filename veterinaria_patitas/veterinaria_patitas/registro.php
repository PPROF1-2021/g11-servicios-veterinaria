<?php
$nombre_formu=$_POST['nombre'];
$apellido_formu=$_POST['apellido'];
$fecha_formu=$_POST['fecha'];
$tel_formu=$_POST['tel'];
$cod_postal_formu=$_POST['cod_postal'];
$correo_formu=$_POST['correo'];
$contra_formu=$_POST['contra'];
$fecha_baja_formu=$_POST['0000-00-00']
$domicilio_formu=$_POST['domicilio'];
$dni_formu=$_POST['dni'];
$tipo_dni_formu=$_POST['tipo_dni'];

$destino="rominamolina_4@hotmail.com";

$asunto="Mensaje desde la pagina Veterinaria";

$cuerpo="Nombre: ".$nombre_formu."\r\n"."Apellido: ".$apellido_formu."\r\n"."Fecha: ".$fecha_formu."\r\n"."Tel: ".$tel_formu."\r\n"."Codigo Postal: ".$cod_postal_formu."\r\n"."Correo: ".$correo_formu."\r\n"."Contra: ".$contra_formu."\r\n"."Fecha de baja: ".$fecha_baja_formu."\r\n"."Domicilio: ".$domicilio_formu."\r\n"."DNI: ".$dni_formu."\r\n"."Tipo dni: ".$tipo_dni_formu."\r\n";


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
 $consulta = "INSERT INTO usuario (nombre,apellido,fecha,tel,cod_postal,correo,contra,fecha_baja,domicilio,dni,tipo_dni) VALUES ('$nombre_formu','$apellido_formu', '$fecha_formu','$tel_formu','$cod_postal_formu','$correo_formu','$contra_formu','$fecha_baja_formu','$domicilio_formu','$dni_formu','$tipo_dni_formu')";

//Usamos esas variables:
if (mysqli_query ($con,  $usuario)){
   // echo "<h3>Registro agregado.</h3>";
    header("Location: mensaje_envio.php");
   //  header("Location: index.html");kate
    } else {
    echo "<h3>No se agregó nuevo registro</h3>";
    echo "Error: " .  $usuario . "<br>" . mysqli_error($con);
 }
 mysqli_close($con);




?>