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

@mail($destino,$asunto,$cuerpo,$remitente);

/*include("conexion.php");

mysqli_query($datos_base, "INSERT INTO mensajes VALUES (0, '$nombre_formu', '$correo_formu', $tel_formu, '$motivo_formu', '$mensaje_formu')");*/

header("Location: mensaje_envio.php");


?>