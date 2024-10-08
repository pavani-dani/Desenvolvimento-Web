<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Lista de Contatos</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Lista de contatos</h1>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/contatos", "root", "");

                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT nome, email, telefone, data_aniversario FROM contatos");

                while (rs.next()) {
                    String nome = rs.getString("nome");
                    String email = rs.getString("email");
                    String telefone = rs.getString("telefone");
                    Date aniversario = rs.getDate("data_aniversario");

                    out.println("<p>" + nome + " - " + email + " - " + telefone + " - " + aniversario + "</p>");
                }

                rs.close();
                stmt.close();
                conn.close();
            } catch (Exception e) {
                out.println("<p>Erro: " + e.getMessage() + "</p>");
                e.printStackTrace();
            }
        %>
        <a href="menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
