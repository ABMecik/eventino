<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

  <head>


    <title>Eventino</title>
    
    <script
    src="https://code.jquery.com/jquery-3.3.1.js"
    integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
    crossorigin="anonymous">
	</script>

    <!-- Bootstrap core CSS -->
    <link href="resources/vendors/index_vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

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

    <header class="masthead text-center text-white">
      <div class="masthead-content">
        <div class="container">
          <h1 class="masthead-heading mb-0">"Success is most often</h1>
          <h2 class="masthead-subheading mb-0">achieved by those who don't know that failure is inevitable." - Coco </h2>
          <a href="#" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
        </div>
      </div>
      <div class="bg-circle-1 bg-circle"></div>
      <div class="bg-circle-2 bg-circle"></div>
      <div class="bg-circle-3 bg-circle"></div>
      <div class="bg-circle-4 bg-circle"></div>
    </header>

    <section>
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 order-lg-2">
            <div class="p-5">
              <img class="img-fluid rounded-circle" src="resources/img/seminar.jpg" alt="">
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div class="p-5">
              <h2 class="display-4">Don't Miss an Event Near to You</h2>
              <p>Here you can reach various kind of events. Conferences, Seminars, Workshops, Concerts and more. Stay tuned with us and live your life as you want. Develop your skills, go to classical music concerto or go to the concert of your favourite singer.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6">
            <div class="p-5">
              <img class="img-fluid rounded-circle" src="resources/img/student.jpg" alt="">
            </div>
          </div>
          <div class="col-lg-6">
            <div class="p-5">
              <h2 class="display-4">Students, We are Here for You!</h2>
              <p>Do you want to go to an event without paying money? Then you are in the right place. After each event we store a fair amount of money and let students have the chance to use this money to buy tickets. We do raffles and buy tickets for some lucky students.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 order-lg-2">
            <div class="p-5">
              <img class="img-fluid rounded-circle" src="resources/img/interview.jpg" alt="">
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div class="p-5">
              <h2 class="display-4">Build Your Career!</h2>
              <p>Build your career with workshops, conferences, seminars, etc. Attend some events that companies held. Get to know environment and people. Expand your network!</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <div id="footer"></div>

    <!-- Bootstrap core JavaScript -->
    <script src="resources/vendors/index_vendor/jquery/jquery.min.js"></script>
    <script src="resources/vendors/index_vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
