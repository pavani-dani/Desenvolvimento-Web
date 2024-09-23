<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    double salario = Double.parseDouble(request.getParameter("salario"));
    int cargo = Integer.parseInt(request.getParameter("cargo"));
    double novoSalario = salario;
    double aumento = 0.0;
    String descricaoCargo = "";

    switch (cargo) {
        case 101:
            aumento = 0.10;
            descricaoCargo = "Gerente";
            break;
        case 102:
            aumento = 0.20;
            descricaoCargo = "Engenheiro";
            break;
        case 103:
            aumento = 0.30;
            descricaoCargo = "Técnico";
            break;
        default:
            aumento = 0.40; // Aumento de 40% se o cargo não estiver na tabela
            descricaoCargo = "Outro Cargo";
            break;
    }

    novoSalario = salario + (salario * aumento);
    double diferenca = novoSalario - salario;
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Resultado Ex6</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Resultado: Novo Salário</h1>
        <p>Cargo: <%= descricaoCargo %></p>
        <p>Salário Antigo: R$ <%= String.format("%.2f", salario) %></p>
        <p>Salário Novo: R$ <%= String.format("%.2f", novoSalario) %></p>
        <p>Diferença: R$ <%= String.format("%.2f", diferenca) %></p>
        <a href="index.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
