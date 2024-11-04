<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Cadastro</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Cadastro</h1>
        <form method="post" action="salvar_login.jsp">
            <label for="nome">Nome:</label>
            <input type="text" name="nome" id="nome" required><br>

            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required><br>

            <label for="senha">Senha:</label>
            <input type="password" name="senha" id="senha" required><br><br>

            <label for="confirmaSenha">Confirmar Senha:</label>
            <input type="password" name="confirmaSenha" id="confirmaSenha" required><br>

            <label for="foto">Foto:</label>
            <input type="text" name="foto" id="foto"><br>
            <button type="submit">Cadastrar</button>
        </form>
        <a href="./index.jsp">Voltar para o menu</a>
    </div>
</body>
</html>
