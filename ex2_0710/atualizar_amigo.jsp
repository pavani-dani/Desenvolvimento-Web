<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="conectar.jsp" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Atualizar Dados de Amigo</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Atualizar Dados de Amigo</h1>

        <%
            // Obtém os dados do formulário
            String nome = request.getParameter("nome");
            String telefone = request.getParameter("telefone");
            String endereco = request.getParameter("endereco");
            String dataAniversario = request.getParameter("data_aniversario");

            // Atualiza os dados no banco de dados
            if (nome != null && !nome.isEmpty()) {
                try {
                    String sql = "UPDATE amigos SET telefone = ?, endereco = ?, dataAniversario = ? WHERE nome = ?";
                    PreparedStatement stmt = conexao.prepareStatement(sql);
                    stmt.setString(1, telefone);
                    stmt.setString(2, endereco);
                    stmt.setDate(3, java.sql.Date.valueOf(dataAniversario));
                    stmt.setString(4, nome);

                    int rowsUpdated = stmt.executeUpdate();
                    if (rowsUpdated > 0) {
                        out.println("<p>Dados atualizados com sucesso!</p>");
                    } else {
                        out.println("<p>Nenhum dado foi atualizado.</p>");
                    }

                    stmt.close();
                } catch (SQLException e) {
                    out.println("<p>Erro ao atualizar dados: " + e.getMessage() + "</p>");
                }
            }
        %>

        <br>
        <a href="./menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
