<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>

<% //Recebe o nome e a idade do usuário do formulário, determina a classe eleitoral e grava o nome em um arquivo txt.
    String nome = request.getParameter("nome");
    int idade = Integer.parseInt(request.getParameter("idade"));
    String classeEleitoral = "";

    if (idade < 16) {
        classeEleitoral = "Não-eleitor";
    } else if (idade >= 18 && idade <= 65) { 
        classeEleitoral = "Eleitor obrigatório";
    } else if ((idade >= 16 && idade < 18) || idade > 65) {
        classeEleitoral = "Eleitor facultativo";
    }

    String filePath = "";
    if (classeEleitoral.equals("Não-eleitor")) {
        filePath = application.getRealPath("nao_eleitor.txt");
    } else if (classeEleitoral.equals("Eleitor obrigatório")) {
        filePath = application.getRealPath("eleitor_obrigatorio.txt");
    } else if (classeEleitoral.equals("Eleitor facultativo")) {
        filePath = application.getRealPath("eleitor_facultativo.txt");
    }

    try (OutputStreamWriter osw = new OutputStreamWriter(new FileOutputStream(filePath, true), "UTF-8");
         BufferedWriter bw = new BufferedWriter(osw);
         PrintWriter printWriter = new PrintWriter(bw)) {
        printWriter.println(nome);
    } catch (IOException e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Classe Eleitoral</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Classe Eleitoral</h1>
        <p><%= nome %> classificado como: <strong><%= classeEleitoral %></strong></p>
        <a href="index.jsp">Voltar ao formulário</a><br><br>
        <a href="menu.jsp">Ver arquivos</a>
    </div>
</body>
</html>
