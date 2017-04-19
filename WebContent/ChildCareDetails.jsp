<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.ArrayList,java.util.Iterator,com.edu.capstone.vo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>At Your Service</title>
</head>
<link rel="stylesheet" type="text/css" href="style.css">

<script type="text/javascript">
</script>
<style>
tr:nth-child(even){background-color: #f2f2f2}
</style>
</head>
<body>
	<div class="container">


		

	<form id="tutors" action="ChildCareServlet" method="get">
			  
			   
					 <%
			  @SuppressWarnings("unchecked")
					 ArrayList<ChildCareProviderVO> tutors = (ArrayList<ChildCareProviderVO>)session.getAttribute("tutorlist");
			    int index= Integer.parseInt(request.getParameter("index"));
			    ChildCareProviderVO  tutor = tutors.get(index);	
			    System.out.println("TutorNAme"+tutors.get(index).getName());
			    	System.out.println("TutorID"+tutors.get(index).getIdChildCare());
			    	System.out.println("Tutorcategoryid"+tutors.get(index).getCategoryid());
			    	System.out.println("Tutorimage"+tutors.get(index).getImage());
			    	String ChildCare = "";
			    	if (tutor.getCategoryid()==13){
			    		ChildCare = "Tutor";
			    	}
			    	else{
			    		ChildCare="BabySitter";
			    	}
			    	%>
			    	 <div class="center">
			    	<h3><%=ChildCare%></h3>		  				   
			   
				</div>

					<img src="data:image/gif;base64,<%=tutor.getImage()%>"
							alt="Tutor"  style="width: 200px; height: 150px; " id="circle">
					
							 <table width="100%">	
					<tr>
						<td id="ullistyleborder">Name : </td><td id="ullistyleborder"><%=tutor.getName()%></td></tr>
						<tr><td id="ullistyleborder">Expertise : </td><td id="ullistyleborder"><%=tutor.getSubjects()%></td></tr>
						<tr><td id="ullistyleborder">Description:</td><td id="ullistyleborder"><%=tutor.getDescription()%></td></tr>
						<tr><td id="ullistyleborder">Available : </td><td id="ullistyleborder"><%=tutor.getAvailable()%></td></tr>
						<% if(ChildCare == "Tutor"){  %>
						<tr><td id="ullistyleborder">Modes : </td><td id="ullistyleborder"><%=tutor.getMode()%></td></tr>
						<%} %>
						<tr><td id="ullistyleborder">Price per hour:</td><td id="ullistyleborder"><%=tutor.getPrice_per_hour()%></td></tr>
						<tr><td id="ullistyleborder">Location : </td><td id="ullistyleborder"><%=tutor.getLocation()%></td></tr>
						<tr><td id="ullistyleborder">Experience:</td><td id="ullistyleborder"><%=tutor.getExperience()%></td></tr>
						<tr><td id="ullistyleborder">Contact#: </td><td id="ullistyleborder"><%=tutor.getPhonenumber()%></td></tr>
						<tr><td id="ullistyleborder">Email : </td><td id="ullistyleborder"><%=tutor.getEmail()%></td></tr>
						  </table>
						  <div class="center">
						<input type="button" value="Contact <%=ChildCare%>" class="buttonstyle" onclick="alert('Thanks for contacting <%=tutor.getName()%>.We have informed the child care provider about your interest.Our provider will Contact you shortly based on their Availability.')"></div>
		
			
			 
			
			   		</form>
				
	</div>
	
</body>
</html>