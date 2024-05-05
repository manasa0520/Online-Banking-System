<%-- 
    Document   : account_details
    Created on : 03-Mar-2024, 5:26:12 PM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page contentType="text/html" language="java" import="java.sql.*,java.util.*,javax.swing.*,com.tech.blog.helper.ConnectionClass"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Details</title>
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
                <h5 class="text-white text-center pb-1">Your Current Account Details</h5>        
            </div>
        </div>
        <div class="row ">
            <div class="col-lg-3 col-md-3 col-xl-3 col-sm-3 col-2"></div>
            <div class="col-lg-6 col-md-6 col-xl-6 col-sm-6 col-8">
                <table class="table table-dark table-hover">
                    <thead>
                    <tr>
                        <th scope="col">First</th>
                        <th scope="col">Last</th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" class="text-danger">Pin</th>
                            <td>
                                <%
                                    out.print((String)session.getAttribute("pin"));
                                %>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-danger">Name</th>
                            <td>
                                <%
                                    try
                                    {
                                        ConnectionClass obj=new ConnectionClass();
                                        String q="select name from signup1 where pin='"+nm4+"'";
                                        ResultSet rest=obj.stm.executeQuery(q);
                                        if(rest.next())
                                        {
                                            String n1=rest.getString("name");
                                            out.print(n1);
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        e.printStackTrace();
                                    }
                                %>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-danger">Father Name</th>
                            <td>
                                <%
                                    try
                                    {
                                        ConnectionClass obj=new ConnectionClass();
                                        String q="select fname from signup1 where pin='"+nm4+"'";
                                        ResultSet rest=obj.stm.executeQuery(q);
                                        if(rest.next())
                                        {
                                            String n2=rest.getString("fname");
                                            out.print(n2);
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        e.printStackTrace();
                                    }
                                %>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-danger">City</th>
                            <td>
                                <%
                                    try
                                    {
                                        ConnectionClass obj=new ConnectionClass();
                                        String q="select city from signup1 where pin='"+nm4+"'";
                                        ResultSet rest=obj.stm.executeQuery(q);
                                        if(rest.next())
                                        {
                                            String n3=rest.getString("city");
                                            out.print(n3);
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        e.printStackTrace();
                                    }
                                %>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-danger">State</th>
                            <td>
                                <%
                                    try
                                    {
                                        ConnectionClass obj=new ConnectionClass();
                                        String q="select state from signup1 where pin='"+nm4+"'";
                                        ResultSet rest=obj.stm.executeQuery(q);
                                        if(rest.next())
                                        {
                                            String n4=rest.getString("state");
                                            out.print(n4);
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        e.printStackTrace();
                                    }
                                %>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-danger">Zip</th>
                            <td>
                                <%
                                    try
                                    {
                                        ConnectionClass obj=new ConnectionClass();
                                        String q="select zip from signup1 where pin='"+nm4+"'";
                                        ResultSet rest=obj.stm.executeQuery(q);
                                        if(rest.next())
                                        {
                                            String n5=rest.getString("zip");
                                            out.print(n5);
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        e.printStackTrace();
                                    }
                                %>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-danger">Date of Birth</th>
                            <td>
                                <%
                                    try
                                    {
                                        ConnectionClass obj=new ConnectionClass();
                                        String q="select birth from signup1 where pin='"+nm4+"'";
                                        ResultSet rest=obj.stm.executeQuery(q);
                                        if(rest.next())
                                        {
                                            String n6=rest.getString("birth");
                                            out.print(n6);
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        e.printStackTrace();
                                    }
                                %>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-danger">Email</th>
                            <td>
                                <%
                                    try
                                    {
                                        ConnectionClass obj=new ConnectionClass();
                                        String q="select email from signup1 where pin='"+nm4+"'";
                                        ResultSet rest=obj.stm.executeQuery(q);
                                        if(rest.next())
                                        {
                                            String n7=rest.getString("email");
                                            out.print(n7);
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        e.printStackTrace();
                                    }
                                %>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-danger">Religion</th>
                            <td>
                                <%
                                    try
                                    {
                                        ConnectionClass obj=new ConnectionClass();
                                        String q="select religion from signup2 where pin='"+nm4+"'";
                                        ResultSet rest=obj.stm.executeQuery(q);
                                        if(rest.next())
                                        {
                                            String n8=rest.getString("religion");
                                            out.print(n8);
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        e.printStackTrace();
                                    }
                                %>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-danger">Category</th>
                            <td>
                                <%
                                    try
                                    {
                                        ConnectionClass obj=new ConnectionClass();
                                        String q="select catogery from signup2 where pin='"+nm4+"'";
                                        ResultSet rest=obj.stm.executeQuery(q);
                                        if(rest.next())
                                        {
                                            String n9=rest.getString("catogery");
                                            out.print(n9);
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        e.printStackTrace();
                                    }
                                %>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-danger">Education</th>
                            <td>
                                <%
                                    try
                                    {
                                        ConnectionClass obj=new ConnectionClass();
                                        String q="select education from signup2 where pin='"+nm4+"'";
                                        ResultSet rest=obj.stm.executeQuery(q);
                                        if(rest.next())
                                        {
                                            String n10=rest.getString("education");
                                            out.print(n10);
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        e.printStackTrace();
                                    }
                                %>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-danger">Account Number</th>
                            <td>
                                <%
                                    try
                                    {
                                        ConnectionClass obj=new ConnectionClass();
                                        String q="select account_no from signup3 where pin='"+nm4+"'";
                                        ResultSet rest=obj.stm.executeQuery(q);
                                        if(rest.next())
                                        {
                                            String n11=rest.getString("account_no");
                                            out.print(n11);
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        e.printStackTrace();
                                    }
                                %>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-danger">Account Type</th>
                            <td>
                                <%
                                    try
                                    {
                                        ConnectionClass obj=new ConnectionClass();
                                        String q="select account_type from signup3 where pin='"+nm4+"'";
                                        ResultSet rest=obj.stm.executeQuery(q);
                                        if(rest.next())
                                        {
                                            String n12=rest.getString("account_type");
                                            out.print(n12);
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        e.printStackTrace();
                                    }
                                %>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-3 col-md-3 col-xl-3 col-sm-3 col-2"></div>
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
