<%@ page import="java.util.*" %>

<html>
<head><title>Employee Result</title></head>
<body>

<h2>Employee Details</h2>

<%
    String empid = request.getParameter("empid");
    String name = request.getParameter("name");
    String mobile = request.getParameter("mobile");
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
    String dob = request.getParameter("dob");
    String address = request.getParameter("address");
    String country = request.getParameter("country");

    String[] lang = request.getParameterValues("lang");
%>

<p><b>ID:</b> <%= empid %></p>
<p><b>Name:</b> <%= name %></p>
<p><b>Mobile:</b> <%= mobile %></p>
<p><b>Email:</b> <%= email %></p>
<p><b>Gender:</b> <%= gender %></p>
<p><b>DOB:</b> <%= dob %></p>
<p><b>Address:</b> <%= address %></p>
<p><b>Country:</b> <%= country %></p>

<p><b>Languages:</b>
<%
    if(lang != null){
        for(String l : lang){
            out.print(l + " ");
        }
    }
%>
</p>

</body>
</html>
