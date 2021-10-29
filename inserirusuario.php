<?php
include 'conexao.php';

$nome = $_POST['nome'];
$email = $_POST['email'];
$senha = $_POST['senha'];
$cidade = $_POST['cidade'];
$end = $_POST['endereco'];
$cep = $_POST['cep'];


// echo $nome.'<br>';
// echo $email.'<br>';
// echo $senha.'<br>';
// echo $cidade.'<br>';
// echo $end.'<br>';
// echo $cep.'<br>';

$consulta = $cn->query("select ds_email from tbl_usuario where ds_email ='$email'");
$exibe = $consulta->fetch((PDO::FETCH_ASSOC));

if($consulta->rowCount() == 1){
    header('location:erro1.php');
}else{
    $incluir = $cn->query("
        insert into tbl_usuario(nm_usuario,ds_email,ds_senha,ds_status,ds_endereco,ds_cidade,no_cep)
        values('$nome','$email','$senha','0','$end','$cidade','$cep');");
        header('location:ok.php');
}


?>
