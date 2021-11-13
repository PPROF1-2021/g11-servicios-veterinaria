<?php

// datos Xampp
//$datos_base=mysqli_connect("localhost", "id17593546_admin", "Romina123456.", "id17593546_veterinariapatitas");
// mysqli_connect(servidor_mysql, usuario_mysql, clave_mysql, nombre_base);

 $host="localhost";
 $usuario="id17593546_admin";
 $clave="Romina123456.";
 $basededatos="id17593546_veterinariapatitas";

 $datos_base = new mysqli($host,  $usuario,  $clave,  $basededatos);
  //  mysqli_query($conn , "SET character_set_result=utf8");
   // if($conn->connect_error){
   //die("Error de base de datos : " .  $conn->connect_error);
 // }

?>