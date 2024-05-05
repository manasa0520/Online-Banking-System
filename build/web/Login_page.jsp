<%-- 
    Document   : Login_page
    Created on : 02-Mar-2024, 11:02:11 PM
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
    <div class="container">
        <div class="text-center py-4">
            <h3 class="text-primary">Login</h3>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-xl-3"></div>
            <div class="col-lg-6 col-md-6 col-xl-6">
                <form action="Login_page_data.jsp" method="GET">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp">
                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <input type="password" class="form-control" name="password" id="exampleInputPassword1">
                    </div>
                    <div class="text-center">
                        <button type="submit" name="button" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
            <div class="col-lg-3 col-md-3 col-xl-3"></div>
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