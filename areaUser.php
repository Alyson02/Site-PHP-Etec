<!doctype html>

<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Minha Loja</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style>
	
	.navbar{
		margin-bottom: 0;
	}
	
	
	</style>
	
	
	
</head>

<body>	
	
	<?php
	
	session_start();

    if(empty($_SESSION['ID'])){
        header("location:formlogon.php");
    }

    $cd_Usuario = $_SESSION['ID'];

	include 'conexao.php';	
	include 'nav.php';
	include 'cabecalho.html';

    $consultaVenda = $cn->query("select * from vw_Venda where cd_cliente = '$cd_Usuario' group by no_ticket");
	
	
	?>
	
<div class="container-fluid">
	
    <div class="row" style="margin-top: 15px;">
        <h1 class="text-center">Minhas Compras</h1>
    </div>

	<div class="row" style="margin-top: 15px;">
		
		<div class="col-sm-1 col-sm-offset-1 h4"> <h4>Data</h4> </div>
		<div class="col-sm-2 h4"> <h4>Ticket</h4> </div>
				
	</div>
    
    
    <?php while($exibe_venda = $consultaVenda->fetch(PDO::FETCH_ASSOC)){?>

        <div class="row" style="margin-top: 15px;">
		
		<div class="col-sm-1 col-sm-offset-1"> <?php echo date('d/m/Y' , strtotime($exibe_venda['dt_venda'])); ?></div>
		<div class="col-sm-2"> <a href="ticket.php?ticket=<?php echo $exibe_venda['no_ticket']; ?>"> <?php echo $exibe_venda['no_ticket']; ?> </a></div>
				
	</div>

    <?php } ?>
	
	
</div>
	
	<?php
	
	include 'rodape.html';
	
	?>
	
</body>
</html>