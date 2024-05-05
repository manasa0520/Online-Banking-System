<%-- 
    Document   : Signup_page_data
    Created on : 02-Mar-2024, 11:08:58 PM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page contentType="text/html" language="java" import="java.sql.*,java.util.*,javax.swing.*,com.tech.blog.helper.ConnectionClass"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int pin=Integer.parseInt(request.getParameter("pin"));
            String fname=request.getParameter("fname");
            String fathername=request.getParameter("fathername");
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            String zip=request.getParameter("zip");
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            String date=request.getParameter("date");
            
            String religion=request.getParameter("religion");
            String catogery=request.getParameter("category");
            String education=request.getParameter("education");
            
            long account=Long.parseLong(request.getParameter("account"));
            String account_type=request.getParameter("account_type");
            long balance=Long.parseLong(request.getParameter("balance"));
            
            try
            {
                ConnectionClass obj1=new ConnectionClass();
                String q1="insert into signup1 values('"+pin+"','"+fname+"','"+fathername+"','"+city+"','"+state+"','"+zip+"','"+password+"','"+date+"','"+email+"')";
                String q2="insert into signup2 values('"+pin+"','"+religion+"','"+catogery+"','"+education+"')";
                String q3="insert into signup3 values('"+pin+"','"+account+"','"+account_type+"','"+balance+"')";
                obj1.stm.executeUpdate(q1);
                obj1.stm.executeUpdate(q2);
                obj1.stm.executeUpdate(q3);
                response.sendRedirect("Login_page.jsp");
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        %>
    </body>
</html>
