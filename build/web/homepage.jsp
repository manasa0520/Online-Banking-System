<%-- 
    Document   : homepage
    Created on : 06-Mar-2024, 2:33:20 PM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <!--Css Link-->
    <link rel="stylesheet" href="CSS/login.css">
    
    <!--<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@600&display=swap" rel="stylesheet">-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <!-- font cdn-->
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
                                <a class="navbar-brand" href="homepage.jsp">Hello,&nbsp<span class="text-white"><%out.print(session.getAttribute("user"));%></span></a>
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
                <%
            }
            else
            {
                response.sendRedirect("error.jsp");
            }
        %> 
        <marquee>
            <h1 class="mt-5 text-center">
            Welcome &nbsp <%out.print(session.getAttribute("user"));%>
            </h1>
            <P class="text-center pt-2">How May I help you Please Check Below.</p>
        </marquee>
        <section>
            <div class="container text-center">
                <h2 class="text-uppercase pt-5 pb-3">Our Bank Category</h2>
                <p class="small pb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi, sit?</p>
            </div>
            <div class="container-fluid">
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <div class="col">
                        <div class="card h-100">
                            <img src="images/bank1.jpg" class="card-img-top" alt="...">
                            <div class="card-body text-center">
                                <h5 class="card-title text-uppercase">Bank Security</h5>
                                <p class="card-text">A security is a financial instrument, typically any financial asset that can be traded. The nature of what can and can't be called a security generally depends on the jurisdiction in which the assets are being traded.</p>
                            </div>
                        <div class="card-footer">
                            <small class="text-muted">
                                <div class="d-flex justify-content-center">
                                    <a href="" class="icon-style">
                                        <i class="fa fa-facebook px-4" aria-hidden="true"></i>
                                    </a>
                                    <a href="" class="icon-style">
                                        <i class="fa fa-instagram px-4" aria-hidden="true"></i>
                                    </a>
                                    <a href="" class="icon-style">
                                        <i class="fa fa-twitter px-4" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </small>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="images/bank3.jpg" class="card-img-top" alt="...">
                        <div class="card-body text-center">
                            <h5 class="card-title text-uppercase">Money Transfer</h5>
                            <p class="card-text">When money is used to intermediate the exchange of goods and services, it is performing a function as a medium of exchange. It thereby avoids the inefficiencies of a barter system, such as the "coincidence of wants" problem. Money's most important usage is as a method for comparing the values of dissimilar objects.</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">
                                <div class="d-flex justify-content-center">
                                    <a href="" class="icon-style">
                                        <i class="fa fa-facebook px-4" aria-hidden="true"></i>
                                    </a>
                                    <a href="" class="icon-style">
                                        <i class="fa fa-instagram px-4" aria-hidden="true"></i>
                                    </a>
                                    <a href="" class="icon-style">
                                        <i class="fa fa-twitter px-4" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </small>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="images/bank5.png" class="card-img-top" alt="...">
                        <div class="card-body text-center">
                            <h5 class="card-title text-uppercase">Bank Loan</h5>
                            <p class="card-text">Common personal loans include mortgage loans, car loans, home equity lines of credit, credit cards, installment loans, and payday loans. The credit score of the borrower is a major component in and underwriting and interest rates (APR) of these loans.</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">
                                <div class="d-flex justify-content-center">
                                    <a href="" class="icon-style">
                                        <i class="fa fa-facebook px-4" aria-hidden="true"></i>
                                    </a>
                                    <a href="" class="icon-style">
                                        <i class="fa fa-instagram px-4" aria-hidden="true"></i>
                                    </a>
                                    <a href="" class="icon-style">
                                        <i class="fa fa-twitter px-4" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </small>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
         <!--tea facility start--> 

        <section class="facelity" id="facelity-id">
            <div class="container text-center">
                <h2 class="text-uppercase pt-5 pb-3">Bank Department</h2>
                <p class="small pb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi, sit?</p>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <img src="images/bank5.png" class="img-fluid rounded" alt="...">
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <h4 class="text-center text-capitalize mt-2">Travel time</h4>
                        <p class="text-center text-capitalize mt-1">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus mollitia iste fuga similique 
                            porro sequi hic nisi minus, tempora, ipsa explicabo possimus eveniet, harum quaerat accusantium et 
                            velit ut soluta? <br><br>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus mollitia iste fuga 
                            similique porro sequi hic nisi minus, tempora, ipsa explicabo possimus eveniet, harum quaerat accusantium 
                            et velit ut soluta?
                        </p>
                    </div>
                    <div class="row pt-4">
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <h4 class="text-center text-capitalize mt-2">Travel time</h4>
                            <p class="text-center text-capitalize mt-1">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus mollitia iste fuga similique 
                                porro sequi hic nisi minus, tempora, ipsa explicabo possimus eveniet, harum quaerat accusantium et 
                                velit ut soluta? <br><br>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus mollitia iste fuga 
                                similique porro sequi hic nisi minus, tempora, ipsa explicabo possimus eveniet, harum quaerat accusantium 
                                et velit ut soluta?
                            </p>
                        </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <img src="images/bank4.jpg" class="img-fluid rounded" alt="...">
                    </div>
                </div>
                <div class="row pt-4">
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <img src="images/bank2.png" class="img-fluid rounded" alt="...">
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <h4 class="text-center text-capitalize mt-2">Travel time</h4>
                        <p class="text-center text-capitalize mt-1">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus mollitia iste fuga similique 
                            porro sequi hic nisi minus, tempora, ipsa explicabo possimus eveniet, harum quaerat accusantium et 
                            velit ut soluta? <br><br>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus mollitia iste fuga 
                            similique porro sequi hic nisi minus, tempora, ipsa explicabo possimus eveniet, harum quaerat accusantium 
                            et velit ut soluta?
                        </p>
                    </div>
                </div>
            </div>
        </section>
<!--     tea facility end -->
        <footer class="pt-4">
            <div class="text-center bg-info">
                <h6 class="py-2">Copyright @Database Management System</h6>
            </div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    </body>
</html>
