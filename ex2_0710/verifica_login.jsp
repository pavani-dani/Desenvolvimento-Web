<%@ page import="java.sql.*" %>
<%@ include file="conectar.jsp" %>

<%
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");

    try {
        PreparedStatement stmt = conexao.prepareStatement("SELECT * FROM login WHERE email = ? AND senha = ?");
        stmt.setString(1, email);
        stmt.setString(2, senha);
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            session.setAttribute("nome", rs.getString("nome"));
            session.setAttribute("foto", rs.getString("foto"));
            
            response.sendRedirect("menu.jsp");  
        } else {
            out.println("<h3>Erro: E-mail ou senha incorretos!</h3>");
            out.println("<a href='login.jsp'>Tente novamente.</a>");
        }

        rs.close();
        stmt.close();

    } catch (SQLException e) {
        out.println("<h3>Erro ao verificar login: " + e.getMessage() + "</h3>");
        out.println("<a href='login.jsp'>Tente novamente</a>");
    }
%>
