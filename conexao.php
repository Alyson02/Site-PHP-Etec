<?php

    $servidor = "Localhost";
    $usuario = "ead";
    $senha = "123456";
    $banco = "db_EAD";

    $cn = new PDO("mysql:host=$servidor;dbname=$banco", $usuario, $senha);


?>