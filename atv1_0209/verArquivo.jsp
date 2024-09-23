<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>

<% // Lê e exibe o conteúdo do arquivo de texto selecionado.
    String tipo = request.getParameter("tipo");
    String fileName = tipo + ".txt";
    String filePath = application.getRealPath(fileName);
    StringBuilder conteudo = new StringBuilder();

    try (InputStreamReader isr = new InputStreamReader(new FileInputStream(filePath), "UTF-8");
         BufferedReader br = new BufferedReader(isr)) {
        String line;
        while ((line = br.readLine()) != null) {
            conteudo.append(line).append("<br>");
        }
    } catch (IOException e) {
        conteudo.append("Erro ao ler o arquivo.");
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Arquivo</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Conteúdo do Arquivo - <%= tipo.replace("_", " ") %></h1>
        <p><%= conteudo.toString() %></p>
        <a href="menu.jsp">Voltar ao menu</a>
    </div>
</body>
</html>
