<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Register</title>



	<!-- Bootstrap core CSS -->
    <link href="resources/vendors/index_vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    
    
    <!-- Icons font CSS-->
    <link href="resources/vendors/reg_log_vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="resources/vendors/reg_log_vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="resources/vendors/reg_log_vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="resources/vendors/reg_log_vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="resources/css/reg_log_main.css" rel="stylesheet" media="all">
    
    <!-- Custom styles for this template -->
    <link href="resources/css/index_one-page-wonder.min.css" rel="stylesheet">
    <link href="resources/css/index_one-page-wonder.css" rel="stylesheet">
            
    <script
    src="https://code.jquery.com/jquery-3.3.1.js"
    integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
    crossorigin="anonymous">
	</script>
    <script>
	$(function() {
		$("#header").load("header.jsp");
		$("#footer").load("footer.jsp"); 
	});
	</script>
</head>

<body>
<div id="header"></div>
    <div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Registration Info</h2>
                    <form method="POST" name="regForm" id="register-form" action="Register">
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Username" name="username">
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="password" placeholder="Password" name="password">
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="email" placeholder="Email" name="email">
                        </div>
                        <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="account-type">
                                    <option disabled="disabled" selected="selected">Account Type</option>
                                    <option>Participant</option>
                                    <option>Advertiser</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Phone" name="phone">
                        </div>
                        <div class="p-t-10">
                            <button class="btn btn--pill btn--green" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <div id="footer"></div>

    <!-- Jquery JS-->
    <script src="resources/vendors/reg_log_vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="resources/vendors/reg_log_vendor/select2/select2.min.js"></script>
    <script src="resources/vendors/reg_log_vendor/datepicker/moment.min.js"></script>
    <script src="resources/vendors/reg_log_vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="resources/js/reg_log_global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->