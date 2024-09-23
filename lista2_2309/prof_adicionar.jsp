<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>

<%
    ArrayList<String> professores = (ArrayList<String>) session.getAttribute("professores");

    if (professores == null) {
        professores = new ArrayList<>();
        session.setAttribute("professores", professores);
    }

    String nomeProfessor = request.getParameter("nome");
    if (nomeProfessor != null && !nomeProfessor.trim().isEmpty()) {
        professores.add(nomeProfessor);
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Adicionar Professor</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Adicionar Professor</h1>
        <form action="prof_adicionar.jsp" method="POST">
            <label for="nome">Nome do Professor:</label>
            <input type="text" id="nome" name="nome" required><br><br>
            <input type="submit" value="Adicionar">
        </form>
        <a href="prof_menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
