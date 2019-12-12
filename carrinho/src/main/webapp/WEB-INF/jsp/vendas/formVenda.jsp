<%-- 
    Document   : formVenda
    Created on : 05/12/2019, 10:43:56
    Author     : beatriz.araujo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Webin</title>
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
                        <a class="nav-link" href="${linkTo[VendasController].lista}">Histórico de Vendas</a>
                    </li>
                </ul>
            </div>
        </nav>
        <br>




        <div class="row">
            <div class="col-sm-12">
            </div>
            <div class="card col-sm-12">
                <div class="card-header">
                    Registrar Venda
                </div>
                <div class="col-md-12">


                    <form action="${linkTo[VendasController].addItem}">

                        <c:forEach items="${listaProdutos}" var="p">

                            <input type="hidden"  id="id" name="itemVenda.produto.id" value="${p.id}">

                            <input type="text"  id="descrica" name="itemVenda.produto.descricao" value="${p.descricao}" placeholder="Descrição">

                            <input type="text" id="preco" name="itemVenda.produto.preco" value="${p.preco}" placeholder="R$">

                            <input type="text" name="itemVenda.quantidade" placeholder="Quant.">

                            <button type="submit" class="btn btn-success" name="btnSalvar" class="btn btn-primary">ADD</button>
                            <br>
                        </c:forEach>
                    </form>

                    <a href="${linkTo[VendasController].salvar}"><button type="submit" class="btn btn-success" name="btnSalvar" class="btn btn-primary">Salvar</button></a>
                    <button type="reset" class="btn btn-primary" class="btn btn-danger" name="btnCancelar">Cancelar</button>
                    </form>


                </div>
                <br>
            </div>
            <div class="col-sm-4">
            </div>
        </div>

        <c:forEach items="${vendase.itens}" var="i">

            <input type="text"  value="${i.produto.descricao}" placeholder="Descrição">
            <input type="text"  value="${i.produto.preco}" placeholder="R$">
            <input type="text" value="${i.quantidade}" placeholder="Quant.">
            <input type="text" value="${i.total()}" placeholder="Quant.">
            <br>
        </c:forEach>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
