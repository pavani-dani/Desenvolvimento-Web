<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="conectar.jsp" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Consultar por Nome</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Consultar por Nome</h1>
        
        <form method="GET">
            <label for="nome">Nome:</label><br>
            <input type="text" name="nome" required><br><br>
            <input type="submit" value="Consultar">
        </form>
        
        <%
            String nome = request.getParameter("nome");
            if (nome != null && !nome.isEmpty()) {
                // Verifica se a conexão foi estabelecida com sucesso
                if (conexao != null) {
                    try {
                        // Prepara a consulta SQL
                        String sql = "SELECT * FROM amigos WHERE nome LIKE ?";
                        PreparedStatement stmt = conexao.prepareStatement(sql);
                        stmt.setString(1, "%" + nome + "%");
                        
                        ResultSet rs = stmt.executeQuery();
                        
                        // Verifica se existem resultados
                        if (rs.next()) {
                            out.println("<h2>Resultados:</h2>");
                            out.println("<table>");
                            out.println("<tr><th>Nome</th><th>Email</th><th>Telefone</th><th>Aniversário</th></tr>");
                            do {
                                out.println("<tr>");
                                out.println("<td>" + rs.getString("nome") + "</td>");
                                out.println("<td>" + rs.getString("login") + "</td>");
                                out.println("<td>" + rs.getString("telefone") + "</td>");
                                out.println("<td>" + rs.getDate("dataAniversario") + "</td>");
                                out.println("</tr>");
                            } while (rs.next());
                            out.println("</table>");
                        } else {
                            // Mensagem quando nenhum contato é encontrado
                            out.println("<p>Nenhum contato encontrado com o nome \"" + nome + "\".</p>");
                        }
                        
                        // Fecha os recursos
                        rs.close();
                        stmt.close();
                    } catch (SQLException e) {
                        out.println("<p>Erro ao executar a consulta: " + e.getMessage() + "</p>");
                    }
                } else {
                    out.println("<p>Erro ao conectar ao banco de dados.</p>");
                }
            }
        %>

        <a href="menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
