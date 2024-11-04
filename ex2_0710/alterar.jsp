<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="conectar.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Alterar Dados do Amigo</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Alterar Dados do Amigo</h1>
        <%
            String amigoAlterar = request.getParameter("amigoalterar");
            String nome = "";
            String telefone = "";
            String endereco = "";
            Date dataAniversario = null;

            if (amigoAlterar != null && !amigoAlterar.isEmpty()) {
                try {
                    PreparedStatement stmt = conexao.prepareStatement("SELECT * FROM amigos WHERE nome = ?");
                    stmt.setString(1, amigoAlterar);
                    ResultSet rs = stmt.executeQuery();

                    if (rs.next()) {
                        nome = rs.getString("nome");
                        telefone = rs.getString("telefone");
                        endereco = rs.getString("endereco");
                        dataAniversario = rs.getDate("dataAniversario");
                    }
                    rs.close();
                    stmt.close();
                } catch (SQLException e) {
                    out.println("<p>Erro ao buscar dados: " + e.getMessage() + "</p>");
                }
            }
        %>
        <form method="post" action="salvarAlteracoes.jsp">
            <input type="hidden" name="nome" value="<%= nome %>">
            
            <label for="telefone">Telefone:</label>
            <input type="text" name="telefone" id="telefone" value="<%= telefone %>" required><br><br>

            <label for="endereco">Endereço:</label>
            <input type="text" name="endereco" id="endereco" value="<%= endereco %>" required><br><br>

            <label for="dataAniversario">Data de Aniversário:</label>
            <input type="date" name="dataAniversario" id="dataAniversario" 
                   value="<%= dataAniversario != null ? new java.text.SimpleDateFormat("yyyy-MM-dd").format(dataAniversario) : "" %>" 
                   required><br><br>

            <input type="submit" value="Atualizar">
        </form>
        <br>
        <a href="./menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
