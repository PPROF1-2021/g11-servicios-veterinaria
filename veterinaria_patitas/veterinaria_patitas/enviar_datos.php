<?php
 
$nombre_formu=$_POST['nombre_apellido'];
$correo_formu=$_POST['correo'];
$tel_formu=$_POST['tel'];
$motivo_formu=$_POST['motivo'];
$mensaje_formu=$_POST['mensaje'];

$destino="rominamolina_4@hotmail.com";

$asunto="Mensaje desde la pagina Veterinaria";

$cuerpo="Nombre: ".$nombre_formu."\r\n"."Correo: ".$correo_formu."\r\n"."Tel: ".$tel_formu."\r\n"."Motivo: ".$motivo_formu."\r\n"."Mensaje: ".$mensaje_formu;

$remitente="From:<$correo_formu>";

mail($destino,$asunto, utf8_decode($cuerpo),$remitente);



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
 $consulta = "INSERT INTO contacto (nombreapellido, correo, telefono, motivo, mensaje) VALUES ('$nombre_formu', '$correo_formu', '$tel_formu','$motivo_formu', '$mensaje_formu')";

//Usamos esas variables:
if (mysqli_query ($con,  $consulta)){
   // echo "<h3>Registro agregado.</h3>";
    echo '<script language="javascript">alert("Operación Exitosa: Se completo Correctamente el Formulario");</script>';
    include('mensaje_envio.php');
    //header("Location: mensaje_envio.php");
   
   //  header("Location: index.html");
    } else {
    echo "<h3>Ups! no llego tu consulta, intentado de nuevo</h3>";
    echo "Error: " .  $consulta . "<br>" . mysqli_error($con);
 }
 mysqli_close($con);




?>