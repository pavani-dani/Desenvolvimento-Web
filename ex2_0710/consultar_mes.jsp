<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Consultar por Mês de Aniversário</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Consultar por Mês de Aniversário</h1>
        
        <form method="GET">
            <label for="mes">Mês (1-12):</label><br>
            <input type="number" name="mes" min="1" max="12" required><br><br>
            <input type="submit" value="Consultar">
        </form>
        
        <%
            String mesParam = request.getParameter("mes");
            if (mesParam != null && !mesParam.isEmpty()) {
                int mes = Integer.parseInt(mesParam);
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/contatos", "root", "");
                    
                    String sql = "SELECT * FROM contatos WHERE MONTH(data_aniversario) = ? ORDER BY DAY(data_aniversario)";
                    PreparedStatement stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, mes);
                    
                    ResultSet rs = stmt.executeQuery();
                    
                    if (rs.next()) {
                        out.println("<h2>Resultados:</h2>");
                        out.println("<table>");
                        out.println("<tr><th>Nome</th><th>Aniversário</th></tr>");
                        do {
                            out.println("<tr>");
                            out.println("<td>" + rs.getString("nome") + "</td>");
                            out.println("<td>" + rs.getDate("data_aniversario") + "</td>");
                            out.println("</tr>");
                        } while (rs.next());
                        out.println("</table>");
                    } else {
                        out.println("<p>Nenhum contato encontrado para o mês " + mes + "</p>");
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
