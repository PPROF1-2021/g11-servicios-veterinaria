<?php

// datos Xampp
//$datos_base=mysqli_connect("localhost", "id17593546_root", "A]#Mpm(1Oy-|]mFw", "id17593546_veterinaria");
// mysqli_connect(servidor_mysql, usuario_mysql, clave_mysql, nombre_base);

 $host="localhost";
 $usuario="id17593546_admin";
 $clave="V>J?c3Enn0Ba!WC+";
 $basededatos="id17593546_veterinariapatitas";

 $conn = new mysqli($host,  $usuario,  $clave,  $basededatos);
    mysqli_query($conn , "SET character_set_result=utf8");
    if($conn->connect_error){
        die("Error de base de datos : " .  $conn->connect_error);
    }
?>