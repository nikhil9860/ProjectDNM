<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!--<meta http-equiv="x-ua- compatible" content="ie=edge">

	<title>Sign-Up Form </title>

	<!-- Meta OG -->
	<meta property="og:title" content="Minimalistic Sign Up form for Material Admin Dashboard">
	<meta property="og:description" content="Simple, yet efficient sign up for for all the purpose you can imagine.">
	<meta property="og:image" content="http://mdbootstrap.com/img/Live/MDB/admin-login.jpg">
	<meta property="og:url" content="http://mdbootstrap.com/live/_MDB/templates/Admin/login.html">
	<meta property="og:site_name" content="mdbootstrap.com">
	<!-- /Meta OG -->
	<!-- Twitter Card -->
	<meta property="twitter:card" content="summary_large_image" />
	<meta property="twitter:description" content="Simple, yet efficient sign up for for all the purpose you can imagine." />
	<meta property="twitter:title" content="Minimalistic Sign Up form for Material Admin Dashboard" />
	<meta property="twitter:site" content="@MDBootstrap" />
	<meta property="twitter:image" content="http://mdbootstrap.com/img/Live/MDB/admin-login.jpg" />
	<meta property="twitter:creator" content="@MDBootstrap" />
	<!-- /Twitter Card -->
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">

	<!-- Bootstrap core CSS -->
	<!--<link href="http://mdbootstrap.com/live/_MDB/templates/Admin/css/bootstrap.min.css" rel="stylesheet">-->
	<link href="css/bootstrap.min.css" rel="stylesheet" />

	<!-- Material Design Bootstrap -->
	<!--<link href="http://mdbootstrap.com/live/_MDB/templates/Admin/css/mdb.css" rel="stylesheet">-->
	<link href="css/mdb.min.css" rel="stylesheet" />

	<!-- Your custom styles (optional) -->
	<link href="css/style.css" rel="stylesheet">
	<style>
		body {
			font-family: "Roboto", sans-serif;
			background-color: #eee;
		}

		.login-form {
			margin-top: 8rem;
		}

		.card {
			width: 100%;
		}

		.elegant-white-skin .tag, .elegant-white-skin .form-header, .elegant-white-skin .card-header {
			background-color: #4c8bf5;
		}
	</style>
</head>

<body class="fixed-sn elegant-white-skin">
    
    <%@include file="headerDr.html"  %>
            <div class="container">
		
			<div class="col-lg-12 login-form mx-auto float-xs-none">

				<!--Form with header-->
				<div class="card">
					<div class="card-block">

						<!--Header-->
						<div class="form-header">
							<h3><i class="fa fa-lock"></i> Add Walk-IN </h3>
						</div>
                                                <div class="row">
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-user prefix"></i>
									<input type="text" id="pname" class="form-control">
									<label for="pname">Patient name</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-phone prefix"></i>
									<input type="text" id="pcontactno" class="form-control">
									<label for="pcontactno">Contact No.</label>
								</div>
							</div>
						</div>
                                                <div class="row">
							   <div class="col-md-6">
								<!--File Input-->
								<!--<i class="fa fa-user prefix"></i>-->
                                                                <select class="form-control" id="gender"> 
								 <option disabled="disabled" selected="selected" >Select Gender</option>
								 <option value="1">Male</option>
								 <option value="2">Female</option>
								 </select>
							</div>
					<div class="col-md-6">
	                                    
                                                <input type="text" id="DOB" class="form-control datepicker" value="Select Date Of Birth">
                                      
                                            </div>
                                      	                 </div>						
                                        
					<div class="row">
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-home prefix"></i>
									<input type="text" id="padd" class="form-control">
									<label for="padd">Patient Address</label>
								</div>
							</div>
                                            <div class="col-md-6">
                                                </div>
                                        </div>
                                                <div class="text-xs-center"><hr>
                                                    <font color="#000000" size="+3" face="Verdana, Arial, Helvetica, sans-serif"><b> Appointment Information</b></font>
					</div>
                                                <div class="row">
                                                    <div class="col-md-6">
							<i class="fa fa-Clock prefix">Appointment time </i>
							<input type="time" class="clockpicker-am-pm-block" id="op1">
						
							</div>
                                                    <div class="col-md-6">
	                                                                                
                                                <input type="text" id="appdate" class="form-control datepicker" value="Select Date of appointment">
                                      
                                        </div>
                                      	
                                                </div>
							
						
						
                                    <div class="modal-footer text-xs-center">
                                            <button type="button" class="btn btn-primary"><i class="fa fa-save left"></i> Save</button>
					</div>

				</div>
			</div>
		
	</div>
   
       



	<!-- SCRIPTS -->
	<!-- JQuery -->
	<!--<script type="text/javascript" src="https://mdbootstrap.com/live/_MDB/templates/Admin/js/jquery-2.2.3.min.js"></script>-->
	<script src="js/Dashboard/admin-jquery-2.2.3.min.js"></script>
	<script>
		$("#navigation").load("components/navigation.html");
	</script>

	<!-- Bootstrap tooltips -->
	<!--<script type="text/javascript" src="https://mdbootstrap.com/live/_MDB/templates/Admin/js/tether.min.js"></script>-->
	<script src="../version 1.1 CTS/js/Dashboard/admin-tether.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<!--<script type="text/javascript" src="https://mdbootstrap.com/live/_MDB/templates/Admin/js/bootstrap.min.js"></script>-->
	<script src="../version 1.1 CTS/js/Dashboard/admin-bootstrap.min.js"></script>
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

	<script type="text/javascript">

		// show/hide customizer
		$('#toggle').click(function (e) {
			e.preventDefault();
			$('#customizer').toggleClass('visible');
		});

		// change skin
		$('a[data-skin]').on('click', function (e) {
			e.preventDefault();

			// remove old class
			document.body.className = document.body.className.replace(/(?:(\w+)-?)(\w+)-(skin)/g, "");

			// add new class
			$('body').addClass($(this).attr("data-skin") + '-skin');

			// trigger toggle button
			$('#toggle').trigger('click');
		});

	</script>        
</body>

</html>