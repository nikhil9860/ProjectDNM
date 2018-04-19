<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html lang="en">
    <%!String total_appointment_count;%>  
    
   
    
    <%
    
          try{
    if(session.getAttribute("username").toString()==null){
        response.sendRedirect("LoginDr.jsp");
    }
   
    total_appointment_count=request.getAttribute("total_appointment").toString(); 
    
        }
        catch(Exception e){
         response.sendRedirect("LoginDr.jsp");

        }
    
    %>
    
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
     
        
     <form action="show_doctor_appointments">
	<main class="">
            
	<div class="container-fluid">
            <div class="card card-cascade narrower">
                <div class="card-block pt-2">
                    	                    <section class="section">
                                             <div class="row">
                                       
					<div class="col-md-3">
                                            <div class="card-block pt-0">
                                                
                                                
                                                    <input type="date" name="appointment_date" class="form-control" >
                                      
                                             </div></div>
                                             
					<div class="col-md-3">
                                            <div class="card-block pt-0">
                                                
                                                 <button type="submit" class="btn btn-primary">Show Appointments</button>
                                                 
                                            </div></div> 
                                                 
                                                 <div class="col-md-3">
                                            <div class="card-block pt-0">
                                                
                                                 
                                                 <a href="AddWalkin.jsp" class="btn btn-primary" >Add Walkin</a>
                                            </div></div> 
                    			
                                             </div>
                    </section>
                                                                                                         
    
</div>
                      
                                                        <div class="form-header">
							<h3><i></i> Appointment list  </h3>
                                                        </div>
                                                        
                <h2 style="font-family:verdana;"> Total Appointment : <%=total_appointment_count%> </h2>
                                    <br>
        <display:table id="row" name="patient_appointment_list" pagesize="10" requestURI="DoctorDashBoard" class="table table-hover">
           
            <display:column property="appointment_number" sortable="true" title="Patient No"></display:column>
            <display:column property="patient_name" sortable="true" title="Patient Name"></display:column>
            <display:column property="patient_gender" sortable="true" title="Gender"></display:column>
            <display:column property="patient_age"  title="age"></display:column>
            <display:column property="patient_location"  title="location"></display:column>
            <display:column property="status"  title="status"></display:column>
            <display:column property="appointment_date"  title="date"></display:column>
            <display:column></display:column> 
            <display:column title="action"><a href="cancelAppointment?patient_name=${row.patient_name}&appointment_date=${row.appointment_date}">Cancel</a></display:column>
            <display:column title="action"><a href="doneAppointment?patient_name=${row.patient_name}&appointment_date=${row.appointment_date}" >Done</a></display:column>
                                 
        </display:table>
               
                                                                  
                                                
	<!--/Main layout-->
                </div>
    
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
     </form>
</body>

</html>