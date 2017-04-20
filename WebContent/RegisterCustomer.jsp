<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList,java.util.Iterator,com.edu.capstone.vo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>At your service</title>
<link rel="stylesheet" type="text/css" href="style.css">


<style>
	
div.contents-display button{
	background-color: #cdc9c9;
	color: #4c4c4c;
	height:35px;
	width:100%;
}
	
div.tab {
    overflow: hidden;
    width: 350px;
}

/* Style the buttons inside the tab */
div.tab button {
    background-color: inherit;
    float: inherit;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
    width: 150px;
    border: 1px solid #ABB2B9;
    
    
}

/* Change background color of buttons on hover */
div.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
div.tab button.active {
    background-color: #CCD1D1;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
}


.floated_img
{
    
    display: inline-table;
    border: 1px solid #A3E4D7 ;
    width: 250px;
    height: 300px;
    background-position: fixed;
}


input, textarea {
	width: 90%;
	height: 30px;
	color: #4D5656;
}

table , tr, td {
border: 1px solid #E5E7E9;
border-collapse: collapse;
}
 
 tr, td{
  padding : 5px;
 }	
</style>



<script type="text/javascript">
function displayMyGroceriesList() {
	var x = document.getElementById('myGroceriesList');
	var z = document.getElementById('myRepairsList');
	var y = document.getElementById('myCaresList');
	var s = document.getElementById('myItems');
    if (x.style.display === 'none') {
        x.style.display = 'block';
        y.style.display = 'none';
        z.style.display = 'none';
        s.style.display = 'none';
    } else {
        x.style.display = 'none';
    }
}

function displayMyRepairList() {
	var x = document.getElementById('myRepairsList');
	var y = document.getElementById('myCaresList');
	var z = document.getElementById('myGroceriesList');
	var s = document.getElementById('myItems');
    if (x.style.display === 'none') {
        x.style.display = 'block';
        y.style.display = 'none';
        z.style.display = 'none';
        s.style.display = 'none';
    } else {
        x.style.display = 'none';
    }
}

function displayMyChildCareList() {
	var x = document.getElementById('myCaresList');
	var y = document.getElementById('myGroceriesList');
	var z = document.getElementById('myRepairsList');
	var s = document.getElementById('myItems');
    if (x.style.display === 'none') {
        x.style.display = 'block';
        y.style.display = 'none';
        z.style.display = 'none';
        s.style.display = 'none';
    } else {
        x.style.display = 'none';
    }
}

function displayMyCategoryItems() {
	var x = document.getElementById('myItems');
	var y = document.getElementById('myGroceriesList');
	var z = document.getElementById('myRepairsList');
	var s = document.getElementById('myCaresList');
    if (x.style.display === 'none') {
        x.style.display = 'block';
        y.style.display = 'none';
        z.style.display = 'none';
        s.style.display = 'none';
    } else {
        x.style.display = 'none';
    }
}

function openCity(evt, actionName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(actionName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it

</script>

</head>
<body> 
<div class="container">

<a name="top"></a>
<header>
   <h3>At Your Service...</h3>
</header>


<nav>
	<ul>
		<li>
		<a  href="HomePage.jsp"><u>HOME</u></a></li>
			<li>
				
				<a href="#" onclick="displayMyGroceriesList();" id="myGroceries"><u>GROCERIES</u></a>
					<div class="contents-display" id="myGroceriesList" style="display:none;">
					<form action="Groceries.jsp" method="post">
			      		<button formaction="GroceryDetailsServlet" id="veg_id" name="categoryid" value="1">Vegetables</button>
			      		<button formaction="GroceryDetailsServlet" id="" name="categoryid" value="2">Fruits</button>
			      		<button formaction="GroceryDetailsServlet" id="" name="categoryid" value="3">Dairy Products</button>
			      		<button formaction="GroceryDetailsServlet" id="" name="categoryid" value="4">Meat</button>
			      		<button formaction="GroceryDetailsServlet" id="" name="categoryid" value="5">Snacks</button>
			      		<button formaction="GroceryDetailsServlet" id="" name="categoryid" value="6">Bread & Bakery</button>
			      		<button formaction="GroceryDetailsServlet" id="" name="categoryid" value="7">Cereal</button>
			      		<button formaction="GroceryDetailsServlet" id="" name="categoryid" value="8">Canned & Packaged Foods</button>
			      	  </form>
			    	</div>
			    	
			</li>
			<li class="">
				<a href="#" onclick="displayMyRepairList();" id="myRepairs" class=""><u>REPAIR & MAINTENANCE</u></a>
					<div class="" id="myRepairsList" style="display:none;">
			      		<form action="RepairAndMaintenanceServlet" method="get">
							<button type="submit" name="categoryId" value="9" >HouseKeeping</button>
			      			<button type="submit" name="categoryId" value="10" >Plumbing</button>
			      			<button type="submit" name="categoryId" value="11" >Heating & Cooling</button>
			      			<button type="submit" name="categoryId" value="12" >Electric</button>
			    	  </form>
			    	</div>
			</li>
			<li class="">
				<a href="#" onclick="displayMyChildCareList();" id="myCares" class=""><u>CHILD CARE SERVICES</u></a>
					<div class="" id="myCaresList" style="display:none;">
			      		<form action="ChildCareServices.jsp" method="get">
					    	<button type="submit" formaction="ChildCareServlet" name="categoryId" value="13" >Tutors</button>
			      			<button type="submit" formaction="ChildCareServlet" name="categoryId" value="14">Baby-sitters</button>
			      	  </form>		
			    	</div>
			</li>
			
	</ul>
</nav>




<article> 
<center>
<div class="container">
<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'SignIn')" id="defaultOpen" style="background-color: #F8F9F9;">Sign-in</button>
  <button class="tablinks" onclick="openCity(event, 'Registeration')" >Sign-up</button>
</div>

<div id="SignIn" class="tabcontent" style="display:block">
<form action="VerifyExistingCustomerServlet" method="post">
<table width ="600px">
		<tr>
			<h5 style="color:red; font-size: 30px; font-family: serif;">
                        <% 
                        if (null != request.getAttribute("errorMessage")) 
        				{
        					out.println(request.getAttribute("errorMessage"));
        				}
        				%>
        				<% 
                        if (null != request.getAttribute("successMessage")) 
        				{
        					out.println(request.getAttribute("successMessage"));
        				}
        				%>
			</h5>
		</tr>	
		<tr>
		<td colspan="2" align="center" style="font-size: 20px; font-family: monospace;color: #138D75">Customer Login</td>
		</tr>	
    	<tr>
        	<td>Email Id</td>
        	<td><input type="text" name="e_mail_id" ></td>
    	</tr>
    	<tr>
        	<td>Password</td>
        	<td><input type="password" name="customer_login_pwd" ></td>
   	 	</tr>
   	 	<tr>
         	<td><input type="submit" value="Submit" style="width: 250px; height: 35px; background-color: #ABEBC6; font-size: 15px"/></td>
         	<td><input type="reset" value="Clear" style="width: 250px; height: 35px; background-color: #F1948A; font-size: 15px"/></td>
    	</tr>
    	
	</table>
	<input type="hidden" name="generated_order_id" value="<%=session.getAttribute("order_id")%>">  
	<input type="hidden" name="session_id" value="<%=session.getAttribute("session_id") %>">	 	
</table>
</form>
</div>

<div id="Registeration" class="tabcontent">
<form action="RegisterGroceryCustomerServlet" method="post" id="register_form">
	<table width ="150px">
		<tr>
			<h5 style="color:red; font-size: 30px; font-family: serif;">
                        <% 
                        if (null != request.getAttribute("errorMessage_register")) 
        				{
        					out.println(request.getAttribute("errorMessage_register"));
        				}
        				%>
			</h5>
		</tr>	
		<tr>
		<td colspan="2" align="center" style="font-size: 20px; font-family: monospace;color: #138D75">Customer Registration</td>
		</tr>	
    	<tr>
        	<td>First Name</td>
        	<td><input type="text" name="first_name"></td>
    	</tr>
    	
    	<tr>
        	<td>Last Name</td>
        	<td><input type="text" name="last_name"></td>
    	</tr>
    	
    	<tr>
        	<td>Phone Number</td>
        	<td><input type="text" name="phone_number"  placeholder="+1-555-555-5555"></td>
    	</tr>
    	
    	<tr>
        	<td>Address</td>
        	<td><textarea name="address_line1" ></textarea></td>
   	 	</tr>
   	 	
   	 	<tr>
        	<td>City</td>
        	<td><input type="text" name="city"></td>
   	 	</tr>
   	 	
   	 	<tr>
        	<td>Zip Code</td>
        	<td><input type="text" name="zip" ></td>
   	 	</tr>
   	 	
   	 	<tr>
        	<td>State</td>
        	<td name="state" value="CA">California</td>
   	 	</tr>
    	
    	<tr>
        	<td>Email Id</td>
        	<td><input type="text" name="email_id" ></td>
    	</tr>
    	<tr>
        	<td>Enter Password</td>
        	<td><input type="password" name="customer_pwd" ></td>
   	 	</tr>
    
    	<tr>
        	<td>Confirm Password</td>
        	<td><input type="password" name="confirm_pwd" ></td>
    	</tr>
    
    	
	
		<tr>
         	<td><input type="submit" value="Submit" style="width: 250px; height: 35px; background-color: #ABEBC6; font-size: 15px"/></td>
         	<td><input type="reset" value="Clear" style="width: 250px; height: 35px; background-color: #F1948A; font-size: 15px"/></td>
    	</tr>
    	
	</table>
	<input type="hidden" name="generated_order_id" value="<%=session.getAttribute("order_id")%>">
	<input type="hidden" name="session_id" value="<%=session.getAttribute("session_id") %>">
</form>
</div>
</center>
</div>
</article>

</body>
</html>