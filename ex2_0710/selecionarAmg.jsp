<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="conectar.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Selecionar Amigo para Alteração</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Selecionar Amigo para Alteração</h1>
        <form method="post" action="alterar.jsp">
            <label for="amigoalterar">Nome:</label>
            <select name="amigoalterar" id="amigoalterar" required>
                <%
                    try {
                        PreparedStatement statement = conexao.prepareStatement("SELECT nome FROM amigos");
                        ResultSet listar = statement.executeQuery();
                        out.print("<option value='' selected>Escolha o contato para alterar</option>");
                        while (listar.next()) {
                            out.println("<option value='" + listar.getString("nome") + "'>" + listar.getString("nome") + "</option>");
                        }
                        listar.close();
                        statement.close();
                    } catch (SQLException e) {
                        out.println("<p>Erro ao listar amigos: " + e.getMessage() + "</p>");
                    }
                %>
            </select>
            <button type="submit">Buscar</button>
        </form>
        <br>
        <a href="./menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
