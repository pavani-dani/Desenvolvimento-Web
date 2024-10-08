<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Excluir Contato</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Excluir contato</h1>
        
        <form method="POST">
            <label for="nome">Contato a ser excluído:</label><br>
            <input type="text" name="nome" required><br><br>
            <input type="submit" value="Excluir">
        </form>
        
        <%
            String nome = request.getParameter("nome");
            if (nome != null && !nome.isEmpty()) {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/amigos", "root", "");
                    
                    String sql = "DELETE FROM contatos WHERE nome = ?";
                    PreparedStatement stmt = conn.prepareStatement(sql);
                    stmt.setString(1, nome);
                    
                    int linhasAfetadas = stmt.executeUpdate();
                    
                    if (linhasAfetadas > 0) {
                        out.println("<p>Contato '" + nome + "' excluído com sucesso!</p>");
                    } else {
                        out.println("<p>Nenhum contato encontrado com o nome: " + nome + "</p>");
                    }
                    
                    stmt.close();
                    conn.close();
                } catch (Exception e) {
                    out.println("<p>Erro: " + e.getMessage() + "</p>");
                    e.printStackTrace();
                }
            }
        %>

        <a href="menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
