<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    if(email.equals("admin@gmail.com") && password.equals("admin")){
        response.sendRedirect("welcome.jsp");
    } else {
        out.println("<h3>Invalid Credentials</h3>");
    }
%>
