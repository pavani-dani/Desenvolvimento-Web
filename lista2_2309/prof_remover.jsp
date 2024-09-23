<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>

<%
    ArrayList<String> professores = (ArrayList<String>) session.getAttribute("professores");

    String nomeRemover = request.getParameter("nome");
    if (nomeRemover != null && professores != null) {
        professores.remove(nomeRemover);
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Remover Professor</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Remover Professor</h1>
        <form action="professor_remover.jsp" method="POST">
            <label for="nome">Nome do Professor:</label>
            <input type="text" id="nome" name="nome" required><br><br>
            <input type="submit" value="Remover">
        </form>
        <a href="prof_menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
