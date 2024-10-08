<%@ page import="java.sql.*" %>
<%@ include file="conectar.jsp" %>

<%
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    String nome = request.getParameter("nome");
    String foto = request.getParameter("foto");

    try {
        PreparedStatement statement = conexao.prepareStatement("INSERT INTO login (email, senha, nome, foto) VALUES (?, ?, ?, ?)");
        statement.setString(1, email);
        statement.setString(2, senha);
        statement.setString(3, nome);
        statement.setString(4, foto);
        statement.executeUpdate();
        statement.close();

        out.println("<h3>Cadastro realizado com sucesso!</h3>");
        out.println("<a href='./menu.jsp'>Voltar para a página principal</a>");
    } catch (SQLException e) {
        out.println("<h3>Erro ao cadastrar: " + e.getMessage() + "</h3>");
        out.println("<a href='formulario_login.jsp'>Tente novamente</a>");
    }
%>
