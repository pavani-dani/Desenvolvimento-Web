<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>

<%
    ArrayList<String> professores = (ArrayList<String>) session.getAttribute("professores");

    if (professores == null || professores.isEmpty()) {
        out.println("<p>Nenhum professor cadastrado.</p>");
    } else {
        out.println("<ul>");
        for (String professor : professores) {
            out.println("<li>" + professor + "</li>");
        }
        out.println("</ul>");
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Visualizar Professores</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Lista de Professores</h1>
        <a href="professor_menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
