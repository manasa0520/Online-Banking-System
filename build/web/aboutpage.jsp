<%-- 
    Document   : aboutpage
    Created on : 03-Mar-2024, 6:01:01 PM
    Author     : Manasa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <!--Css Link-->
    <link rel="stylesheet" href="CSS/login.css">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@700&display=swap" rel="stylesheet">

    <!-- font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />

</head>
    <body>
        <div class="container-fluid bg-info image-parent-div">
            <div class="text-center">
                <img src="images/pngegg.png" class="img-fluid image-div" alt="...">
            </div>
        </div>
        <div class="">
            <nav class="navbar navbar-expand-lg navbar-light bg-info">
                <div class="px-2">
                    <a class="navbar-brand" href="Login_page.jsp">Login</a>
                </div>
                <div class="">
                    <a class="navbar-brand" href="Signup_page.jsp">Sign up</a>
                </div>
                <div class="">
                    <a class="navbar-brand" href="aboutpage.jsp">About</a>
                </div>
                <div class="">
                    <a class="navbar-brand" href="#">Contact</a>
                </div>
            </nav>
        </div>
        <div class="container pt-5 heigth-cover">
        <h5 class="about-text-color">
            The Central concept of the application is to allow the customer's to service virtually using the internet 
            with out going to bank and allow customer to open new account, withdraw, deposit, close and getting balance 
            using the banking service, The information pertaining to the customer store on an RDBMS at the server side (Bank).
            The Bank services the customer according to the customer's intention and it updates and backups of each customer
            transaction according.
        </h5>
        <div class="container py-5 text-center">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-4">
                    <a href="www.instagran.com" class="navbar-brand">Instagram</a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-4">
                    <a href="www.facebook.com" class="navbar-brand">Facebook</a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-4">
                    <a href="www.youtube.com" class="navbar-brand">You tube</a>
                </div>
            </div>
        </div>
    </div>
    <footer class="pt-4">
        <div class="text-center bg-info">
            <h6 class="py-2">Copyright @Database Management System</h6>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    </body>
</html>
