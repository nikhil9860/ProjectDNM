<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@taglib prefix="s" uri="/struts-tags" %>


<html lang="en">

<head>
<title>Categories List</title>
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
    <form action="AddCategoriesProcess" method="post">
	<!--Double Navigation-->
	        <%@include file="header.html" %>
	<!--/Double Navigation-->
	<!--Main layout-->
	<main class="">
		<div class="container-fluid">

<div class="card card-cascade narrower">

    <div class="card-block pt-4">

        <div class="form-header">
							<h3><i></i> Categories List  </h3>
        </div>
        <center>
        <div class="row">
                <div class ="col-lg-6">
            <div class="md-form">
                            <i class="fa fa-category prefix"></i>
                            <input type="text" name="category" class="form-control">
                            <label for="category" data-error="wrong" data-success="right">Enter Category</label>
                        </div>
</div>
                <div class ="col-lg-6">
            
                        <div class="text-xs-center">
                            <button class="btn btn-primary">ADD</button>
                        </div>
                </div>
        </div></center>                        
        <hr><center>
        <display:table id="row" name="allCategories" pagesize="10" requestURI="ViewCategories" class="table table-hover">
            
            <display:column property="category" sortable="true" title="Category Name"></display:column>
            <display:column title="Action"><a href="deleteCategories?id=${row.category_id}">delete</a></display:column>
                             
        </display:table></center>
    </div>
</div></div>
                    
                </main>
	<!--/Main layout-->

<!--
	 SCRIPTS 
	 JQuery--> 
	<script type="text/javascript" src="https://mdbootstrap.com/live/_MDB/templates/Admin/js/jquery-2.2.3.min.js"></script>
	<script src="js/Dashboard/admin-jquery-2.2.3.min.js"></script>
	<script>
		$("#navigation").load("components/navigation.html");
	</script>

	  
	<script type="text/javascript" src="https://mdbootstrap.com/live/_MDB/templates/Admin/js/tether.min.js"></script>
	<script src="js/Dashboard/admin-tether.min.js"></script>
 
	<script type="text/javascript" src="https://mdbootstrap.com/live/_MDB/templates/Admin/js/bootstrap.min.js"></script>
	<script src="js/Dashboard/admin-bootstrap.min.js"></script> 
	<script type="text/javascript" src="https://mdbootstrap.com/live/_MDB/templates/Admin/js/mdb.min.js"></script>
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