<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="data.Banco" %>

<html lang="pt-BR">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Deletar Livro</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .container {
            margin-top: 50px;
            max-width: 600px;
        }
        .form-container {
            padding: 20px;
            border-radius: 8px;
            background-color: #f8f9fa;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-center mb-4">Deletar Livro</h2>

    <%
        String titulo = request.getParameter("titulo");

        if (titulo == null) {
    %>

    <div class="form-container">
        <form action="delete.jsp" method="POST">
            <div class="form-group">
                <label for="title">Título do Livro</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="Informe o nome do livro a ser deletado" required>
            </div>
            <button type="submit" class="btn btn-danger btn-block">Excluir</button>
        </form>
    </div>

    <%
    } else {
        Banco banco = new Banco();
        banco.deletarLivro(titleBook);
    %>

    <div class="alert alert-success mt-4 text-center">
        Livro deletado!
    </div>

    <%
        }
    %>
</div>

</body>
</html>