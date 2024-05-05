<%-- 
    Document   : otpprocess
    Created on : 08-Mar-2024, 1:06:56 AM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page contentType="text/html" language="java" import="java.sql.*,java.util.*,javax.swing.*"%>
<%@ page contentType="text/html" language="java" import="com.email.durgesh.Email,com.tech.blog.helper.ConnectionClass"%>
<%
    String name=(String)session.getAttribute("name1");
    long acc_no=(Long)session.getAttribute("acc_no");
    long money=(Long)session.getAttribute("money");
    int otp=(Integer)session.getAttribute("otp");
    
    String otpvalue=request.getParameter("otpvalue");
//    int enterOtp=Integer.parseInt(otpvalue);
//    if(otp==enterOtp)
//    {
        if(money<=0)
        {
            response.sendRedirect("error4.jsp");
        }
        else
        {
            String date=new java.util.Date().toString();
            String nm3=(String)session.getAttribute("pin");
            int nm4=Integer.parseInt(nm3);
            String operation="Withdraw";
            try
            {
                ConnectionClass obj=new ConnectionClass();
                String q3="select balance from signup3 where pin='"+nm4+"'";
                ResultSet rest=obj.stm.executeQuery(q3);
                if(rest.next())
                {
                    long balance=Long.parseLong(rest.getString("balance"));
                    long final_balance=balance-money;

                    String q="update signup3 SET balance='"+final_balance+"' where pin='"+nm4+"'";
                    String q1="insert into history values('"+nm4+"','"+acc_no+"','"+operation+"','"+money+"','"+final_balance+"','"+date+"')";
                    obj.stm.executeUpdate(q);
                    obj.stm.executeUpdate(q1);
                    response.sendRedirect("withdrow.jsp");
                }
                else
                {
                    response.sendRedirect("error.jsp");
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
//    }
//    else
//    {
//        response.sendRedirect("error5.jsp");
//    }
%>
