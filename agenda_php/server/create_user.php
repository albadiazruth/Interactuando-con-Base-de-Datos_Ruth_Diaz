<?php
  require('./conector.php');

  $con = new ConectorBD(); 

  $response['conexion']=$con->initConexion($con->database); 

  if ($response['conexion']=='OK') { 

  	$conexion = $con->getConexion(); 

  	$insert = $conexion->prepare('INSERT INTO usuarios (email, nombre, password, fecha_nacimiento) VALUES (?,?,?,?)'); 

    $insert->bind_param("ssss", $email, $nombre, $password, $fecha_nacimiento); 
    $defaultPassword = '123456';
    $email = "albadiazruth@gmail.com";
	  $nombre = "Alba D. Ruth";
    $password = password_hash($defaultPassword, PASSWORD_DEFAULT); 
    $fecha_nacimiento = "1994-07-18";

    $insert->execute();

    $email = "rutu.justdance@gmail.com";
	  $nombre = "Rutu Dance";
    $password = password_hash($defaultPassword, PASSWORD_DEFAULT); 
    $fecha_nacimiento = "1994-07-18";

    $insert->execute();

    $email = "flow_stargirl@hotmail.com";
	  $nombre = "Ruth Diaz";
    $password = password_hash($defaultPassword, PASSWORD_DEFAULT); 
    $fecha_nacimiento = "1994-07-18";

    $insert->execute();
    $response['resultado']="1"; 
   $response['msg']= 'Interactuando con Base de Datos - Ruth Diaz'; 

  }else{
    $response['resultado']="0"; 
    $response['msg']= "No se pudo conectar a la base de datos"; 
  }

  echo json_encode($response);



?>
