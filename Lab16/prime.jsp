<html>
<head>
    <title>Prime Checker</title>
</head>
<body>

<h2>Prime Number Checker</h2>

<form method="post">
    Enter Number: <input type="number" name="num">
    <input type="submit" value="Check">
</form>

<%
    String n = request.getParameter("num");

    if(n != null){
        int num = Integer.parseInt(n);
        boolean isPrime = true;

        if(num <= 1){
            isPrime = false;
        } else {
            for(int i = 2; i <= num/2; i++){
                if(num % i == 0){
                    isPrime = false;
                    break;
                }
            }
        }

        if(isPrime){
            out.println("<h3>" + num + " is Prime</h3>");
        } else {
            out.println("<h3>" + num + " is NOT Prime</h3>");
        }
    }
%>

</body>
</html>
