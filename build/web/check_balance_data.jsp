<%-- 
    Document   : check_balance_data
    Created on : 04-Mar-2024, 3:48:00 PM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page contentType="text/html" language="java" import="java.sql.*,java.util.*,javax.swing.*,com.tech.blog.helper.ConnectionClass"%>
<!DOCTYPE html>
<html>
    <head>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Balance</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <!--Css Link-->
        <link rel="stylesheet" href="CSS/login.css">
        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@700&display=swap" rel="stylesheet">

        <!-- font awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />

    </head>
    </head>
    <body>
        <%
            if(session.getAttribute("user")!=null)
            {
                String holder_name=request.getParameter("account_holder");
                long account_number=Long.parseLong(request.getParameter("account_number"));
                %>
                <div class="container-fluid bg-info image-parent-div">
                    <div class="text-center">
                        <img src="images/pngegg.png" class="img-fluid image-div" alt="...">
                    </div>
                </div>
                <div class="">
                    <nav class="navbar navbar-expand-lg navbar-light bg-info">
                        <div class="px-1">
                            <a class="navbar-brand" href="homepage.jsp">Hello,<span class="text-white"><%out.print(session.getAttribute("user"));%></span></a>
                        </div>
                        <div class="">
                            <a class="navbar-brand" href="account_details.jsp">Account Details</a>
                        </div>
                        <div class="">
                            <a class="navbar-brand" href="check_balance.jsp">Get Balance</a>
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
                    <div class="container bg-dark mt-5">
                        <h5 class="text-white text-center">Your Current Balance is Follow</h5>        
                    </div>
                </div>
                <div class="row pt-3">
                    <div class="col-lg-4 col-md-4 col-xl-4 col-sm-3 col-2"></div>
                    <div class="col-lg-4 col-md-4 col-xl-4 col-sm-6 col-8">
                        <form action="check_balance_data.jsp" method="POST">
                            <div class="mb-3">
                                <h5 class="">Account Holder name : 
                                    <b>
                                        <span>
                                            <%
                                                out.print(session.getAttribute("user"));
                                            %>
                                        </span>
                                    </b>
                                </h5>
                            </div>
                            <div class="mb-3">
                                <h5 class="">Account Number :
                                    <b>
                                        <span>
                                            <%
                                                String nm3=(String)session.getAttribute("pin");
                                                int nm4=Integer.parseInt(nm3);
                                                try
                                                {
                                                    ConnectionClass obj=new ConnectionClass();
                                                    String q="select account_no from signup3 where pin='"+nm4+"'";
                                                    ResultSet rest=obj.stm.executeQuery(q);
                                                    if(rest.next())
                                                    {
                                                        String account=rest.getString("account_no");
                                                        out.print(account);
                                                    }
                                                }
                                                catch(Exception e)
                                                {
                                                    e.printStackTrace();
                                                }
                                            %>
                                        </span>
                                    </b>
                                </h5>
                            </div>
                            <div class="mb-3">
                                <h5 class="">Current Balance :
                                    <b>
                                        <span class="text-danger">
                                            <%
                                                try
                                                {
                                                    ConnectionClass obj=new ConnectionClass();
                                                    String q="select balance from signup3 where pin='"+nm4+"'";
                                                    ResultSet rest=obj.stm.executeQuery(q);
                                                    if(rest.next())
                                                    {
                                                        long balance=Long.parseLong(rest.getString("balance"));
                                                        out.print(balance);
                                                    }
                                                }
                                                catch(Exception e)
                                                {
                                                    e.printStackTrace();
                                                }
                                            %>
                                        Rs.</span>
                                    </b>
                                </h5>
                            </div>
                            <div class="mb-2">
                                <p class="">If you want to Deposit then <a href="deposit.jsp">Click here</a></p>
                            </div>
                            <div class="mb-2">
                                <p class="">For Withdraw the Amount to your Account <a href="withdrow.jsp">Click here</a></p>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xl-4 col-sm-3 col-2"></div>
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
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    </body>
</html>
