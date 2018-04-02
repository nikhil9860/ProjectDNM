<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!--<meta http-equiv="x-ua-compatible" content="ie=edge">-->

	<title>Add User</title>
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
    
    <%@include file="headerDr.jsp"  %>
    <form action="ReceptionRegister" method="post">
            <div class="container">
		<div class="row">
			<div class="col-lg-12 login-form mx-auto float-xs-none">

				<!--Form with header-->
				<div class="card">
					<div class="card-block">

						<!--Header-->
						<div class="form-header">
							<h3><i class="fa fa-lock"></i> Registration Form </h3>
						</div>

						<div class="text-xs-center">
					<font color="#000000" size="+3" face="Verdana, Arial, Helvetica, sans-serif"><b>Personal Information</b></font>
					</div>
				<!--Body-->
						<div class="row">
						
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-user prefix"></i>
									<input type="text" name="name" class="form-control">
									<label for="form1">Full name</label>
								</div>
							</div>
							<div class="col-md-6">
								<!--File Input-->
								<form>
									<div class="file-field">
										<div class="btn btn-primary btn-sm">
											<span>Choose file</span>
											<input type="file">
										</div>
										<div class="file-path-wrapper">
											<input class="file-path validate" name="photo" type="text" value="Upload your file">
										</div>
									</div>
								</form>

							</div>
													</div>
						<div class="row">
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-envelope prefix"></i>
									<input type="text" name="emailid" class="form-control">
									<label for="emailid">Email ID</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-phone prefix"></i>
									<input type="text" name="contactno" class="form-control">
									<label for="contactno">Contact No.</label>
								</div>
							</div>
						</div>
						<div class="row">
							   <div class="col-md-6">
								<!--File Input-->
								<!--<i class="fa fa-user prefix"></i>-->
                                                                <select class="form-control" name="gender"> 
								 <option disabled="disabled" selected="selected" >----Select Gender----</option>
								 <option value="male">Male</option>
								 <option value="female">Female</option>
								 </select>
							</div>
                                                    <div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-birthday-cake prefix"></i>
									<input type="date" name="DOB" class="form-control">
									
								</div>
							</div>

                                                            </div>						</div>
						
							
							<div class="text-xs-center"><hr>
					<font color="#000000" size="+3" face="Verdana, Arial, Helvetica, sans-serif"><b>User Credentials</b></font>
					</div>
					
				<div class="row">
                                    	<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa- prefix"></i>
                                                                        <input type="text" name="uname" class="form-control" placeholder="username">
									
								</div>
							</div>
							<div class="col-md-6">
								<div class="md-form">
								<i class="fa fa- prefix"></i>
									<input type="password" name="password" class="form-control" placeholder="Enter Password" aria-describedby="basic-addon2">
									 
								</div>
							</div>
						</div>
		
                                    <div class="modal-footer text-xs-center">
                                            <input type="submit" class="btn btn-primary"></input>
					</div>

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