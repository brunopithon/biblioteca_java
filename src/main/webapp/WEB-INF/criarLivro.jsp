<%@ page import="data.Banco" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cadastrar Livro</title>
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
        .form-group label {
            font-weight: bold;
        }
        .btn-submit {
            width: 100%;
        }
        .message {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-center mb-4">Cadastrar Livro</h2>

    <%
        String livroId = request.getParameter("livroId");
        String livroTitulo = request.getParameter("livroTitulo");
        String livroAutor = request.getParameter("livroAutor");
        String livroEdicao = request.getParameter("livroEdicao");
        String livroEditora = request.getParameter("livroEditora");
        String anoPublicacao = request.getParameter("anoPublicacao");
        String codigoLivro = request.getParameter("codigoLivro");
        String numeroExemplares = request.getParameter("numeroExemplares");

        if (livroId == null) {
    %>

    <div class="form-container">
        <form action="create.jsp" method="POST">
            <div class="form-group">
                <label for="livroId">ID</label>
                <input type="text" class="form-control" id="livroId" name="livroId" placeholder="Informe o ID do livro">
            </div>
            <div class="form-group">
                <label for="livroTitulo">Título</label>
                <input type="text" class="form-control" id="livroTitulo" name="livroTitulo" placeholder="Informe o título do livro">
            </div>
            <div class="form-group">
                <label for="livroAutor">Autor</label>
                <input type="text" class="form-control" id="livroAutor" name="livroAutor" placeholder="Digite o nome do autor">
            </div>
            <div class="form-group">
                <label for="livroEdicao">Edição</label>
                <input type="text" class="form-control" id="livroEdicao" name="livroEdicao" placeholder="Digite a edição do livro">
            </div>
            <div class="form-group">
                <label for="livroEditora">Editora</label>
                <input type="text" class="form-control" id="livroEditora" name="livroEditora" placeholder="Digite a editora do livro">
            </div>
            <div class="form-group">
                <label for="anoPublicacao">Ano</label>
                <input type="text" class="form-control" id="anoPublicacao" name="anoPublicacao" placeholder="Digite o ano de publicação">
            </div>
            <div class="form-group">
                <label for="codigoLivro">Código</label>
                <input type="text" class="form-control" id="codigoLivro" name="codigoLivro" placeholder="Digite o código do livro">
            </div>
            <div class="form-group">
                <label for="numeroExemplares">Exemplares</label>
                <input type="text" class="form-control" id="numeroExemplares" name="numeroExemplares" placeholder="Digite o número de exemplares">
            </div>
            <button type="submit" class="btn btn-primary btn-submit">Enviar</button>
        </form>
    </div>

    <%
    } else {
        try {
           
            Banco banco = new Banco();
            banco.salvarLivro(livroId, livroTitulo, livroAutor, livroEditora, livroEdicao, anoPublicacao, codigoLivro, numeroExemplares);

            out.println("<div class='message alert alert-success'>Livro cadastrado com sucesso!</div>");
        } catch (Exception e) {
            out.println("<div class='message alert alert-danger'>Erro ao cadastrar livro.</div>");
        }
    %>

    <div class="text-center mt-3">
        <a href="menu.jsp" class="btn btn-secondary">Voltar ao Menu</a>
    </div>

    <%
        }
    %>
</div>

</body>
</html>
