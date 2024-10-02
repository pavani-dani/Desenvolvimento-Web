<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Resultados do Questionário</h1>
        <p>1. Qual é a linguagem de programação mais utilizada para desenvolvimento web? Sua resposta: <%= session.getAttribute("resposta1") %></p>
        <p>2. O que é HTML? Sua resposta: <%= session.getAttribute("resposta2") %></p>
        <p>3. O que é CSS? Sua resposta: <%= session.getAttribute("resposta3") %></p>

        <h2>Pontuação Final</h2>
        <%
            int pontuacao = 0;
            String resposta1 = (String) session.getAttribute("resposta1");
            String resposta2 = (String) session.getAttribute("resposta2");
            String resposta3 = (String) session.getAttribute("resposta3");

            if ("c".equals(resposta1)) pontuacao++;
            if ("b".equals(resposta2)) pontuacao++;
            if ("c".equals(resposta3)) pontuacao++;

            out.print("Você acertou " + pontuacao + " de 3 perguntas.");
        %>
        <br/></br>
        <button onclick="reiniciar()">Responder Novamente</button>
    </div>

    <script>
        function reiniciar() {
            <% session.invalidate(); %>
            window.location.href = 'pergunta1.jsp';
        }
    </script>
</body>
</html>
