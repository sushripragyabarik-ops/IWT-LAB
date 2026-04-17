<%@ include file="header.jsp" %>

<h2>Submitted Data</h2>

<p>Name: <%= request.getParameter("name") %></p>
<p>Email: <%= request.getParameter("email") %></p>
<p>Phone: <%= request.getParameter("phone") %></p>
<p>Subject: <%= request.getParameter("subject") %></p>
<p>Message: <%= request.getParameter("message") %></p>

<%@ include file="footer.jsp" %>
