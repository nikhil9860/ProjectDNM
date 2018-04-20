<!DOCTYPE html>
<html lang="en">

<body class="fixed-sn elegant-white-skin">
	<!--Double Navigation-->
	<header>
		<ul id="slide-out" class="side-nav fixed custom-scrollbar">

			<!-- Logo -->
			<li>
				<div class="user-box">
					
                                    <p class="user text-xs-center"><a href="DoctorDashBoard"><i class="fa fa-arrow-circle-up prefix"></i> Go to DashBoard</a></p>
				</div>
			</li>
			<!--/. Logo -->
			<!-- Side navigation links -->
			<li>
                                         
                        <li><a href="" class="waves-effect"><i class="fa fa-file"></i> Manage Appointments</a></li>
						
                                            <li>
                                            <a href="" class="waves-effect"><i class=""></i> Add Schedule Information</a>
					</li>
                        
			
					<li>
                                            <a href="AddReceptionPage" class="waves-effect"><i class="fa fa-users"></i> Manage Users</a>
					</li>
                                                              	
			
					<li>
                                            <a href="AddHolidays.jsp" class="waves-effect"><i class="fa fa-users"></i> Manage Holidays</a>
					</li>
                                        <li>
									<a href="reg.jsp" class="waves-effect">View Feedbacks</a>
                                        </li>
                                        <li>
									<a href="reg.jsp" class="waves-effect">View Payment History</a>
					</li>
					<li>
									<a href="reg.jsp" class="waves-effect">Generate Reports</a>
					</li>
                                        <li>
									<a href="reg.jsp" class="waves-effect">Update Details</a>
					</li>
                                        <li>
									<a href="reg.jsp" class="waves-effect">Change Password</a>
					</li>
							
				</ul>
		<nav class="navbar navbar-fixed-top scrolling-navbar double-nav">
			<!-- SideNav slide-out button -->
			<div class="pull-left">
				<a href="#" data-activates="slide-out" class="button-collapse"><i class="fa fa-bars"></i></a></div>
			<!-- Breadcrumb-->
			<div class="breadcrumb-dn">
				<p>Welcome <%=session.getAttribute("uname")%></p>
			</div>

			<ul class="nav navbar-nav pull-right">
				<li class="nav-item">
					<a href=""><i class="fa fa-sign-out"></i> Logout</a>
				</li>
			</ul>
		</nav>
		<!--/.Navbar-->

	</header>

</body>
</html>
