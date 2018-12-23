<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tickets</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
	 <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.css" />
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
	<script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
	
	<link type="text/css" rel="stylesheet"href="resources/css/style.css" />


<link type="text/css" rel="stylesheet"href="resources/css/my_profile.css" />






<script> 
	$(function(){
	  $("#header").load("header.jsp"); 
	  $("#footer").load("footer.jsp");
	});
	</script>

</head>
<body>

	<div id="header"></div>
<div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" class="avatar" alt="profile_pic"/>
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input type="file" name="file" class="file-upload"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h4>
                                        My Tickets
                                    </h4>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link" id="home-tab" data-toggle="tab" href="my_profile.jsp" role="tab" aria-controls="home" aria-selected="false">Profile Information</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" id="profile-tab" data-toggle="tab" href="my_tickets.jsp" role="tab" aria-controls="profile" aria-selected="true">My Tickets</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="transaction-tab" data-toggle="tab" href="account_transaction.jsp" role="tab" aria-controls="transaction" aria-selected="false">Account Transaction</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
	                    <div class="prf-set-btn">
	                         <a id="settings-tab" href="profile_settings.jsp">Profile Settings</a>
	                    </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                    	<div class="info">
                            <p>Balance: &nbsp&nbsp&nbsp Balance</p><br/>
                            <p>Events: &nbsp&nbsp&nbsp EventCount</p><br/>
                            <p>Tickets: &nbsp&nbsp&nbsp TicketCount</p>
                    	</div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="row">
								    	<div class="col-md-8 col-md-offset-2">
								    	    <div class="panel panel-default ticket-list">
								              <div class="panel-heading">
								                <h3 class="panel-title text-center">Ticket</h3>
								              </div>
								              <div class="panel-body ">
								                  <table class="table">
								                    <thead class='table-head'>
								                      <tr class='table-head'>
								                        <th>TICKET TYPE</th>
								                        <th>PRICE</th>
								                        <th>QUANTITY</th>
								                      </tr>
								                    </thead>
								                    <tbody>
								                      <tr>
								                        <td>John</td>
								                        <td>Doe</td>
								                        <td>john@example.com</td>
								                      </tr>
								                      <tr>
								                        <td>Mary</td>
								                        <td>Moe</td>
								                        <td>mary@example.com</td>
								                      </tr>
								                      <tr>
								                        <td>July</td>
								                        <td>Dooley</td>
								                        <td>july@example.com</td>
								                      </tr>
								                    </tbody>
								                  </table>    	
								              </div>
								            </div>
								    	</div>
									</div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
	<script>
              new WOW().init();
              </script>
	<script>
        $(window).scroll( function(){

 
          var topWindow = $(window).scrollTop();
          var topWindow = topWindow * 1.5;
          var windowHeight = $(window).height();
          var position = topWindow / windowHeight;
          position = 1 - position;
        
          $('#bottom').css('opacity', position);
        
        });

        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
            document.getElementById("main").style.display = "0";
            document.body.style.backgroundColor = "white";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            document.getElementById("main").style.marginRight= "0";
            document.body.style.backgroundColor = "white";
        }

 
     $(window).on("scroll", function() {
            if ($(this).scrollTop() > 10) {
                $("nav.navbar").addClass("mybg-dark");
                $("nav.navbar").addClass("navbar-shrink");
              

            } else {
                $("nav.navbar").removeClass("mybg-dark");
                $("nav.navbar").removeClass("navbar-shrink");
               
            }
            
      

        });
        
        $(function() {
  $('#bottom').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 500);
        return false;
      }
    }
  });
});


</script>
	<script>
    $(document).ready(function(){
      $(".fancybox").fancybox({
            openEffect: "none",
            closeEffect: "none"
        });
    });
</script>

</body>
</html>