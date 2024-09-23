<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%
    ArrayList<String> professores = (ArrayList<String>) session.getAttribute("professores");

    if (professores == null || professores.isEmpty()) {
        professores = new ArrayList<>();
        session.setAttribute("professores", professores);
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Lista de Professores</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Lista de Professores</h1>
        <ul class="professor-list">
            <%
                if (professores.isEmpty()) {
            %>
                <li>Nenhum professor adicionado.</li>
            <%
                } else {
                    for (String professor : professores) {
            %>
                <li><%= professor %></li>
            <%
                    }
                }
            %>
        </ul>
        <a href="prof_menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
