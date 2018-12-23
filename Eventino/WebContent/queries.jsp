<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Eventino</title>

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
<link type="text/css" rel="stylesheet" href="resources/css/queries.css" />


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
	<div class="btns-qrs">
	<button onclick="showTable1()">Query 1</button>
	<button onclick="showTable2()">Query 2</button>
	<button onclick="showTable3()">Query 3</button>
	</div>
	<div class="table-content" id="tbl-cnt-1">
		<table class="container_table">
			<thead>
				<tr>
					<th><h1>Sites</h1></th>
					<th><h1>Views</h1></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Google</td>
					<td>9518</td>
					<td>6369</td>
					<td>01:32:50</td>
				</tr>
				<tr>
					<td>Twitter</td>
					<td>7326</td>
					<td>10437</td>
					<td>00:51:22</td>
				</tr>
			</tbody>
		</table>
		</div>
		<div class="table-content" id="tbl-cnt-2">
		<table class="container_table">
			<thead>
				<tr>
					<th><h1>Sites</h1></th>
					<th><h1>Views</h1></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Google</td>
					<td>9518</td>
					<td>6369</td>
					<td>01:32:50</td>
				</tr>
				<tr>
					<td>Twitter</td>
					<td>7326</td>
					<td>10437</td>
					<td>00:51:22</td>
				</tr>
			</tbody>
		</table>
		</div>
		<div class="table-content" id="tbl-cnt-3">
		<table class="container_table">
			<thead>
				<tr>
					<th><h1>Sites</h1></th>
					<th><h1>Views</h1></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Google</td>
					<td>9518</td>
					<td>6369</td>
					<td>01:32:50</td>
				</tr>
				<tr>
					<td>Twitter</td>
					<td>7326</td>
					<td>10437</td>
					<td>00:51:22</td>
				</tr>
			</tbody>
		</table>
		</div>

	<div id="ffot">
		<div id="footer"></div>
	</div>

    <script>
    var x
    function showTable1() {
    	  var x = document.getElementById("tbl-cnt-1");
    	  if (x.style.display === "none") {
    	    x.style.display = "block";
    	  } else {
    	    x.style.display = "none";
    	  }
    	}
    function showTable2() {
  	  var x = document.getElementById("tbl-cnt-2");
  	  if (x.style.display === "none") {
  	    x.style.display = "block";
  	  } else {
  	    x.style.display = "none";
  	  }
  	}
    function showTable3() {
  	  var x = document.getElementById("tbl-cnt-3");
  	  if (x.style.display === "none") {
  	    x.style.display = "block";
  	  } else {
  	    x.style.display = "none";
  	  }
  	}
        </script>
</body>
</html>
