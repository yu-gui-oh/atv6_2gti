<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String nome = request.getParameter("nome");
            String cpf = request.getParameter("cpf");
            String tel = request.getParameter("tel");
            String nasc = request.getParameter("nasc");
        %>
        <h1><%=nome%> nasceu em <%=nasc%> e possui o CPF <%=cpf%>.</h1>
    </body>
</html>
