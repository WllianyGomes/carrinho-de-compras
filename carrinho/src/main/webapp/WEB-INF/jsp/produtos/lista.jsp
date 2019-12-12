<%-- 
    Document   : lista
    Created on : 28/11/2019, 11:05:43
    Author     : beatriz.araujo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                        <a class="nav-link" href="${linkTo[ProdutosController].form}">Adicionar Produto</a>
                    </li>
                </ul>
            </div>
        </nav>
        <br>            
        <div class="card">
            <h5 class="card-header">PRODUTOS DISPONÍVEIS</h5>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-10">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">DESCRIÇÃO</th>
                                    <th scope="col">PREÇO</th>
                                    <th scope="col" class="text-center" colspan="2">AÇÕES</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${produtoList}" var="produto">
                                    <tr>
                                        <th scope="row">${produto.id}</th>
                                        <td>${produto.descricao}</td>
                                        <td>${produto.preco}</td>
                                        <td>
                                            <a href="${linkTo[ProdutosController].editar}?id=${produto.id}">Editar</a>
                                        </td>
                                        <td>
                                            <a onclick="return window.confirm('Deseja excluir o produto: ${produto.descricao}?')"
                                               href="${linkTo[ProdutosController].excluir}?id=${produto.id}">Excluir</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
