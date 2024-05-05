<%-- 
    Document   : otp2
    Created on : 07-Mar-2024, 1:31:42 AM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Enter OTP , has been Sent your mail id.</h3>
        <form action="otpprocess1.jsp" method="post">
            <input type="text" name="otpvalue"/>
            <input type="submit" value="submit" />
        </form>
    </body>
</html>
