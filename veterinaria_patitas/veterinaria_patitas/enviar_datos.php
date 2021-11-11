<?php
$nombre_formu=$_POST["nombre_apellido"];
$correo_formu=$_POST["correo"];
$tel_formu=$_POST["tel"];
$motivo_formu=$_POST["motivo"];
$mensaje_formu=$_POST["mensaje"];

$destino="rominamolina_4@hotmail.com";

$asunto="Mensaje desde la pagina Veterinaria";

$cuerpo="Nombre: ".$nombre_formu."\r\n"."Correo: ".$correo_formu."\r\n"."Tel: ".$tel_formu."\r\n"."Motivo: ".$motivo_formu."\r\n"."Mensaje: ".$mensaje_formu;

$remitente="From:<$correo_formu>";

mail($destino,$asunto,$cuerpo,$remitente);

include("conexion.php");
 $conn = mysqli_connect($host,$usuario,$clave,$basededatos) o die ("No se ha podido conectar al servidor de Base de datos");
si (! $conn) {
    die("Conexión fallida: " . mysqli_connect_error());
}



 $db = mysqli_select_db($con,  $basededatos) o morir ( "Upps! no se ha podido conectar a la base de datos" );
 $consulta = "INSERT INTO usuarios (nombreapellido, correo, telefono, motivo, mensaje) VALUES ('$nombre_formu', '$correo_formu', '$tel_formu', '$motivo_formu', '$mensaje_formu')";

Usamos esas variables:
if (mysqli_query ($con,  $consulta)){
    eco "<h3>Registro agregado.</h3>";
    } más {
    echo "<h3>No se agregó nuevo registro</h3>";
    echo "Error: " .  $consulta . "<br>" . mysqli_error($con);
 }
 mysqli_close($con);




include("conexion.php");

mysqli_query($datos_base, "INSERT INTO mensajes VALUES (0, '$nombre_formu', '$correo_formu', $tel_formu, '$motivo_formu', '$mensaje_formu')");*/

header("Location: mensaje_envio.php");


?>