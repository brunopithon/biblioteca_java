<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Login - Biblioteca</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
       
        body {
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

      
        .login-container {
            background: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
        }

      
        .login-title {
            font-weight: 700;
            color: #343a40;
            margin-bottom: 20px;
        }

       
        .btn-primary {
            background-color: #007bff;
            border: none;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>


<div class="login-container mt-5">
    <h2 class="text-center login-title">Login</h2>
    <form action="menu.jsp" method="POST">
        <div class="form-group">
            <label for="login">Login</label>
            <input type="text" name="login" id="login" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="senha">Senha</label>
            <input type="password" name="senha" id="senha" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Entrar</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
