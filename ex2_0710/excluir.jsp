<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="conectar.jsp" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Excluir Contato</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Excluir Contato</h1>

        <form method="POST">
            <label for="nome">Contato a ser excluído:</label><br>
            <input type="text" name="nome" id="nome" required><br><br>
            <input type="submit" value="Excluir">
        </form>

        <%
            String nome = request.getParameter("nome");
            if (nome != null && !nome.isEmpty()) {
                try {
                    // Verificar se o contato existe
                    String verificaSql = "SELECT * FROM amigos WHERE nome = ?";
                    PreparedStatement verificaStmt = conexao.prepareStatement(verificaSql);
                    verificaStmt.setString(1, nome);
                    ResultSet rs = verificaStmt.executeQuery();

                    if (rs.next()) {
                        // O contato existe, então podemos prosseguir com a exclusão
                        String sql = "DELETE FROM amigos WHERE nome = ?";
                        PreparedStatement stmt = conexao.prepareStatement(sql);
                        stmt.setString(1, nome);

                        int linhasAfetadas = stmt.executeUpdate();

                        if (linhasAfetadas > 0) {
                            out.println("<p class='success-message'>Contato '" + nome + "' excluído com sucesso!</p>");
                        } else {
                            out.println("<p class='error-message'>Nenhum contato encontrado com o nome: " + nome + "</p>");
                        }

                        stmt.close();
                    } else {
                        out.println("<p class='error-message'>Nenhum contato encontrado com o nome: " + nome + "</p>");
                    }

                    verificaStmt.close();
                } catch (SQLException e) {
                    out.println("<p class='error-message'>Erro: " + e.getMessage() + "</p>");
                    e.printStackTrace();
                }
            }
        %>

        <a href="menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
