<%-- 
    Document   : form
    Created on : 28/11/2019, 10:32:02
    Author     : beatriz.araujo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar  navbar-expand-lg navbar-dark bg-primary">
            <a class="navbar-brand" href="#">Cyberspace Webin</a>
            <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="../index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${linkTo[ProdutosController].lista}">Consultar Produtos</a>
                    </li>
                </ul>
        </nav>
        <br>
        <div class="row">
            <div class="col-sm-4">

            </div>
            <div class="card col-sm-4">
                <div class="card-header">
                    Adicionar Produto
                </div>
                <div class="col-md-12 center">
                    <form action="${linkTo[ProdutosController].salvar}">
                        <div class="form-group">
                            <input type="hidden" class="form-control" id="id" name="produto.id" value="${produto.id}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputProduto">Produto</label>
                            <input type="text" class="form-control" id="descricao" name="produto.descricao" 
                                   value="${produto.descricao}" placeholder="Descrição">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPreco">Preço</label>
                            <input type="text" class="form-control" id="preco" name="produto.preco" 
                                   value="${produto.preco}" placeholder="R$">
                        </div>
                        <button type="submit" class="btn btn-success" name="btnSalvar" class="btn btn-primary">Salvar</button>
                        <button type="reset" class="btn btn-primary" class="btn btn-danger" name="btnCancelar">Cancelar</button>
                    </form>
                </div>
                <br>
            </div>
            <div class="col-sm-4">
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
