<%-- 
    Document   : ViewDoctorInfo
    Created on : 1 Mar, 2018, 3:45:07 PM
    Author     : nikhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        
        <title>JSP Page</title>
    </head>
    <body class="fixed-sn elegant-white-skin">
	<!--Double Navigation-->
       
	        <%@include file="header.html" %>
	<!--/Double Navigation-->
	<!--Main layout-->
        <main class="" style="width:2000px;">
		<div class="container-fluid">

<div class="card card-cascade narrower">

    <div class="card-block pt-4">

        <div class="form-header">
							<h3><i></i> Doctor Complete Info .. </h3>
						</div>
        
        <display:table id="row" name="doctorcompleteinfo" pagesize="5" requestURI="ViewDoctors" class="table table-hover">
            
            <display:column property="fullname" sortable="true" title="FulName"></display:column>
            <display:column property="username" sortable="true" title="Email"></display:column>
            <display:column property="clinicname"  title="ClincName"></display:column>
            <display:column property="doctor_contact_number"  title="Personal no"></display:column>
            <display:column property="qualification"  title="Qualification"></display:column>
            <display:column property="clinicname"  title="Clinic Name"></display:column>
            <display:column property="clinicaddress"  title="Clinic Address"></display:column>
            <display:column property="clinic_contact"  title="Clinic Pno."></display:column>
            <display:column property="clinic_contact"  title="Landline"></display:column>
            
            <display:column title="action"><a href="updateDoctor?username=${row.username}">update</a></display:column>
            
                                 
        </display:table>
        
    </body>
</html>
