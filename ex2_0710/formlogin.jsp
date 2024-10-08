<%@ page import="java.sql.*" %>
<%@ include file="conectar.jsp" %>
<html>
<head>
    <title>Cadastro</title>
    <link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
    <h2>Cadastro</h2>
    <form method="post" action="salvar_login.jsp">
        Email: <input type="email" name="email" required><br>
        Senha: <input type="password" name="senha" required><br>
        Nome: <input type="text" name="nome" required><br>
        Foto: <input type="text" name="foto" required><br>
        <input type="submit" value="Cadastrar">
    </form>
    <br/>
    <a href="./menu.jsp">Voltar para o Menu</a>
</body>
</html>
