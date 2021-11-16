<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Veterinaria Patitas -Mensaje</title>
    <link rel="icon" href="img/favicon.png">
    <link rel="stylesheet" href="css/styles.css">
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <meta name="description" content="Web mensaje enviado" />
    <meta name="robots" content="index" />
    <meta name="googlebot" content="index" />
    <meta name="keywords"
        content="mensaje, concluido,  servicios veterinarios, veterinaria, animales, perros, servicios, mascotas" />
    <meta name="author" content="Priscilla Arianna MINGORANCE, Romina Gisela MOLINA, Lourdes MONTI LELOUTRE" />
    <meta name="copyright" content="Priscilla Arianna MINGORANCE, Romina Gisela MOLINA, Lourdes MONTI LELOUTRE" />
    <META HTTP-EQUIV="REFRESH" CONTENT="5;URL=https://veterinariapatita.000webhostapp.com/index.html">
</head>
<body>
        <!--Menú de navegacion-->
   <header class="hero">
       <nav class="nav-hero">
           <div class="container nav-container">
               <div class="logo">
                   <h2 class="logo-name"> Veterinaria Patitas </h2>
               </div>
               <div class="links">
                   <a href="index.html" class="link">Inicio</a>
                   <a href="productos.html" class="link">Productos</a>
                   <a href="contacto.html" class="link">Contacto</a>
                   <a href="registro.html" class="link">Registrarse</a>
                   
                   <a href="turnero.html" class="link">Turnero</a>

               </div>

           </div>
       </nav>
       <br>
   

       <div class="regis_exitoso">
<?php
$nombre_formu=$_POST['nombre'];
$apellido_formu=$_POST['apellido'];
$fecha_formu=$_POST['fecha'];
$tel_formu=$_POST['tel'];
$cod_postal_formu=$_POST['cod_postal'];
$correo_formu=$_POST['correo'];
$contra_formu=$_POST['contra'];
$fecha_baja_formu="0000-00-00";
$domicilio_formu=$_POST['domicilio'];
$dni_formu=$_POST['dni'];
$tipo_dni_formu=$_POST['tipo_dni'];


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
 
 $constatacion=("select * from usuario where correo_electronico='$correo_formu' and dni='$dni_formu'");
 $resultado=mysqli_query($con,$constatacion);
 $num=mysqli_num_rows($resultado);
 
 
 if ($num>0) {
           
         echo"Usuario Ya Registrado!";
     
     } else{
                
     

 $consulta = "INSERT INTO usuario (nombre,apellido,fecha_de_nacimiento,telefono,localidad_CP,correo_electronico,contrasena,fecha_de_baja,domicilio,dni,tipo_dni) VALUES ('$nombre_formu','$apellido_formu', '$fecha_formu','$tel_formu','$cod_postal_formu','$correo_formu','$contra_formu','$fecha_baja_formu','$domicilio_formu','$dni_formu','$tipo_dni_formu')";
   
//Usamos esas variables:
if (mysqli_query ($con,  $consulta)){
    
   
   echo "<h3>Usurio: $nombre_formu   $apellido_formu  </h3>";
   echo "<h3>DNI: $dni_formu  </h3>";
   echo "<h3>Email:  $correo_formu </h3>";
  
   
   echo "<h4>¡Fue Registrado Exitosamente!</h4>";
     
   // header("Location: mensaje_envio.php");
   //  header("Location: index.html");kate
    } else {
    echo "<h3>No se agregó nuevo registro</h3>";
    echo "Error: " .  $usuario . "<br>" . mysqli_error($con);
 }

}
 mysqli_close($con);

?>
</div>
    <!--Presentación y logo-->
       
       <section class="container hero-main">
           <div class="hero-textos" >
       
               <p class="copy">En 5 segundos, será re-direccionado<br> a la Pagina de INICIO</p><br>
               
           </div>
           <img src="img/logo.jpeg" alt="logo-patitas" class="img1">
       </section>
   </header>
<footer class="footer">
        
        <div class="contact">
            <div class="item-contact">
                <i class='bx bx-copyright contact-icon'></i>
                <h5 class="contact-title"> Copyright © 2021 - </br> Veterinaria Patitas </br> </br> Todos los derechos
                    reservados.</h5>

            </div>
            <div class="item-contact">
                <i class='bx bxs-phone contact-icon'></i>
                <h5 class="contact-title"> <a href="https://wa.me/+5493537687557" target="_blank">3537687557</a></h5>
            </div>
            <div class=" item-contact">
                <i class='bx bx-mail-send contact-icon'></i>
                <h5 class="contact-title"><a href="mailto:veterinaria.patitas@gmail.com?Subject=Interesado%20en%20su%20servicio" ">veterinaria.patitas@gmail.com</a>
                </h5>
            </div>
            <div class=" item-contact">
                        <i class='bx bx-map contact-icon'></i>
                        <h5 class="contact-title"> <a href="https://goo.gl/maps/Lxz724P9fqSjRZ2WA"
                                target="_blanck">Sucre 275
                                Córdoba, Argentina </a></h5>
            </div>
        </div>

    </footer>
</body>
</html>