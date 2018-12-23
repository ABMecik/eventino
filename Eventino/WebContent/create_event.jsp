<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en-US">
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html">
  <title>Event Creation</title>
  <link rel="shortcut icon" href="http://static.tmimgcdn.com/img/favicon.ico">
  <link rel="icon" href="http://static.tmimgcdn.com/img/favicon.ico">
  <link rel="stylesheet" type="text/css" media="all" href="resources/css/create_event.css">
  
  <!------ Bootstrap ---------->
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<!------ Include the above in your HEAD tag ---------->
	
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
	 <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.css" />
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
	<script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
	
	<link type="text/css" rel="stylesheet"href="resources/css/style.css" />
	<link type="text/css" rel="stylesheet"href="resources/css/pricing.css" />
	
	<script
    src="https://code.jquery.com/jquery-3.3.1.js"
    integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
    crossorigin="anonymous">
	</script>
	
</head>

<body>
  <div id="wrapper">
    <h1>Create Your Event</h1>
    <form name="CreatEventForm" id="creat-event-form" method="POST">
      <div class="col-2">
        <label>
          Name
          <input placeholder="What is your event name?" id="title" name="event_title" tabindex="1">
        </label>
      </div>
      <div class="col-2">
        <label>
          Date
          <input type="date" placeholder="When is your event?" id="time" name="event_time" tabindex="2">
        </label>
      </div>
      <div class="col-3">
        <label>
          Description
          <input placeholder="What is your event about?" id="textarea" name="event_desc" tabindex="3">
        </label>
      </div>
      <div class="col-3">
        <label>
          Address
          <input placeholder="Where is your event?" id="address" name="event_address" tabindex="4">
        </label>
      </div>
      <div class="col-3">
        <label>
          Type
          <select name="event_type" tabindex="5">
            <option>Conference</option>
            <option>Seminar</option>
            <option>Meeting</option>
            <option>Trade Show</option>
            <option>Networking</option>
            <option>Product Launch</option>
            <option>Party</option>
            <option>Trade Fair</option>
            <option>Award Ceremony</option>
            <option>Art</option>
          </select>
        </label>
      </div>
      <div class="col-4">
        <label>
          Publish Date
          <input type="date" placeholder="When do you want to publish your event?" id="publish_date" name="event_publish_date" tabindex="6">
        </label>
      </div>
      <div class="col-4">
        <label>
          Expire Date
          <input type="date" placeholder="When do you want to cancel your event?" id="expire_date" name="event_expire_date" tabindex="7">
        </label>
      </div>
      <div class="col-4">
        <label>
          Event Photo
          <input type="file" placeholder="Choose your event photo." name="event_photo" accept="image/gif, image/jpeg, image/png" tabindex="8">
        </label>
      </div>
      <div class="col-submit">
        <button class="submitbtn">Create Event</button>
      </div>
    </form>
  </div>
  
  
   <section class="testimonials bg-light" id="marketplace">
	<div class="container mb-5 mt-5">
    <div class="pricing card-deck flex-column flex-md-row mb-3">
        <div class="card card-pricing text-center px-3 mb-4">
            <span class="h6 w-60 mx-auto px-4 py-1 rounded-bottom bg-primary text-white shadow-sm">Starter</span>
            <div class="bg-transparent card-header pt-4 border-0">
                <h1 class="h1 font-weight-normal text-primary text-center mb-0" data-pricing-value="15">$<span class="price">10</span><span class="h6 text-muted ml-2"></span></h1>
            </div>
            <div class="card-body pt-0">
                <ul class="list-unstyled mb-4">
                    <li>Publish 1 Event</li>
					<li>Publish an Event up to 1 month</li>
					<li>No Support</li>
                </ul>
                <%
					if (session.getAttribute("username") == null) {
						
				%>
                <button type="button" class="btn btn-outline-secondary mb-3" disabled>Order now</button>
                <%
					}
					else{
           				%>
           				<form role="form" name="buyEvent" id="BuyEvent" method="POST" action="BuyEvent">
           					<input type="hidden" name="price" id="price" value=10>
           					<button type="submit" class="btn btn-outline-secondary mb-3">Order now</button>
           				</form>
           				<%
                	}
				%>
            </div>
        </div>
        <div class="card card-pricing popular shadow text-center px-3 mb-4">
            <span class="h6 w-60 mx-auto px-4 py-1 rounded-bottom bg-primary text-white shadow-sm">Professional</span>
            <div class="bg-transparent card-header pt-4 border-0">
                <h1 class="h1 font-weight-normal text-primary text-center mb-0" data-pricing-value="30">$<span class="price">18</span><span class="h6 text-muted ml-2"></span></h1>
            </div>
            <div class="card-body pt-0">
                <ul class="list-unstyled mb-4">
                    <li>Publish 1 Events</li>
					<li>Publish Events up to 3 months</li>
					<li>Limited Support</li>
                </ul>
                <%
					if (session.getAttribute("username") == null) {
						
				%>
                <button type="button" class="btn btn-outline-secondary mb-3" disabled>Order now</button>
                <%
					}
					else{
           				%>
           				<form role="form" name="buyEvent" id="BuyEvent" method="POST" action="BuyEvent">
           					<input type="hidden" name="price" id="price" value=18>
           					<button type="submit" class="btn btn-outline-secondary mb-3">Order now</button>
           				</form>
           				<%
                	}
				%>
            </div>
        </div>
        <div class="card card-pricing text-center px-3 mb-4">
            <span class="h6 w-60 mx-auto px-4 py-1 rounded-bottom bg-primary text-white shadow-sm">Business</span>
            <div class="bg-transparent card-header pt-4 border-0">
                <h1 class="h1 font-weight-normal text-primary text-center mb-0" data-pricing-value="45">$<span class="price">35</span><span class="h6 text-muted ml-2"></span></h1>
            </div>
            <div class="card-body pt-0">
                <ul class="list-unstyled mb-4">
                    <li>Publish 1 Events</li>
					<li>Publish Events up to 6 months</li>
					<li>UnlimitedSupport</li>
                </ul>
                <%
					if (session.getAttribute("username") == null) {
						
				%>
                <button type="button" class="btn btn-outline-secondary mb-3" disabled>Order now</button>
                <%
					}
					else{
           				%>
           				<form role="form" name="buyEvent" id="BuyEvent" method="POST" action="BuyEvent">
           					<input type="hidden" name="price" id="price" value=35>
           					<button type="submit" class="btn btn-outline-secondary mb-3">Order now</button>
           				</form>
           				<%
                	}
				%>
            </div>
        </div>
    </div>
</div>
    </section>
    

</body>
</html>