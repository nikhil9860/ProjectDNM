<!DOCTYPE html>
<html lang="en">

   
    
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!--  <meta http-equiv="x-ua-compatible" content="ie=edge">-->

    <title>Login Form</title>

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
    <form action="LoginDoctor" method="post">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-5 login-form mx-auto float-xs-none">
                
                <!--Form with header-->
                <div class="card">
                    <div class="card-block">

                        <!--Header-->
                        <div class="form-header">
                            <h3><i class="fa fa-lock"></i> Doctor Login:</h3>
                        </div>

                        <!--Body-->
                        <div class="md-form">
                            <i class="fa fa-envelope prefix"></i>
                            <input type="text" name="uname" class="form-control validate">
                            <label for="form2" data-error="wrong" data-success="right">Your Username</label>
                        </div>

                        <div class="md-form">
                            <i class="fa fa-lock prefix"></i>
                            <input type="password" name="password" class="form-control validate">
                            <label for="form4" data-error="wrong" data-success="right">Your password</label>
                        </div>
                        <div class="text-xs-center">
                            <button class="btn btn-primary">Login</button>
                        </div>
                          <div class="text-xs-center">
                              <a href="ForgotPassword.jsp">Forgot Password</a>
                        </div>

                    </div>

                   

                </div>
                <!--/Form with header-->

            </div>
        </div>
    </div>
    </form>

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
</body>

</html>