<?php
    include 'conexao.php';

    session_start(); // Iniciando ums sessão

    $vEmail = $_POST['txtEmail'];
    $vSenha = $_POST['txtSenha'];
    $consulta = $cn->query("select cd_usuario, nm_usuario, ds_email, ds_senha, ds_status from tbl_usuario where ds_email = '$vEmail' and ds_senha='$vSenha'");

    if($consulta->rowCount() == 1){
        $exibeUsuario = $consulta->fetch(PDO::FETCH_ASSOC);

        if($exibeUsuario['ds_status'] == 0){
            $_SESSION['ID'] = $exibeUsuario['cd_usuario'];
            $_SESSION['Status'] = 0;
            header('location:index.php');
        }else{
            $_SESSION['ID'] = $exibeUsuario['cd_usuario'];
            $_SESSION['Status'] = 1;
            header('location:index.php');
        }
    }else{
        header('location:erro.php');
    }

    //echo $vEmail.'<br>';
    //echo $vSenha;




?>