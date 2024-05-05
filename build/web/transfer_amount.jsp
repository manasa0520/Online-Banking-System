<%-- 
    Document   : transfer_amount
    Created on : 09-Mar-2024, 11:49:34 AM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page contentType="text/html" language="java" import="java.sql.*,java.util.*,javax.swing.*,com.tech.blog.helper.ConnectionClass"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transfer amount in own bank</title>
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
                    
                %>
                    <div class="container-fluid bg-info image-parent-div">
                        <div class="text-center">
                            <img src="images/pngegg.png" class="img-fluid image-div" alt="...">
                        </div>
                    </div>
                    <div class="">
                        <nav class="navbar navbar-expand-lg navbar-light bg-info">
                            <div class="px-1">
                                <a class="navbar-brand" href="index.jsp">Hello,<span class="text-white"><%out.print(session.getAttribute("user"));%></span></a>
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
                        <div class="container bg-dark mt-5">
                            <h5 class="text-white text-center">Deposit Amount in Bank Account</h5>        
                        </div>
                    </div>    
                    <div class="row pt-3">
                        <div class="col-lg-4 col-md-4 col-xl-4 col-sm-3 col-2"></div>
                        <div class="col-lg-4 col-md-4 col-xl-4 col-sm-6 col-8">
                            <form action="transfer_amnt1.jsp" method="POST">
                                <div class="mb-3">
                                    <h5 class="text-center">Account Holder name</h5>
                                    <input type="text" name="account_holder" class="form-control" readonly value="<%out.print(session.getAttribute("user"));%>">
                                </div>
                                <div class="mb-3">
                                    <h5 class="text-center">Account Number</h5>
                                    <input type="text" name="account_number" class="form-control" readonly value="<%
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

                                        }
                                        %>">
                                </div>
                                <div class="mb-3">
                                    <h5 class="text-center">To Transfer Account Number</h5>
                                    <input type="text" name="to_account_number" class="form-control" placeholder="16 no account number">
                                </div>
                                <div class="mb-3">
                                    <h5 class="text-center">To Transfer Account Holder name</h5>
                                    <input type="text" name="to_account_holder" class="form-control" placeholder="Name">
                                </div>
                                <div class="mb-3">
                                    <h5 class="text-center">Deposit Amount</h5>
                                    <input type="text" name="money" class="form-control" placeholder="Min 1 Rs.">
                                </div>
                                <div class="text-center">
                                    <button type="submit" name="button" class="btn btn-primary">Transfer Amount</button>
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
    </body>
</html>
