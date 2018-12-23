<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Events</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

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
	<script> 
	$(function(){
	  $("#header").load("header.jsp"); 
	  $("#footer").load("footer.jsp");
	});
	</script>
	
</head>
<body>

<div id="header"></div>
<div class="">
	<div class="container">
	    <div class="row">
	        <div class="col-lg-12 my-3">
	            <div class="pull-right">
	                <div class="btn-group">
	                    <button class="btn btn-info" id="list">
	                        List View
	                    </button>
	                    <button class="btn btn-danger" id="grid">
	                        Grid View
	                    </button>
	                </div>
	            </div>
	        </div>
	    </div> 
	    <div id="products" class="row view-group">
	                <div class="item col-xs-4 col-lg-4">
	                    <div class="thumbnail card">
	                        <div class="img-event">
	                            <img class="group list-group-image img-fluid" src="http://placehold.it/400x250/000/fff" alt="" />
	                        </div>
	                        <div class="caption card-body">
	                            <h4 class="group card-title inner list-group-item-heading">
	                                Product title</h4>
	                            <p class="group inner list-group-item-text">
	                                Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
	                                sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
	                            <div class="row">
	                                <div class="col-xs-12 col-md-6">
	                                    <p class="lead">
	                                        $21.000</p>
	                                </div>
	                                <div class="col-xs-12 col-md-6">
	                                    <a class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="item col-xs-4 col-lg-4">
	                    <div class="thumbnail card">
	                        <div class="img-event">
	                            <img class="group list-group-image img-fluid" src="http://placehold.it/400x250/000/fff" alt="" />
	                        </div>
	                        <div class="caption card-body">
	                            <h4 class="group card-title inner list-group-item-heading">
	                                Product title</h4>
	                            <p class="group inner list-group-item-text">
	                                Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
	                                sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
	                            <div class="row">
	                                <div class="col-xs-12 col-md-6">
	                                    <p class="lead">
	                                        $21.000</p>
	                                </div>
	                                <div class="col-xs-12 col-md-6">
	                                    <a class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="item col-xs-4 col-lg-4">
	                    <div class="thumbnail card">
	                        <div class="img-event">
	                            <img class="group list-group-image img-fluid" src="http://placehold.it/400x250/000/fff" alt="" />
	                        </div>
	                        <div class="caption card-body">
	                            <h4 class="group card-title inner list-group-item-heading">
	                                Product title</h4>
	                            <p class="group inner list-group-item-text">
	                                Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
	                                sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
	                            <div class="row">
	                                <div class="col-xs-12 col-md-6">
	                                    <p class="lead">
	                                        $21.000</p>
	                                </div>
	                                <div class="col-xs-12 col-md-6">
	                                    <a class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="item col-xs-4 col-lg-4">
	                    <div class="thumbnail card">
	                        <div class="img-event">
	                            <img class="group list-group-image img-fluid" src="http://placehold.it/400x250/000/fff" alt="" />
	                        </div>
	                        <div class="caption card-body">
	                            <h4 class="group card-title inner list-group-item-heading">
	                                Product title</h4>
	                            <p class="group inner list-group-item-text">
	                                Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
	                                sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
	                            <div class="row">
	                                <div class="col-xs-12 col-md-6">
	                                    <p class="lead">
	                                        $21.000</p>
	                                </div>
	                                <div class="col-xs-12 col-md-6">
	                                    <a class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="item col-xs-4 col-lg-4">
	                    <div class="thumbnail card">
	                        <div class="img-event">
	                            <img class="group list-group-image img-fluid" src="http://placehold.it/400x250/000/fff" alt="" />
	                        </div>
	                        <div class="caption card-body">
	                            <h4 class="group card-title inner list-group-item-heading">
	                                Product title</h4>
	                            <p class="group inner list-group-item-text">
	                                Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
	                                sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
	                            <div class="row">
	                                <div class="col-xs-12 col-md-6">
	                                    <p class="lead">
	                                        $21.000</p>
	                                </div>
	                                <div class="col-xs-12 col-md-6">
	                                    <a class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="item col-xs-4 col-lg-4">
	                    <div class="thumbnail card">
	                        <div class="img-event">
	                            <img class="group list-group-image img-fluid" src="http://placehold.it/400x250/000/fff" alt="" />
	                        </div>
	                        <div class="caption card-body">
	                            <h4 class="group card-title inner list-group-item-heading">
	                                Product title</h4>
	                            <p class="group inner list-group-item-text">
	                                Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
	                                sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
	                            <div class="row">
	                                <div class="col-xs-12 col-md-6">
	                                    <p class="lead">
	                                        $21.000</p>
	                                </div>
	                                <div class="col-xs-12 col-md-6">
	                                    <a class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	</div>
</div>
<div id="footer"></div>

</body>
</html>