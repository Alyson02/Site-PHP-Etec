<?php 

session_start();
$cd_prod = $_GET['cd'];
unset($_SESSION['carrinho'][$cd_prod]);
header("Location:carrinho.php");




?>