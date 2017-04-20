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

table,th{
border  : 1px solid black;
border-collapse: collapse;
}

th{
height : 50px;
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
<div class="table-head">

<table width="900px" style="background-color: #EAEDED">
<tr><th colspan="5" align="center">ORDER SUMMARY</th></tr>
<tr>
<td>Order Placed</td>
<td>Total Price</td>
<td>Items</td>
<td>Ship To</td>
<td>Order #</td>
</tr>
<%NamesVO names = (NamesVO)session.getAttribute("user_name_details");
	OrderSummaryVO summary = (OrderSummaryVO)session.getAttribute("order_summary");
%>
<tr>
<td><%=summary.getOrder_date()%></td>
<td>$<%=summary.getTotal_price() %></td>
<td><%=summary.getTotal_items() %></td>
<td style="color: #5DADE2; font-size: 20px;"><%=names.getFirstName()%>&nbsp;<%=names.getLastName() %></td>
<td><%=summary.getOrder_id() %></td></tr>
</table>
</div>
<div class="order-disp">
<table width="900px">


<% ArrayList<ShoppingCartVO> cart = (ArrayList<ShoppingCartVO>)session.getAttribute("order_final_details");
	    for(ShoppingCartVO sc : cart){
		%>
		<tr height="30px;" style="border: 1px solid black; border-collapse: collapse;">
		<td style="font-size: 20px;"><%=sc.getProduct_name()%></td>
		<td><%=sc.getQuantity() %> / Item</td>
		<td><%=sc.getProduct_price() %> / Item </td>
		<td colspan="2"><%=sc.getCount() %> Items</td>
		</tr>
		<%
		}
		%>

</table>
</div>
<div style="width: 600px">
<p style="font-size: 30px; font-family: cursive; color: #F5B041; text-align: center;">Congratulations!!! You're order has been placed. Expected time of delivery is : </p>
<b style="font-size: 30px; color: #17202A; font-family: sans-serif;">35 minutes.</b>
</div>
</center>
</article>
</body>
</html>