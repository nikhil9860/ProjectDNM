<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!--<meta http-equiv="x-ua-compatible" content="ie=edge">

	<title>View Doctors</title>
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
     <%@include file="headerDr.jsp" %>
     
	<main class="">
            
	<div class="container-fluid">
            <div class="card card-cascade narrower">
                <div class="card-block pt-2">
                    	                    <section class="section">
                                             <div class="row">
                                       
					<div class="col-md-3">
                                            <div class="card-block pt-0">
                                                
                                                <input type="text" id="to" class="form-control datepicker" value="Select Date">
                                      
                                             </div></div>
                                             
					<div class="col-md-3">
                                            <div class="card-block pt-0">
                                                 <button type="button" class="btn btn-primary">Show Appointments</button>
                                            </div></div>         
                    			
                                             </div>
                    </section>
                        <section class="section section-intro">

				<!--First row-->
				<div class="row">
					<!--First column-->
					<div class="col-md-4">
						<!--Card Primary-->
						<div class="card classic-admin-card deep purple">
							<div class="card-block">
								<div class="pull-xs-right">
									<i class="fa fa-users"></i>
								</div>
								<p>Total no Of Appointments </p>
								<h4>2000$</h4>
							</div>
							<progress class="progress progress-success" value="25" max="100">25%</progress>
							<div class="card-block">
								<p>Better than last week (25%)</p>
							</div>
						</div>
						<!--/.Card Primary-->
					</div>
					<!--/First column-->
					<!--Second column-->
					<div class="col-md-4">
						<!--Card Primary-->
						<div class="card classic-admin-card deep purple">
							<div class="card-block">
								<div class="pull-xs-right">
									<i class="fa fa-users"></i>
								</div>
								<p>App Appointments</p>
								<h4>200</h4>
							</div>
							<progress class="progress progress-danger" value="25" max="100">25%</progress>
							<div class="card-block">
								<p>Worse than last week (25%)</p>   
							</div>
						</div>
						<!--/.Card Primary-->
					</div>
					<!--/Second column-->
					<!--Third column-->
					<div class="col-md-4">
						<!--Card Primary-->
						<div class="card classic-admin-card deep purple">
							<div class="card-block">
								<div class="pull-xs-right">
									<i class="fa fa-file"></i>
								</div>
								<p>Walk in appointments</p>
								<h4>20000</h4>
							</div>
							<progress class="progress progress-success" value="75" max="100">25%</progress>
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
		
	
                    <section class="section">  
                        <div class="row">
                    			<div class="row mb-0">
					<div class="col-md-12">
                                        <div class="card-block pt-0">
					<table class="table table-hover">
					<thead>
					<tr class="product-card">
					<th>Sr.No.</th>
					<th>Patient name</th>
                                        <th>Gender</th>
                                        <th>Age</th>
					<th>Ph. No.</th>
					<th>Address</th>
					<th>Appoint. time</th>
                                        <th>Through</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td>1</td>
					<td>Ankita Athavale</td>
                                        <td>Female</td>
                                        <td>22</td>
					<td>9764699591  </td>
					<td>pune</td>
					<td>4:34</td>
                                        <td>App</td>
					</tr>
                                        
					</tbody>
					</table>
					</div>
					</div>
					</div>
					</div>
					</section>
    
                    
                </div>
            </div>
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