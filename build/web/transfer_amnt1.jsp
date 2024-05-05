<%-- 
    Document   : transfer_amnt1
    Created on : 09-Mar-2024, 1:26:58 AM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page contentType="text/html" language="java" import="java.sql.*,java.util.*,javax.swing.*"%>
<%@ page contentType="text/html" language="java" import="com.email.durgesh.Email,com.tech.blog.helper.ConnectionClass"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name1=request.getParameter("account_holder");
            long number1=Long.parseLong(request.getParameter("account_number"));
            String name2=request.getParameter("to_account_holder");
            long number2=Long.parseLong(request.getParameter("to_account_number"));
            long amount_money=Long.parseLong(request.getParameter("money"));
            session.setAttribute("name11",name1);
            session.setAttribute("acc_no1",number1);
            session.setAttribute("name12",name2);
            session.setAttribute("acc_no2",number2);
            session.setAttribute("money1",amount_money);
            
            Random ran = new Random();
            int first3 = (ran.nextInt() % 9000) + 1000;
            int first5 = Math.abs(first3);
            
            session.setAttribute("otp1",first5);
            
            String email1=(String)session.getAttribute("email");
            try
            {

                Email email=new Email("bmanasa2005@gmail.com","password");
                email.setFrom("bmanasa2005@gmail.com","Word Bank INDIA");
                email.setSubject("this email is for Verification..");
                email.setContent("<h1>This is one time OTP </h1>"+first5,"text/html");
                email.addRecipient(email1);
                email.send();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            response.sendRedirect("otpprocess1.jsp");
        %>
    </body>
</html>
