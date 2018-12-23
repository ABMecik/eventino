<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.eventino.web.model.EventModel"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event Info</title>


<!------ Bootstrap ---------->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!------ Include the above in your HEAD tag ---------->

<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.css" />
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
	media="screen">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>

<link type="text/css" rel="stylesheet" href="resources/css/style.css" />
<link type="text/css" rel="stylesheet" href="resources/css/event.css" />

<script src="https://code.jquery.com/jquery-3.3.1.js"
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

	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">

						<div class="preview-pic tab-content">
							<div class="tab-pane active" id="pic-1">
								<img
									src="https://www.kaft.com/static/images/cache/313/tisort_ozgurruh_1990_313_313.jpg?cacheID=1429301256000" />
							</div>
						</div>

					</div>
					<div class="details col-md-6">
						<div class="panel panel-default text-center">
							<h4>${event.getEvent_title()}</h4>
						</div>
						<div class="panel panel-default text-center">
							<div class="rating">
								<h1>
									<div class="panel-title">
										<span class="glyphicon glyphicon-info-sign"></span> TYPE
									</div>
								</h1>
								<hr>
								<h3>${event.getEvent_type()}</h3>
							</div>
						</div>
						<div class="panel panel-default text-center">
							<h3>
								<div class="panel-title">
									<span class="glyphicon glyphicon-comment"></span> Description
								</div>
							</h3>
							<hr>
							<h4>DESC</h4>
						</div>
						<div class="panel panel-default text-center">
							<h3>
								<div class="panel-title">
									<span class="glyphicon glyphicon-credit-card"></span> Money
								</div>
							</h3>
							<hr>
							<h2>
								<font color="purple"> <%
                        if (session.getAttribute("username") == null) {
                        	%> ${ticketNSP}$ <%
                        }
                        else{
                        	if (session.getAttribute("user-type").equals("Participant")) {
                        		
		                        if (session.getAttribute("participant-type").equals("Student")){
		                        	%> ${ticketSP}$ <%
		                        }else{
		                        	%> ${ticketNSP}$ <%
		                        }
		                        
                        	}else{
                        		%> Student : ${ticketSP}$ Normal :
									${ticketNSP}$ <%
                        	}
                        }
                        %>
							</h2>
							</font>
						</div>

						<%
                            if (session.getAttribute("username") == null) {}
                            else{
                            	if (session.getAttribute("user-type").equals("Participant")) {
                            		if (session.getAttribute("participant-type").equals("Student")){
                            			
                            		
                            %>
						<div class="panel panel-default text-center">
							<h3>
								<div class="panel-title">
									<span class="glyphicon glyphicon-scissors"></span> ticket type
								</div>
							</h3>
							<hr>
							</h3>
							<span class="input-group-addon"><select id="beden"
								name='beden' class="form-control" name="size">
									<option>Student</option>
									<option>Free Request</option>

							</select></span> <br>
						</div>
						</h3>

						<%
                            		}else{
                            			%>
						<div class="panel panel-default text-center">
							<h3>
								<div class="panel-title">
									<span class="glyphicon glyphicon-scissors"></span> ticket type
								</div>
							</h3>
							<hr>
							</h3>
							<span class="input-group-addon"><select id="beden"
								name='beden' class="form-control" name="size">
									<option>Normal</option>

							</select></span> <br>
						</div>
						</h3>
						<%
                            		}
                            	}
                            }
                    %>

						<div class="text-center">
							<button class="add-to-cart btn btn-default" type="button">
								<span class="glyphicon glyphicon-gift"></span> Buy
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>