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
    
    <form method="post" action="AddHolidays">
            <div class="container">
<%@include file="headerDr.jsp"  %>		
			<div class="col-lg-12 login-form mx-auto float-xs-none">

				<!--Form with header-->
				<div class="card">
					<div class="card-block">

						<!--Header-->
						<div class="form-header">
							<h3><i class="fa fa-lock"></i> Add Holidays </h3>
						</div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                    
                                                    <i class="fa fa-calendar prefix"></i>
                                                    <input type="date" name="fromdate" class="form-control" >
                                                </div>
                                                    <div class="col-md-6">
                                                        <i class="fa fa-calendar prefix"></i>
                                                    <input type="date" name="todate" class="form-control">
                                                </div>
                                                </div>
                                                
                                    <div class="modal-footer text-xs-center">
                                        <input type="submit" class="btn btn-primary"/>
					</div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                <table class="table table-hover">
												<!--Table head-->
												<thead>
													<tr class="product-card">
														<th>Sr.No.</th>
														<th>From </th>
														<th>To</th>
														
																											</tr>
												</thead>
												<!--/Table head-->
												<!--Table body-->
												<tbody>
													<tr class="none-top-border">
														<td>1</td>
														<td>2/1/2017</td>
                                                                                                                <td>12/1/2017</td>													</tr>
													<tr>
														<td>2</td>
														<td>4/2/2017</td>
														<td><10/2/2017</td>
														
													</tr>
													</tbody>
												<!--/Table body-->
											</table>
				</div>
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