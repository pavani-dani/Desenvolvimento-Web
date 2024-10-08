<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/amigos", "root", "");
                    
                    String sql = "SELECT * FROM contatos WHERE nome LIKE ?";
                    PreparedStatement stmt = conn.prepareStatement(sql);
                    stmt.setString(1, "%" + nome + "%");
                    
                    ResultSet rs = stmt.executeQuery();
                    
                    if (rs.next()) {
                        out.println("<h2>Resultados:</h2>");
                        out.println("<table>");
                        out.println("<tr><th>Nome</th><th>Email</th><th>Telefone</th><th>Aniversário</th></tr>");
                        do {
                            out.println("<tr>");
                            out.println("<td>" + rs.getString("nome") + "</td>");
                            out.println("<td>" + rs.getString("email") + "</td>");
                            out.println("<td>" + rs.getString("telefone") + "</td>");
                            out.println("<td>" + rs.getDate("data_aniversario") + "</td>");
                            out.println("</tr>");
                        } while (rs.next());
                        out.println("</table>");
                    } else {
                        out.println("<p>Nenhum contato encontrado com o nome " + nome + "</p>");
                    }
                    
                    rs.close();
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
