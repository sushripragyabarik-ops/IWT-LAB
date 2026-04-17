<html>
<head>
    <title>BMR Calculator</title>
</head>
<body>

<h2>BMR Calculator</h2>

<form method="post">

Age: <input type="number" name="age"><br><br>

Gender:
<select name="gender">
    <option value="male">Male</option>
    <option value="female">Female</option>
</select><br><br>

Height (cm): <input type="number" name="height"><br><br>
Weight (kg): <input type="number" name="weight"><br><br>

<input type="submit" value="Calculate">

</form>

<%
    String ageStr = request.getParameter("age");

    if(ageStr != null){
        int age = Integer.parseInt(ageStr);
        String gender = request.getParameter("gender");
        double height = Double.parseDouble(request.getParameter("height"));
        double weight = Double.parseDouble(request.getParameter("weight"));

        double bmr;

        if(gender.equals("male")){
            bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5;
        } else {
            bmr = (10 * weight) + (6.25 * height) - (5 * age) - 161;
        }

        out.println("<h3>Your BMR is: " + bmr + " calories/day</h3>");
    }
%>

</body>
</html>
