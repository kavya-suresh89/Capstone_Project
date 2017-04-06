<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>At Your Service</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div class="container">

<header>
   <h3>At Your Service...</h3>
</header>
<table width ="100%" cellpadding="6">
	<tr>
		<td><h3>Register child care providers </h3></td>
		<td><a href="HomePage.jsp" id="logout"><u>SignOut</u></a></td>
	</tr>
</table>
<center>

<form action="registerCareProvidersServlets" method="post" id="register_form">
	<table  width="40%" cellpadding="3" >
		<tr>
			<h5 style="color:black">
                        <% if(null != request.getAttribute("success_message")) 
        				{
        					out.println(request.getAttribute("success_message"));
        				}
                        if (null != request.getAttribute("errorMessage")) 
        				{
        					out.println(request.getAttribute("errorMessage"));
        				}
        				%>
			</h5>
		</tr>
		<tr>
        	<td>Provider Category</td>
        	<td><select name="cateogy_id" style="width:95%">
        		<option value="">-------------------Select-------------------</option>
        		<option value="13">Tutors</option>
        		<option value="14">Baby-Sitters</option>
        	</select></td>
    	</tr>
    
    	<tr>
        	<td>Name</td>
        	<td><input type="text" name="provider_name" style="width:95%"></td>
    	</tr>
    
   	 	<tr>
        	<td>Price per Hour</td>
        	<td><input type="text" name="per_hour_price" style="width:95%"></td>
   	 	</tr>
    
    	<tr>
        	<td>Location</td>
        	<td><input type="text" name="location" style="width:95%"></td>
    	</tr>
    
    	<tr>
        	<td>Experience</td>
        	<td><input type="text" name="exp_years" style="width:95%"></td>
    	</tr>
    
    	<tr>
        	<td>Description</td>
        	<td><textarea  name="description" cols="50" rows="6"></textarea></td>
    	</tr>
    
    	<tr>
        	<td>Subjects</td>
        	<td><input type="text" name="subjects_taught" style="width:95%" placeholder="Maths,English"></td>
    	</tr>
    
    	<tr>
        	<td>Phone Number</td>
        	<td><input type="text" name="phone_number" style="width:95%" placeholder="+1-555-555-5555"></td>
    	</tr>
    
    	<tr>
        	<td>Email Id</td>
        	<td><input type="text" name="email_id" style="width:95%"></td>
    	</tr>
    
    	<tr>
        	<td>Available</td>
        	<td><input type="text" name="available" style="width:95%" placeholder="Mondays,Fridays"></td>
    	</tr>
    
    	<tr>
        	<td>Mode</td>
        	<td><input type="text" name="mode_of_teach" style="width:95%"></td>
    	</tr>
    
    	<tr>
        	<td>Photo</td>
        	<td><input type="file" name="photo_provider" style="width:95%"></td>
    	</tr>
	
		<tr>
         	<td><input type="submit" value="Submit" /></td>
         	<td><input type="reset" value="Clear" /></td>
    	</tr>
	</table>
</form>
</center>
</div>

</body>
</html>