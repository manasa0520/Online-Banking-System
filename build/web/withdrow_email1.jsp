<%-- 
    Document   : withdrow_email1
    Created on : 09-Mar-2024, 12:57:14 AM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page contentType="text/html" language="java" import="java.sql.*,java.util.*,javax.swing.*"%>
<%@ page contentType="text/html" language="java" import="com.email.durgesh.Email,com.tech.blog.helper.ConnectionClass, com.tech.blog.helper.QRCodeGenerator"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String holder_name=request.getParameter("account_holder");
            long account_number=Long.parseLong(request.getParameter("account_number"));
            long amount_money=Long.parseLong(request.getParameter("money"));
            session.setAttribute("name1",holder_name);
            session.setAttribute("acc_no",account_number);
            session.setAttribute("money",amount_money);
            
//            Random ran = new Random();
//            int first3 = (ran.nextInt() % 9000) + 1000;
//            int first5 = Math.abs(first3);
//            
//            session.setAttribute("otp",first5);
//            String email1=(String)session.getAttribute("email");
//            new QRCodeGenerator(first5);
//            try
//            {
//
//                Email email=new Email("ankit10@gmail.com","password");
//                email.setFrom("ankit10@gmail.com","Word Bank INDIA");
//                email.setSubject("this email is for Verification..");
//                email.setContent("<h1>This is one time OTP </h1>"+first5,"text/html");
//                email.addRecipient(email1);
//                email.send();
//            }
//            catch(Exception e)
//            {
//                e.printStackTrace();
//            }
            response.sendRedirect("otpprocess.jsp");
        %>
    </body>
</html>
