<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>

<%
    ArrayList<String> professores = (ArrayList<String>) session.getAttribute("professores");

    String nomeBuscar = request.getParameter("nome");
    boolean encontrado = false;

    if (nomeBuscar != null && professores != null) {
        encontrado = professores.contains(nomeBuscar);
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Buscar Professor</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Buscar Professor</h1>
        <form action="prof_buscar.jsp" method="POST">
            <label for="nome">Nome do Professor:</label>
            <input type="text" id="nome" name="nome" required><br><br>
            <input type="submit" value="Buscar">
        </form>
        <% if (nomeBuscar != null) { %>
            <p><%= encontrado ? "Professor encontrado." : "Professor não encontrado." %></p>
        <% } %>
        <a href="prof_menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
