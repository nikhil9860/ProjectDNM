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
                                                                        <input type="text" required id="fullname" required="" class="form-control">
									<label for="form1">Full name</label>
								</div>
							</div>
							<div class="col-md-4">
								<!--File Input-->
								<form>
									<div class="file-field">
										<div class="btn btn-primary btn-sm">
											<span>Choose file</span>
                                                                                        <input type="file" id="picture" >
										</div>
										<div class="file-path-wrapper">
											<input class="file-path validate" type="text" placeholder="Upload your file">
										</div>
									</div>
								</form>

							</div>
							<div class="col-md-2">
							<div class="md-form">
									<img src="images/Logo.jpg" height="100" width="100"/>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-envelope prefix"></i>
									<input type="text" id="form3" class="form-control">
									<label for="form3">Email ID</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-phone prefix"></i>
									<input type="text" id="form4" class="form-control">
									<label for="form4">Contact No.</label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="md-form">
									<i class="fa fa-university prefix"></i>
									<input type="text" id="form5" class="form-control">
									<label for="form5">Qualification</label>
								</div>
							</div>
							
						
							<div class="col-md-4">
								<!--File Input-->
								<!--<i class="fa fa-user prefix"></i>-->
								 <select class="form-control"> 
								 <option disabled="disabled" selected="selected" >----Select Gender----</option>
								 <option value="1">Male</option>
								 <option value="2">Female</option>
								 </select>
							</div>
							<div class="col-md-4">
								<!--File Input-->
								 <select class="form-control"> 
								 <option disabled="disabled" selected="selected" >----Select Category----</option>
								 <option value="1">Dermatologist</option>
													<option value="2">Cardiologist</option>
													<option value="3">E-N-T Specialist</option>
													<option value="4">Dentist</option>
													<option value="5">Ayurveda</option>
													<option value="6">Homeopath</option>
													<option value="7">Psychologist</option>
													<option value="8">Dietition</option>
													<option value="9">Neurologist</option>
													<option value="10">Orthodentist</option>
								 </select>
							</div>
						</div>
						
				<div class="text-xs-center"><hr>
					<font color="#000000" size="+3" face="Verdana, Arial, Helvetica, sans-serif"><b>Clinic Information</b></font>
					</div>
								<div class="row">
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-home prefix"></i>	
									<input type="text" id="form6" class="form-control">
									<label for="form6">Clinic Name</label>
								</div>
							</div>
							<div class="col-md-4">
								<div class="md-form">
									<i class="fa fa-home prefix"></i>
                                                                        <input type="text" id="form7"  class="form-control">
									
                                                                        <input type="hidden" id="cordinates"> 
								</div>
								</div>
								<div class="col-md-2">
									<div class="md-form">
										<button type="button" class="btn btn-primary" 
										onclick="setLocationPopUp()" > Clinic Address</button></div>
                                                                             
								</div>
								</div>
							
							<div class="row">
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-phone prefix"></i>
									<input type="text" id="form8" class="form-control">
									<label for="form8">Clinic Contact No.</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-phone prefix"></i>
									<input type="text" id="form9" class="form-control">
									<label for="form9">Clinic Landline No.</label>
								</div>
							</div>
						</div>
							<div class="text-xs-center"><hr>
					<font color="#000000" size="+3" face="Verdana, Arial, Helvetica, sans-serif"><b>User Credentials</b></font>
					</div>
					
						<div class="row">
							<div class="col-md-6">
								<!--Input groups-->
								<div class="md-form input-group">
									<i class="fa fa-user prefix"></i>
									<input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
								</div>
							</div>
							<div class="col-md-6">
								<div class="md-form input-group">
								<i class="fa fa-lock prefix"></i>
									<input type="password" class="form-control" placeholder="Doctors Password" aria-describedby="basic-addon2">
									 
								</div>
							</div>
						</div>
					<div class="modal-footer text-xs-center">
                                            <button type="button" class="btn btn-primary" onclick="location.href='reg1.jsp'"><i class="fa fa-save left"></i> Save And Next</button>
					</div>

				</div>
			</div>
		</div>
	</div>
    </div>
       <script type="text/javascript">
	
var popup ;

function setLocationPopUp(){
	popup = window.open("getlocations.html", "Popup", "width=700,height=500");
}	

</script>	


	<!-- SCRIPTS -->
	<!-- JQuery -->
	<!--<script type="text/javascript" src="http://mdbootstrap.com/live/_MDB/templates/Admin/js/jquery-2.2.3.min.js"></script>-->
	<script src="js/jquery-3.1.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<!--<script type="text/javascript" src="http://mdbootstrap.com/live/_MDB/templates/Admin/js/tether.min.js"></script>-->
	<script src="js/tether.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<!--<script type="text/javascript" src="http://mdbootstrap.com/live/_MDB/templates/Admin/js/bootstrap.min.js"></script>-->
	<script src="js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<!--<script type="text/javascript" src="http://mdbootstrap.com/live/_MDB/templates/Admin/js/mdb.min.js"></script>-->
	<script src="js/mdb.min.js"></script>
	<script type="text/javascript">

	</script>
        
</body>

</html>