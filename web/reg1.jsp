<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">

	<title>Registration Form</title>
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">

	<!-- Bootstrap core CSS -->
	<!--<link href="https://mdbootstrap.com/live/_MDB/templates/Admin/css/bootstrap.min.css" rel="stylesheet">-->
	<link href="css/Dashboard/admin-bootstrap.min.css" rel="stylesheet" />
	<!-- Material Design Bootstrap -->
	<!--<link href="https://mdbootstrap.com/live/_MDB/templates/Admin/css/mdb.css" rel="stylesheet">-->
	<link href="css/Dashboard/admin-mdb.css" rel="stylesheet" />
	<link href="css/style.css" rel="stylesheet">
	<style>
		body {
    font-family: "Roboto", sans-serif;
		background-color: #FFFFCC;
}
		.login-form {
    margin-top: 5rem;
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
	<!--Double Navigation-->
        <%@include file="header.html" %>
<div class="container">
	<div class="row">
			<div class="col-lg-12 login-form mx-auto float-xs-none">

				<!--Form with header-->
				<div class="card">
					<div class="card-block">
					<div class="form-header">
							<h3>Schedule Information</h3>
						</div>
						<div class="text-xs-center">
					<font color="#000000" size="+3" face="Verdana, Arial, Helvetica, sans-serif"><b>Select Days</b></font>
					</div>
						<div class="md-form">
						
							<fieldset class="md-group" style="clear: left;">
							<input type="checkbox" class="filled-in" id="checkbox2">
							<label for="checkbox2">Select All</label>
						</fieldset>
						</div>
						
						<div class="row">
						<div class="md-form">
						<div class="card-block pt-1">
						<div class="col-md-3">
						<fieldset class="md-group">
							<input type="checkbox" class="filled-in" id="checkbox3">
							<label for="checkbox3">Monday</label>
						</fieldset>
						</div>
						<div class="col-md-3">
						<fieldset class="md-group" style="clear: left;">
							<input type="checkbox" class="filled-in" id="checkbox4">
							<label for="checkbox4">Tuesday</label>
						</fieldset>
						</div>
						<div class="col-md-3">
						<fieldset class="md-group" style="clear: left;">
							<input type="checkbox" class="filled-in" id="checkbox5">
							<label for="checkbox5">Wednesday</label>
						</fieldset></div>
						<div class="col-md-3">
						<fieldset class="md-group" style="clear: left;">
							<input type="checkbox" class="filled-in" id="checkbox6">
							<label for="checkbox6">Thrusday</label>
						</fieldset></div></div></div></div>
						
						<div class="row">
						<div class="card-block pt-1">
						<div class="col-md-3">
						<fieldset class="md-group">
							<input type="checkbox" class="filled-in" id="checkbox7">
							<label for="checkbox7">Friday</label>
						</fieldset>	
						</div>
						<div class="col-md-3">
						<fieldset class="md-group" style="clear: left;">
							<input type="checkbox" class="filled-in" id="checkbox8">
							<label for="checkbox8">Saturday</label>
						</fieldset>
						</div>
						<div class="col-md-3">
						<fieldset class="md-group" style="clear: left;">
							<input type="checkbox" class="filled-in" id="checkbox9">
							<label for="checkbox9">Sunday</label>
						</fieldset>
						</div>
						<div class="col-md-3"></div></div>
						</div></div><hr>
								<div class="text-xs-center">
					<font color="#000000" size="+3" face="Verdana, Arial, Helvetica, sans-serif"><b>Select Timing</b></font>
					</div>


					<div class="row">
					<div class="card-block pt-2">
							<div class="col-md-3">
							<i class="fa fa-clock prefix"><h5>1st shift timing(from)</h5></i>
												<input type="time" class="clockpicker-am-pm-block" id="op1">
						
							</div>
							<div class="col-md-3"><i class="fa fa-clock prefix"><h5>(to)          </h5></i>
												<input type="time" class="clockpicker-am-pm-block" id="op2">
						
							</div>
							<div class="col-md-3"><i class="fa fa-clock prefix"><h5>2nd shift timing (from)</h5></i>
						<input type="time" class="clockpicker-am-pm-block" id="op3">
						
						</div>
					<div class="col-md-3"><i class="fa fa-clock prefix"><h5>  (to)         </h5></i>
						<input type="time" class="clockpicker-am-pm-block" id="op4">
						
						</div>
					
					
							
							</div>
							</div>
					<div class="row">
					<div class="card-block pt-2">
							<div class="col-md-6">
                                           <div class="md-form">
									
									<input type="text" id="form1" class="form-control">
									<label for="form1">Enter Max no of appointments</label>
								</div>
                                                            </div>
                                        <div class="col-md-6">
						<select class="mdb-select" id="form101">
								<option value="1" disabled="disabled" selected="selected">Select Time Slot </option>
										<option value="2">10</option>
										<option value="3">15</option>
										<option value="4">20</option>
										<option value="5">25</option>
										<option value="6">30</option>
												
								</select>
												

                                                       </div></div><hr>
                                        <div class="text-xs-center">
				<font color="#000000" size="+3" face="Verdana, Arial, Helvetica, sans-serif"><b>Select Timing For Appointment Registration </b></font>
					</div>


					<div class="row">
					<div class="card-block pt-2">
							<div class="col-md-3">
							<i class="fa fa-clock prefix"><h5>1st shift timing(from)</h5></i>
												<input type="time" class="clockpicker-am-pm-block" id="op1">
						
							</div>
							<div class="col-md-3"><i class="fa fa-clock prefix"><h5>(to)          </h5></i>
												<input type="time" class="clockpicker-am-pm-block" id="op2">
						
							</div>
							<div class="col-md-3"><i class="fa fa-clock prefix"><h5>2nd shift timing (from)</h5></i>
						<input type="time" class="clockpicker-am-pm-block" id="op3">
						
						</div>
					<div class="col-md-3"><i class="fa fa-clock prefix"><h5>  (to)         </h5></i>
						<input type="time" class="clockpicker-am-pm-block" id="op4">
						
						</div>
					</div>
						</div>
				
                                        </div>
							<div class="modal-footer text-xs-center">
                                                            <button type="button" class="btn btn-primary" onclick="location.href='reg2.jsp'">Save And Next</button>
					</div>

		</div></div></div>
        </div>
        </div>
        
	
</main>

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