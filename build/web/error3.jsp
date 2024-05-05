<%-- 
    Document   : error3
    Created on : 05-Mar-2024, 4:31:35 PM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>error</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <!--Css Link-->
        <link rel="stylesheet" href="CSS/login.css">
        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@700&display=swap" rel="stylesheet">

        <!-- font awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />
    
    </head>
    <body>
        <%
            if(session.getAttribute("user")!=null)
            {
                String nm3=(String)session.getAttribute("pin");
                int nm4=Integer.parseInt(nm3);
                
        %>
                <h1 class="text-danger">Sorry You balance did not fetch !</h1>
                <h6>If you want to check balance <a href="check_balance.jsp">Click here</a></h6>
                <h6>If you want to again deposit<a href="deposit.jsp">Click here</a></h6>
        <%
            }
        %>
    </body>
</html>
