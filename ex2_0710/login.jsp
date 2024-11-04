<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <form method="post" action="validar_login.jsp">
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required><br>
            
            <label for="senha">Senha:</label>
            <input type="password" name="senha" id="senha" required><br><br>

            <button type="submit">Entrar</button>
        </form>

        <a href="index.jsp">Voltar para o menu</a>
    </div>
</body>
</html>
