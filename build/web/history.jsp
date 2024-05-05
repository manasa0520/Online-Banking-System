<%-- 
    Document   : history
    Created on : 06-Mar-2024, 2:42:39 PM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page contentType="text/html" language="java" import="java.sql.*,java.util.*,javax.swing.*,com.tech.blog.helper.ConnectionClass"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>transaction history</title>
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
        <div class="container-fluid bg-info image-parent-div">
            <div class="text-center">
                <img src="images/pngegg.png" class="img-fluid image-div" alt="...">
            </div>
        </div>
        <div class="">
            <nav class="navbar navbar-expand-lg navbar-light bg-info">
                <div class="px-1">
                    <a class="navbar-brand" href="index.jsp">Hello,&nbsp<span class="text-white"><%out.print(session.getAttribute("user"));%></span></a>
                </div>
                <div class="">
                    <a class="navbar-brand" href="account_details.jsp">Account Details</a>
                </div>
                <div class="">
                    <a class="navbar-brand" href="deposit.jsp">Deposit</a>
                </div>
                <div class="">
                    <a class="navbar-brand" href="withdrow.jsp">Withdraw</a>
                </div>
                <div class="">
                    <a class="navbar-brand" href="check_balance.jsp">Get Balance</a>
                </div>
                <div class="">
                    <a class="navbar-brand" href="transfer_amount.jsp">Transfer Amount</a>
                </div>
                <div class="">
                    <a class="navbar-brand" href="history.jsp">View Report</a>
                </div>
                <div class="">
                    <a class="navbar-brand" href="logout.jsp">LogOut</a>
                </div>
            </nav>
        </div>
        <div class="">
            <div class="container bg-dark my-5">
                <h5 class="text-white text-center pb-1">Your Account History Details</h5>        
            </div>
        </div>
        <div class="row ">
            <div class="col-lg-2 col-md-1 col-xl-2 col-sm-0 col-0"></div>
            <div class="col-lg-8 col-md-10 col-xl-8 col-sm-12 col-12">
                <table class="table table-dark table-striped">
                    <thead>
                        <tr>
                          <th scope="col">Account no</th>
                          <th scope="col">Operation</th>
                          <th scope="col">Amount</th>
                          <th scope="col">Balance</th>
                          <th scope="col">Date-Time</th>
                        </tr>
                    </thead>
                      <tbody>
                        
                            <%
                                int count=0;
                                try
                                {
                                    ConnectionClass obj=new ConnectionClass();
                                    String q="select count(pin) from history where pin='"+nm4+"'";
                                    ResultSet rest=obj.stm.executeQuery(q);
                                    rest.next();
                                    count=rest.getInt(1);
                                    String q1="select * from history where pin='"+nm4+"'";
                                    ResultSet rest1=obj.stm.executeQuery(q1);
                                    for(int i=0;i<count;i++)
                                    {
                                        while(rest1.next())
                                        {
                                            %><tr>
                                            <td><%out.print(rest1.getString("account_no"));%></td>
                                            <td><%out.print(rest1.getString("operation"));%></td>
                                            <td><%out.print(rest1.getString("amount"));%></td>
                                            <td><%out.print(rest1.getString("balance"));%></td>
                                            <td><%out.print(rest1.getString("date_time"));%></td>
                        </tr>
                                            <%
                                        }
                                    }
                                }
                                catch(Exception e)
                                {
                                    e.printStackTrace();
                                }
                            %>
                      </tbody>
                </table>
            </div>
            <div class="col-lg-2 col-md-1 col-xl-2 col-sm-0 col-0"></div>
        </div>
        <footer class="pt-4">
            <div class="text-center bg-info">
                <h6 class="py-2">Copyright @Database Management System</h6>
            </div>
        </footer>
            <%
            }
            else
            {
                response.sendRedirect("error.jsp");
            }
        %>
    </body>
</html>
