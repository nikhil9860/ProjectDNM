<!DOCTYPE html>
<html lang="en">
    <%!String doctor_count;
       String appuser_count;
       String feedback_count;
    %>
<head>
    
    <%
        
        
        
        try{
    if(session.getAttribute("username").toString()==null){
        response.sendRedirect("LoginAdmin.jsp");
    }
    appuser_count=session.getAttribute("appuser_count").toString();
    doctor_count =(String)session.getAttribute("doctor_count");
    feedback_count =(String)session.getAttribute("feedback_count");
        }
        catch(Exception e){
         response.sendRedirect("LoginAdmin.jsp");

        }
    %>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!--<meta http-equiv="x-ua-compatible" content="ie=edge">

	<title>Dashboard</title>
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">

	<!-- Bootstrap core CSS -->
	<!--<link href="https://mdbootstrap.com/live/_MDB/templates/Admin/css/bootstrap.min.css" rel="stylesheet">-->
	<link href="css/Dashboard/admin-bootstrap.min.css" rel="stylesheet" />
	<!-- Material Design Bootstrap -->
	<!--<link href="https://mdbootstrap.com/live/_MDB/templates/Admin/css/mdb.css" rel="stylesheet">-->
	<link href="css/Dashboard/admin-mdb.css" rel="stylesheet" />
</head>

<body class="fixed-sn elegant-white-skin">
	<!--Double Navigation-->
	        <%@include file="header.html" %><!--/Double Navigation-->
	<!--Main layout-->
	<main class="">
		<div class="container-fluid">
			<div class="card card-cascade narrower">
			<div class="card-block pt-4">

			<div class="form-header">

                            <h3>Report of App Users & Doctors</h3>
                        </div>

		  
		  <section class="section section-intro">
                                
				<!--First row-->
				<div class="row">
					<!--First column-->
                                        
					<div class="col-md-4">
                                                <a href="ViewAppUsers">
						<!--Card Primary-->
						<div class="card classic-admin-card deep purple">
							<div class="card-block">
								<div class="pull-xs-right">
									<i class="fa fa-users"></i>
								</div>
                                                            <p>No Of App Users</p>
                                                                <h4><%
                                                                        out.print(appuser_count);
                                                                    %></h4>
							</div>
                                                                    <progress class="progress progress-success" value=<%=appuser_count%> max="100">25%</progress>
							<div class="card-block">
								<p>Better than last week (25%)</p>
							</div>
						</div>
						<!--/.Card Primary-->
					</div>
                </a>              
					<!--/First column-->
					<!--Second column-->
                                        <a href="ViewDoctors">
					<div class="col-md-4">
						<!--Card Primary-->
						<div class="card classic-admin-card deep purple">
							<div class="card-block">
								<div class="pull-xs-right">
									<i class="fa fa-users"></i>
								</div>
                                                                
								<p>No of doctors</p>
                                                                <h4><%
                                                                     
                                                                    out.print(doctor_count);
                                                                    %></h4>
							</div>
                                                                    <progress class="progress progress-danger" value=<%=doctor_count%> max="100">25%</progress>
							<div class="card-block">
								<p>Worse than last week (25%)</p>
							</div>
						</div>
						<!--/.Card Primary-->
					</div>
                                        </a>
					<!--/Second column-->
					<!--Third column-->
					<div class="col-md-4">
						<!--Card Primary-->
						<div class="card classic-admin-card deep purple">
							<div class="card-block">
								<div class="pull-xs-right">
									<i class="fa fa-file"></i>
								</div>
								<p>No Of Feedback</p>
								<h4><%
                                                                     
                                                                    out.print(feedback_count);
                                                                    %></h4>
							</div>
                                                                    <progress class="progress progress-success" value=<%=feedback_count%> max="100">25%</progress>
							<div class="card-block">
								<p>Better than last week (75%)</p>
							</div>
						</div>
						<!--/.Card Primary-->
					</div>
					<!--/Third column-->
					<!--Fourth column-->
					<!--/Fourth column-->

				</div>
				<!--/First row-->

			</section>
			
			<section class="section section-intro">
			<section class="section">
				<div class="row">

					<!--<div class="col-md-12">-->
					
											
											<div class="card-block pt-2">
												<div class="col-md-12">
											<div class="view right primary-color">
											<canvas id="sales" height="100px"></canvas>
										</div></div>
										
								</div>
					</div>
					
			</section>
		</div>
	</main>
	<!--/Main layout-->

	
	<!-- SCRIPTS -->
	<!-- JQuery -->
	<!--<script type="text/javascript" src="https://mdbootstrap.com/live/_MDB/templates/Admin/js/jquery-2.2.3.min.js"></script>-->
	<script src="js/Dashboard/admin-jquery-2.2.3.min.js"></script>
	<script>
		$("#navigation").load("components/navigation.html");
	</script>

	<!-- Bootstrap tooltips -->
	<!--<script type="text/javascript" src="https://mdbootstrap.com/live/_MDB/templates/Admin/js/tether.min.js"></script>-->
	<script src="js/Dashboard/admin-tether.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<!--<script type="text/javascript" src="https://mdbootstrap.com/live/_MDB/templates/Admin/js/bootstrap.min.js"></script>-->
	<script src="js/Dashboard/admin-bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<!--<script type="text/javascript" src="https://mdbootstrap.com/live/_MDB/templates/Admin/js/mdb.min.js"></script>-->
	<script src="js/Dashboard/admin-mdb.min.js"></script>
	
	<script>
		// Data Picker Initialization
		$('.datepicker').pickadate();


		// Material Select Initialization
		$(document).ready(function () {
			$('.mdb-select').material_select();
		});

		// Sidenav Initialization
		$(".button-collapse").sideNav();

		// Tooltips Initialization
		$(function () {
			$('[data-toggle="tooltip"]').tooltip()
		})
	</script>
<script>
		$(function () {
			var data = {
				labels: ["January", "February", "March", "April", "May", "June", "July","August","Sept","Oct","Nov","Dec"],
				datasets: [{
					label: "My First dataset",
					fillColor: "rgba(220,220,220,0.2)",
					strokeColor: "rgba(220,220,220,1)",
					pointColor: "rgba(220,220,220,1)",
					pointStrokeColor: "",
					pointHighlightFill: "#D03017",
					pointHighlightStroke: "rgba(0,0,0,.15)",
					data: [<%=doctor_count%>, 59, 80, 81, 56, 55, 40],
					backgroundColor: "#F5A034"
				}, {
					label: "My Second dataset",
					fillColor: "rgba(255,255,255,.25)",
					strokeColor: "rgba(255,255,255,.75)",
					pointColor: "#fff",
					pointStrokeColor: "",
					pointHighlightFill: "#05580A",
					pointHighlightStroke: "rgba(0,0,0,.15)",
					data: [28, 48, 40, 19, 86, 27, 90]
				}]
			};


			var dataPie = [{
				value: 300,
				color: "#F7464A",
				highlight: "#FF5A5E",
				label: "Red"
			}, {
				value: 50,
				color: "#46BFBD",
				highlight: "#5AD3D1",
				label: "Green"
			}, {
				value: 100,
				color: "#FDB45C",
				highlight: "#FFC870",
				label: "Yellow"
			}]

			var option = {
				responsive: true,
				// set font color
				scaleFontColor: "#fff",
				// font family
				defaultFontFamily: "'Roboto', sans-serif",
				// background grid lines color
				scaleGridLineColor: "rgba(255,255,255,.1)",
				// hide vertical lines
				scaleShowVerticalLines: false,
			};

			// Get the context of the canvas element we want to select
			var ctx = document.getElementById("sales").getContext('2d');
			var myLineChart = new Chart(ctx).Line(data, option); //'Line' defines type of the chart.

			// Get the context of the canvas element we want to select
			var ctx = document.getElementById("conversion").getContext('2d');
			var myRadarChart = new Chart(ctx).Radar(data, option);

			// Get the context of the canvas element we want to select
			var ctx = document.getElementById("traffic").getContext('2d');
			var myBarChart = new Chart(ctx).Bar(data, option);

			// Get the context of the canvas element we want to select
			var ctx = document.getElementById("seo").getContext('2d');
			var myPieChart = new Chart(ctx).Pie(dataPie, option);

		});
	</script>
</body>

</html>