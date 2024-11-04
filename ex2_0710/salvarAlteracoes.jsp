<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="conectar.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Salvando Alterações</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <%
            String nome = request.getParameter("nome");
            String telefone = request.getParameter("telefone");
            String endereco = request.getParameter("endereco");
            String dataAniversario = request.getParameter("dataAniversario");

            try {
                PreparedStatement stmt = conexao.prepareStatement(
                    "UPDATE amigos SET telefone = ?, endereco = ?, dataAniversario = ? WHERE nome = ?"
                );
                stmt.setString(1, telefone);
                stmt.setString(2, endereco);
                stmt.setDate(3, java.sql.Date.valueOf(dataAniversario));
                stmt.setString(4, nome);
                stmt.executeUpdate();
                stmt.close();
                out.println("<div class='success-message'>Dados alterados com sucesso!</div>");
            } catch (SQLException e) {
                out.println("<div class='error-message'>Erro ao atualizar dados: " + e.getMessage() + "</div>");
            }
        %>
        <br>
        <a href="./menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
