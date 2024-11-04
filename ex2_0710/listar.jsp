<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ include file="conectar.jsp" %> 
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Lista de Amigos</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Lista de amigos</h1>
        <%
            try {
                Statement stmt = conexao.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT nome, login, telefone, dataAniversario FROM amigos");

                while (rs.next()) {
                    String nome = rs.getString("nome");
                    String login = rs.getString("login"); 
                    String telefone = rs.getString("telefone");
                    Date dataAniversario = rs.getDate("dataAniversario"); 

                    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                    String dataAniversarioFormatada = dataAniversario != null ? sdf.format(dataAniversario) : "Data não disponível";

                    out.println("<p>" + nome + " - " + login + " - " + telefone + " - " + dataAniversarioFormatada + "</p>");
                }

                rs.close();
                stmt.close();
            } catch (Exception e) {
                out.println("<p>Erro: " + e.getMessage() + "</p>");
                e.printStackTrace();
            }
        %>
        <a href="menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
