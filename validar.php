<?php

if (!empty($_POST["btningresar"])){
    if (empty($_POST["usuario"]) and empty($_POST["password"])) {
        echo '<div class="alert alert-primary">LOS CAMPOS ESTAN VACIOS</div>';
    } else {
       $usuario=$_POST["usuario"];
       $clave=$_POST["password"];
       $sql=$conexion->query("select * from tbusuario where gmail=$usuario and clave=$clave");
       if ($datos=$sql->fetch_object()) {
        header("location:index.html");
       } else {
        echo '<div class="alert alert-primary">ACCESO DENEGADO</div>';
       }
       
    }
    
}

?>