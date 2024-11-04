<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="conectar.jsp" %>
<% 
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");

    if (email == null || senha == null || email.isEmpty() || senha.isEmpty()) {
        out.println("<h3>Erro: Campos obrigatórios não preenchidos!</h3>");
        out.println("<a href='login.jsp'>Tente novamente</a>");
    } else {
        try {
            PreparedStatement stmt = conexao.prepareStatement("SELECT * FROM login WHERE email = ? AND senha = ?");
            stmt.setString(1, email);
            stmt.setString(2, senha);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                response.sendRedirect("menu.jsp");
            } else {
                out.println("<h3>Erro: E-mail ou senha incorretos!</h3>");
                out.println("<a href='login.jsp'>Tente novamente</a>");
            }

            stmt.close();
            rs.close();

        } catch (SQLException e) {
            out.println("<h3>Erro ao acessar o banco de dados: " + e.getMessage() + "</h3>");
        }
    }
%>
