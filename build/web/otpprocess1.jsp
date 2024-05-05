<%-- 
    Document   : otpprocess1
    Created on : 08-Mar-2024, 1:32:19 AM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page contentType="text/html" language="java" import="java.sql.*,java.util.*,javax.swing.*"%>
<%@ page contentType="text/html" language="java" import="com.email.durgesh.Email,com.tech.blog.helper.ConnectionClass"%>

<%
    String name1=(String)session.getAttribute("name11");
    String name2=(String)session.getAttribute("name12");
    long acc_no1=(Long)session.getAttribute("acc_no1");
    long acc_no2=(Long)session.getAttribute("acc_no2");
    long money=(Long)session.getAttribute("money1");
    int otp=(Integer)session.getAttribute("otp1");
    
//    String otpvalue=request.getParameter("otpvalue");
//    int enterOtp=Integer.parseInt(otpvalue);
        int pin2=0;
        long balance1=0;
        long balance2=0;

            String date=new java.util.Date().toString();
            String nm3=(String)session.getAttribute("pin");
            int pin1=Integer.parseInt(nm3);
            String operation1="Deposit";
            String operation2="Withdraw";

                try
                {
                    ConnectionClass obj=new ConnectionClass();
                    String q="select pin from signup3 where account_no='"+acc_no2+"'";
                    ResultSet rest=obj.stm.executeQuery(q);
                    if(rest.next())
                    {
                        pin2=Integer.parseInt(rest.getString("pin"));
                    }
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
                try
                {
                    ConnectionClass obj1=new ConnectionClass();
                    String q1="select balance from signup3 where pin='"+pin2+"'";
                    ResultSet rest=obj1.stm.executeQuery(q1);
                    if(rest.next())
                    {
                        balance2=Long.parseLong(rest.getString("balance"));
                    }
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
                try
                {
                    ConnectionClass obj2=new ConnectionClass();
                    String q2="select balance from signup3 where pin='"+pin1+"'";
                    ResultSet rest=obj2.stm.executeQuery(q2);
                    if(rest.next())
                    {
                        balance1=Long.parseLong(rest.getString("balance"));
                    }
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
                if(balance1<0)
                {
                    response.sendRedirect("error.jsp");
                }
                else
                {
                    long final_balance1=balance1-money;
                    long final_balance2=balance2+money;

                    try
                    {
                        ConnectionClass obj3=new ConnectionClass();
                        String q3="update signup3 SET balance='"+final_balance1+"' where pin='"+pin1+"'";
                        String q4="insert into history values('"+pin1+"','"+acc_no1+"','"+operation2+"','"+money+"','"+final_balance1+"','"+date+"')";
                        String q5="update signup3 SET balance='"+final_balance2+"' where pin='"+pin2+"'";
                        String q6="insert into history values('"+pin2+"','"+acc_no2+"','"+operation1+"','"+money+"','"+final_balance2+"','"+date+"')";
                        obj3.stm.executeUpdate(q3);
                        obj3.stm.executeUpdate(q4);
                        obj3.stm.executeUpdate(q5);
                        obj3.stm.executeUpdate(q6);
                        response.sendRedirect("transfer_amount.jsp");
                    }
                    catch(Exception e)
                    {
                        e.printStackTrace();
                    }
                }
%>
