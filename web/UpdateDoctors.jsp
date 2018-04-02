<%@page import="com.java.POJO.CategoriesPojo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.java.POJO.DrRegisterPojo"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
<%! String gender,category,fullname,email,doctor_number,qualification,clinic_name,clinic_address,
            clinic_contact,clinic_landline;
DrRegisterPojo pojo;
ArrayList<CategoriesPojo> list;

%>
<% 
    try{
        
        pojo = (DrRegisterPojo)request.getAttribute("doctor_display_info");
        list  = (ArrayList<CategoriesPojo>)request.getAttribute("categories_list");
            
        fullname=pojo.getFullname();
         gender=pojo.getGender();
        category=pojo.getCategory_name();
        email=pojo.getDoctor_email();
        doctor_number=pojo.getDoctor_contact_number();
        qualification=pojo.getQualification();
        clinic_name=pojo.getClinicname();
        clinic_address= pojo.getClinicaddress();
        clinic_contact=pojo.getClinic_contact();
        clinic_landline=pojo.getClinic_landline();
    
        
        
        
          
        if(session.getAttribute("username") != null){
            
        }
        
        
        
        
    }catch(Exception e){
        
        response.sendRedirect("LoginDr.jsp");
    }
    
    
   
 
%>
<body class="fixed-sn elegant-white-skin">
    
   
    
    <form action="UpdateDoctorInfo" method="post">
            <div class="container">
		<div class="row">
			<div class="col-lg-12 login-form mx-auto float-xs-none">

				<!--Form with header-->
				<div class="card">
					<div class="card-block">

						<!--Header-->
						<div class="form-header">
							<h3><i class="fa fa-lock"></i> Update Details</h3>
						</div>
                                                
                                                <div class="text-xs-center">
                        
            
                                                    
                                <%-- <s:if test="hasActionMessages()">
                                 
                                    <div class="text-xs-center" style="color: red">
                                        <s:actionmessage/>
                                </s:if>

                                        --%>

				</div>
				
                                                <font color="#000000" size="+3" face="Verdana, Arial, Helvetica, sans-serif"><b>Personal Information</b></font>
					</div>
				<!--Body-->
						<div class="row">
						
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-user prefix"></i>
                                                                        <input type="text" name="fullname" readonly="" required="" value="<%=fullname%>" class="form-control">
									<label for="fullname">Full name</label>
								</div>
							</div>
							
							
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-envelope prefix"></i>
                                                                        <input type="email" readonly="" id="doctor_email" onfocusout="setUserName()" value="<%=email%>"  name="doctor_email" required="" class="form-control">
									<label for="doctor_email">Email ID</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-phone prefix"></i>
                                                                        <input type="text" name="doctor_contact_number" value="<%=doctor_number%>" minlength="10" maxlength="10" required="" class="form-control">
									<label for="contactnumber">Contact No.</label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="md-form">
									<i class="fa fa-university prefix"></i>
                                                                        <input type="text" name="qualification" value="<%=qualification%>" required="" class="form-control">
									<label for="Qualification">Qualification</label>
								</div>
							</div>
							
						
							<div class="col-md-4">
								<!--File Input-->
								<!--<i class="fa fa-user prefix"></i>-->
                                                                <select name="gender" required="" class="form-control"> 
								 <option disabled="disabled" selected="selected" >----Select Gender----</option>
                                                                 
                                                                 
                                                                 <option value="Male" <% if(gender.equals("Male"))%>  selected <%  %> >Male</option>
								 <option value="Female" <% if(gender.equals("Female"))%>  selected <%  %>>Female</option>
								 </select>
                                                                 
							</div>
                                                                 
                                                                 
							<div class="col-md-4">
								<!--File Input-->
                                                                
                                                                <select class="form-control" name="category" required="" > 
								 <option disabled="disabled" selected="selected" >----Select Category----</option>
								
                                                                   <%
                                                                 
                                                                 for(CategoriesPojo cat_pojo: list){
								
                                                                
                                                                %>
                                                                
                                                                <option value=<%=cat_pojo.getCategorie_id()%> <% if(cat_pojo.getCategorie_name().equals(category))%> selected <%  %> ><%=cat_pojo.getCategorie_name()%></option>
                                                                
                                                                
                                                                <%  
                                                                    
                                                                
                                                                    }
                                                                    
                                                                %>
                                                                
                                                                
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
                                                                        <input type="text" id="form6" name="clinicname" value="<%=clinic_name%>" required="" class="form-control">
									<label for="form6">Clinic Name</label>
								</div>
							</div>
							<div class="col-md-4">
								<div class="md-form">
									<i class="fa fa-home prefix"></i>

                                                                     
						
                                                                        <input type="text" id="form7" name="clinicaddress" value="<%=clinic_address%>" required=""  class="form-control">
									<label for="form7">Clinic Address</label>

                                                                        <input type="hidden" id="cordinates" name="cordinate"> 
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
                                                                        <input type="text" id="form8" name="clinic_contact" value="<%=clinic_contact%>" required="" class="form-control">
									<label for="form8">Clinic Contact No.</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="md-form">
									<i class="fa fa-phone prefix"></i>
                                                                        <input type="text" id="form9" name="clinic_landline" value="<%=clinic_landline %>" class="form-control">
									<label for="form9">Clinic Landline No.</label>
								</div>
							</div>
						</div>
<!--							<div class="text-xs-center"><hr>
					<font color="#000000" size="+3" face="Verdana, Arial, Helvetica, sans-serif"><b>User Credentials</b></font>
					</div>
					
                                
						<div class="row">
							<div class="col-md-6">
								Input groups
								<div class="md-form input-group">
									<i class="fa fa-user prefix"></i>
                                                                        <input type="text" class="form-control" id="username" readonly="" required=""  name="username" placeholder="Username" aria-describedby="basic-addon1">
								</div>
							</div>
							<div class="col-md-6">
								<div class="md-form input-group">
								<i class="fa fa-lock prefix"></i>
                                                                <input type="password" class="form-control" required="" name="password" placeholder="Doctors Password" aria-describedby="basic-addon2">
									 
								</div>
							</div>
						</div>-->
					<div class="modal-footer text-xs-center">
                                            <input type="submit" class="btn btn-primary"  value="Update" >
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
        
        
        
        
    </form>       
</body>

</html>
