<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page contentType="text/html" language="java" import="java.sql.*,java.util.*,javax.swing.*,com.tech.blog.helper.ConnectionClass"%>
<%
    
    String holder_name=request.getParameter("account_holder");
    long account_number=Long.parseLong(request.getParameter("account_number"));
    long amount_money=Long.parseLong(request.getParameter("money"));
    String message=request.getParameter("message");
    if(amount_money<=0)
    {
        response.sendRedirect("error.jsp");
    }
    else
    {
        String date=new java.util.Date().toString();
        String nm3=(String)session.getAttribute("pin");
        int nm4=Integer.parseInt(nm3);
        String operation="Deposit";
        try
        {
            ConnectionClass obj=new ConnectionClass();

            String q3="select balance from signup3 where pin='"+nm4+"'";
            ResultSet rest=obj.stm.executeQuery(q3);
            if(rest.next())
            {
                long balance=Long.parseLong(rest.getString("balance"));
                long final_balance=balance+amount_money;

                String q="update signup3 SET balance='"+final_balance+"' where pin='"+nm4+"'";
                String q1="insert into history values('"+nm4+"','"+account_number+"','"+operation+"','"+amount_money+"','"+final_balance+"','"+date+"')";
                obj.stm.executeUpdate(q);
                obj.stm.executeUpdate(q1);
                response.sendRedirect("successfully.jsp");
            }
            else
            {
                response.sendRedirect("error3.jsp");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
%>
<!--    </body>
</html>-->
