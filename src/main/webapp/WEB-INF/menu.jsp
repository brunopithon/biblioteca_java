<%@ page import="java.sql.DatabaseMetaData" %>
<%@ page import="java.awt.image.BandCombineOp" %><%--
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ page import="data.Banco" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Sistema de biblioteca</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
            text-align: center;
        }
        .menu-list {
            list-style: none;
            padding: 0;
        }
        .menu-list li {
            margin: 15px 0;
        }
        .menu-list a {
            text-decoration: none;
            color: #007bff;
            font-size: 18px;
        }
        .menu-list a:hover {
            text-decoration: underline;
        }
        h1, h2 {
            color: #343a40;
        }
    </style>
</head>
<body>
<%
    String login = request.getParameter("login");
    String password = request.getParameter("senha");

    if (login != null && password != null) {
        Banco db = new Banco();
        String senha = db.getPassword(login);

        if (password.equals(buscaUsuario)) {
            String nome = db.buscaUsuario(login);
%>
<div class="container">
    <h1>MENU PRINCIPAL</h1>
    <h2>Bem-vindo, <%= nome %>!</h2>
    <ul class="menu-list">
        <li><a href="create.jsp">Adicionar Livro</a></li>
        <li><a href="read.jsp">Consultar Livro</a></li>
        <li><a href="delete.jsp">Excluir Livro</a></li>
        <li><a href="update.jsp">Atualizar Livro</a></li>
        <li><a href="index.jsp">Sair</a></li>
    </ul>
</div>
<%
        } else {
%>
<div class="container">
    <h2>USUÁRIO OU SENHA INCORRETOS</h2>
    <a href='index.jsp'>Clique aqui para voltar</a>
</div>
<%
        }
    } else {
%>
<div class="container">
    <h2>Por favor, forneça login e senha.</h2>
    <a href='index.jsp'>Clique aqui para voltar</a>
</div>
<%
    }
%>
</body>
</html>
