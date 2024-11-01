<%@ page import="data.Banco" %>
<%@ page import="model.livro" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Consultar livro</title>
</head>
<body>

<div>
    <h2>Consultar livro </h2>

    <form action="read.jsp" method="POST">
        <div>
            <label for="titulo">Título</label>
            <input type="text" id="titulo" name="titulo" placeholder="Digite o título do livro">
        </div>
        <button type="submit">Consultar</button>
    </form>

    <div>
        <%
            String titulo = request.getParameter("titulo");
            if (titulo != null) {
                Banco banco = new Banco();
                ArrayList<Livro> livros = dataBase.getBookByTitle(titulo);

                if (livros.isEmpty()) {
        %>
        <div>
         Não existe livro com esse título na base de dados"<%= titulo %>".
        </div>
        <%
        } else {
        %>
        <ul>
            <%
                for (Livro livro : livros) {
            %>
            <li>
                <strong>Título:</strong> <%= livro.getTitulo() %> <br>
                <strong>Autor:</strong> <%= livro.getAutor() %> <br>
                <strong>Exemplares:</strong> <%= livro.getExemplares() %>
            </li>
            <%
                }
            %>
        </ul>
        <%
                }
            }
        %>
    </div>
</div>

</body>
</html>