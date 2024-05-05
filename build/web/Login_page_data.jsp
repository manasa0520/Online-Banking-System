<%-- 
    Document   : Login_page_data
    Created on : 02-Mar-2024, 5:49:44 PM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page contentType="text/html" language="java" import="java.sql.*,java.util.*,javax.swing.*,com.tech.blog.helper.ConnectionClass"%>
<%--<%@page include="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String em=request.getParameter("email");
            String password=request.getParameter("password");
        %>
        <%
            try
            {
                ConnectionClass obj=new ConnectionClass();
                String q="select pin,name,email,passsword from signup1 where email='"+em+"' and passsword='"+password+"'";
                ResultSet rest=obj.stm.executeQuery(q);
                if(rest.next())
                {
                    session.setAttribute("user",rest.getString("name"));
                    session.setAttribute("email",rest.getString("email"));
                    session.setAttribute("pin",rest.getString("pin"));
                    response.sendRedirect("homepage.jsp");
                }
                else
                {
                    response.sendRedirect("error2.jsp");
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        %>
    </body>
</html>
