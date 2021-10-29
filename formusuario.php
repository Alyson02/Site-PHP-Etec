<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title>Minha Loja - Logon de usuário</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="jquery.mask.js"></script>


    <style>
    .navbar {
        margin-bottom: 0;
    }
    </style>

    <script>
    $(document).ready(function() {
        $("#cep").mask("00 000-000");
    });
    </script>

</head>





<body>

    <?php 
    require 'conexao.php';    
    require 'nav.php';
    require 'cabecalho.html';
    
    ?>


    <div class="container-fluid">

        <div class="row">

            <div class="col-sm-4 col-sm-offset-4">

                <h2>Cadastro de novo Cliente</h2>

                <form method="post" action="inserirusuario.php" name="logon">

                    <div class="form-group">

                        <label for="nome">Nome</label>
                        <input name="nome" type="text" class="form-control" required id="nome">
                    </div>


                    <div class="form-group">

                        <label for="email">E-mail</label>
                        <input name="email" type="email" class="form-control" required id="email">
                    </div>


                    <div class="form-group">

                        <label for="senha">Senha</label>
                        <input name="senha" type="password" class="form-control" required id="senha">
                    </div>

                    <div class="form-group">

                        <label for="endereco">Endereço</label>
                        <input name="endereco" type="text" class="form-control" required id="endereco">
                    </div>


                    <div class="form-group">

                        <label for="cidade">Cidade</label>
                        <input name="cidade" type="text" class="form-control" required id="cidade">
                    </div>


                    <div class="form-group">

                        <label for="cep">CEP</label>
                        <input name="cep" type="text" class="form-control" required id="cep">
                    </div>

                    <button type="submit" class="btn btn-lg btn-default">

                        <span class="glyphicon glyphicon-pencil"> Cadastrar</span>

                    </button>


                </form>

            </div>
        </div>
    </div>

    <?php require 'rodape.html' ?>




</body>

</html>