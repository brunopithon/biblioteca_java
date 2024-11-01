<%@ page import="data.Banco" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Atualização de Livro</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 20px;
    }
    h2 {
      color: #333;
    }
    .form-container {
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }
    label {
      display: block;
      margin: 10px 0 5px;
      font-weight: bold;
    }
    input {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }
    button {
      background-color: #5cb85c;
      color: white;
      padding: 10px 15px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    button:hover {
      background-color: #4cae4c;
    }
    .mensagem {
      margin-top: 20px;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      background-color: #e7f3fe;
      color: #31708f;
    }
  </style>
</head>
<body>

<div class="form-container">
  <h2>Atualizar Livro</h2>

  <%
    String tituloAntigo = request.getParameter("tituloAntigo");
    String tituloNovo = request.getParameter("tituloNovo");
    String autor = request.getParameter("autor");
    String edicao = request.getParameter("edicao");
    String editora = request.getParameter("editora");
    String anoPublicacao = request.getParameter("ano");
    String codigoLivro = request.getParameter("codigo");
    String quantidadeExemplares = request.getParameter("exemplares");

    if (tituloAntigo == null) {
  %>

  <form action="atualizar.jsp" method="POST">
    <div>
      <label for="tituloAntigo">Título Antigo</label>
      <input type="text" id="tituloAntigo" name="tituloAntigo" placeholder="Título antigo do livro" required>
    </div>
    <div>
      <label for="tituloNovo">Título Novo</label>
      <input type="text" id="tituloNovo" name="tituloNovo" placeholder="Novo título do livro" required>
    </div>
    <div>
      <label for="autor">Autor</label>
      <input type="text" id="autor" name="autor" placeholder="Nome do autor" required>
    </div>
    <div>
      <label for="edicao">Edição</label>
      <input type="text" id="edicao" name="edicao" placeholder="Número da edição" required>
    </div>
    <div>
      <label for="editora">Editora</label>
      <input type="text" id="editora" name="editora" placeholder="Nome da editora" required>
    </div>
    <div>
      <label for="ano">Ano de Publicação</label>
      <input type="text" id="ano" name="ano" placeholder="Ano de publicação" required>
    </div>
    <div>
      <label for="codigo">Código do Livro</label>
      <input type="text" id="codigo" name="codigo" placeholder="Código do livro" required>
    </div>
    <div>
      <label for="exemplares">Quantidade de Exemplares</label>
      <input type="text" id="exemplares" name="exemplares" placeholder="Quantidade de exemplares" required>
    </div>
    <button type="submit">Atualizar</button>
  </form>

  <%
    } else {
      try {
        Banco banco = Banco();
        Banco.atualizarLivro(tituloAntigo, tituloNovo, autor, edicao, anoPublicacao, codigoLivro, quantidadeExemplares);

        out.println("<div class='mensagem'>Livro atualizado com sucesso!</div>");
      } catch (Exception e) {
        out.println("<div class='mensagem' style='color: red;'>Erro ao atualizar livro. Verifique os dados inseridos.</div>");
      }
  %>

  <div></div>

  <%
      }
  %>
</div>

</body>
</html>
