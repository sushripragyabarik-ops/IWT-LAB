<%@ include file="header.jsp" %>

<h2>Contact Us</h2>

<form action="contactResult.jsp" method="post">

Name: <input type="text" name="name"><br><br>
Email: <input type="email" name="email"><br><br>
Phone: <input type="text" name="phone"><br><br>
Subject: <input type="text" name="subject"><br><br>
Message: <textarea name="message"></textarea><br><br>

<input type="submit" value="Send">

</form>

<%@ include file="footer.jsp" %>
