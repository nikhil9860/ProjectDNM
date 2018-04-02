<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!--<meta http-equiv="x-ua-compatible" content="ie=edge">-->

	<title>View Holidays</title>
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
    <form method="post" action="AddWalkin">
    <%@include file="headerDr.jsp"  %>
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
									<input type="text" required ="" name="patient_name" class="form-control">
									<label for="pname">Patient name</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="md-form"> 
									<i class="fa fa-phone prefix"></i>
									<input type="text" required ="" minlength="10" maxlength="10" name="patient_contact_no" class="form-control">
									<label for="pcontactno">Contact No.</label>
								</div>
							</div>
						</div>
                                                <div class="row">
							   <div class="col-md-6">
								<!--File Input-->
								<!--<i class="fa fa-user prefix"></i>-->
                                                                <select class="form-control" required ="" name="gender"> 
								 <option disabled="disabled" selected="selected" >Select Gender</option>
								 <option value="male">Male</option>
								 <option value="female">Female</option>
								 </select>
							</div>
					<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-birthday-cake prefix"></i>
									<input type="date" required ="" name="DOB" class="form-control">
									
								</div>
							</div>
                  </div>						
                                        
					<div class="row">
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-home prefix"></i>
									<input type="text" required ="" name="patient_address" class="form-control">
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
                                                    <div class="col-md-2">
                                                        <i class="fa fa-Clock prefix">Appointment time </i>
                                                    </div>
                                                    <div class="col-md-4">
							
							<input type="time" required ="" class="clockpicker-am-pm-block" name="appointment_time">
						
							</div>
                                                    <div class="col-md-2">
                                                        <i class="fa fa-Calender prefix">Appointment Date </i>
                                                    </div>
                                                    <div class="col-md-4">
	                                                                                
                                                <input type="date" required ="" name="appointment_date" class="form-control">
                                      
                                        </div>
                                      	
                                                </div>
							
						
						
                                    <div class="modal-footer text-xs-center">
                                            <input type="submit" value="Done" class="btn btn-primary"/>
					</div>

				</div>
			</div>
		
	</div>
   
       


</form>
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