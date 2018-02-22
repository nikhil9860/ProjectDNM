<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!--<meta http-equiv="x-ua-compatible" content="ie=edge">

	<title>View Feedback</title>
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
<div class="card card-cascade ">
	<div class="card-block pt-4">

			<div class="form-header">

                            <h3>List of Doctors</h3>
                        </div>

			<section class="section">

				<!--Main row-->
				<div class="row">

								<!--/First row-->
								<!--Second row-->
								<div class="row mb-0">
									<!--First column-->
									<div class="col-md-12">

										<!--Panel content-->
										<div class="card-block pt-0">
											<!--Table-->
											<table class="table table-hover">
												<!--Table head-->
												<thead>
													<tr class="product-card">
														<th>Sr.No.</th>
														<th>User Name</th>
														<th>Dr. Name</th>
														<th>Feedback</th>
													</tr>
												</thead>
												<!--/Table head-->
												<!--Table body-->
												<tbody>
													<tr class="none-top-border">
														<td>1</td>
														<td>Ankita Athavale</td>
														<td>Dr.Anita</td>
														<td>Experience was good</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Dr.Ankita Athavale</td>
														<td>Dr.Satish</td>
														<td>The atmosphere of clinic is pleasant.</td>
														
														</tr>
													</tbody>
												<!--/Table body-->
											</table>
											<!--/Table-->

										</div>
										<!--/.Panel content-->

									</div>
									<!--/First column-->
								</div>
								<!--/Second row-->

							</div>
							<!--/Admin panel-->

						</div>
						<!--/.Card-->
					</div>

				</div>
				<!--/Main row-->

			</section>
			<!--/Section: Main chart-->
			<!--Section: Charts-->
			<!--/Section: Charts-->
			<!--Section: Notifications-->
			<!--/Section: Notifications-->
			<!--Classic admin cards-->
			

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