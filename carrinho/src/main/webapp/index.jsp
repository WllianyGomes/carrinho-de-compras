<%-- 
    Document   : index
    Created on : 28/11/2019, 10:29:45
    Author     : beatriz.araujo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Webin</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-dark bg-primary">
            <a class="navbar-brand" href="#">Cyberspace Webin</a>
        </nav>
        <br>
        <div class="row">
            <div class="col-sm-2">
            </div>
            <div class="col-sm-4">
                <div class="card">
                    <figure class="figure">
                        <img class="card-img-top" src="https://www.fecomercio.com.br/upload/img/2016/09/02/57c9eaf093ccb-733_7.jpg" alt="Imagem de supermercado">
                    </figure>
                    <div class="card-body">
                        <h5 class="card-title">PRODUTOS</h5>
                        <p class="card-text">Cadastrar produtos e consultar estoque</p>
                        <a href="${linkTo[ProdutosController].form}" class="btn btn-primary">Cadastrar</a>
                        <a href="${linkTo[ProdutosController].lista}" class="btn btn-primary">Consultar</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card">
                    <figure class="figure">
                        <img class="card-img-top" src="https://arquivosbrasil.blob.core.windows.net/insulas/imagem/e-commerce-e-loja-virtual-nao-sao-a-mesma-coisa!-3586319.png" alt="Imagem de capa do card">
                    </figure>
                    <div class="card-body">
                        <h5 class="card-title">VENDAS</h5>
                        <p class="card-text">Adicionar venda e consultar histórico</p>
                        <a href="${linkTo[VendasController].formVenda}" class="btn btn-primary">Adicionar</a>
                        <a href="${linkTo[VendasController].lista}" class="btn btn-primary">Consultar</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
