<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList,java.util.Iterator,com.edu.capstone.vo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>At Your Service</title>
<link rel="stylesheet" type="text/css" href="style.css">


<style type="text/css">
button{
	background-color: #E5E7E9;
	color: #555;
	font-size: 15px;
	font-family: sans-serif;
	height:35px;
	width:100%;
}

td{
		width : 30px;
		text-align: center;
		padding: 10px;
		
	}
	tr{
		border: 1px solid black;
	}
	p{
		color: #555;
		font-size: 15px; 
		font-family: sans-serif;
	}
	th{
	height: 30px;
	}
	
	table ,td,tr{
	
	border : 1px solid black;
	}

</style>

<script type="text/javascript">
window.scrollBy(0, 600);
function displayMyGroceriesList() {
	var x = document.getElementById('myGroceriesList');
	var z = document.getElementById('myRepairsList');
	var y = document.getElementById('myCaresList');
    if (x.style.display === 'none') {
        x.style.display = 'block';
        y.style.display = 'none';
        z.style.display = 'none';
    } else {
        x.style.display = 'none';
    }
}

function displayMyRepairList() {
	var x = document.getElementById('myRepairsList');
	var y = document.getElementById('myCaresList');
	var z = document.getElementById('myGroceriesList');
    if (x.style.display === 'none') {
        x.style.display = 'block';
        y.style.display = 'none';
        z.style.display = 'none';
    } else {
        x.style.display = 'none';
    }
}

function displayMyChildCareList() {
	var x = document.getElementById('myCaresList');
	var y = document.getElementById('myGroceriesList');
	var z = document.getElementById('myRepairsList');
    if (x.style.display === 'none') {
        x.style.display = 'block';
        y.style.display = 'none';
        z.style.display = 'none';
    } else {
        x.style.display = 'none';
    }
}



</script>
</head>
<body>
<div class="container">


<header>
   <h3>At Your Service...</h3>
</header>


<nav>
	<ul>
		<li><a  href="#"><u>HOME</u></a></li>
			<li>
				<div class=display-heading">
				<a href="#" onclick="displayMyGroceriesList();" id="myGroceries"><u>GROCERIES</u></a>
					<div class="" id="myGroceriesList" style="display:none;">
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
			    	</div>
			</li>
			<li class="">
				<a href="#" onclick="displayMyRepairList();" id="myRepairs" class=""><u>REPAIR & MAINTENANCE</u></a>
					<div class="" id="myRepairsList" style="display:none;">
			      		<form action="RepairAndMaintenance.jsp" method="get">
							<button type="submit" formaction="RepairAndMaintenance.jsp" id="" >HouseKeeping</button>
			      			<button type="submit" formaction="RepairAndMaintenance.jsp" id="" >Plumbing</button>
			      			<button type="submit" formaction="RepairAndMaintenance.jsp" id="" >Heating & Cooling</button>
			      			<button type="submit" formaction="RepairAndMaintenance.jsp" id="" >Electric</button>
			    	  </form>
			    	</div>
			</li>
			<li class="">
				<a href="#" onclick="displayMyChildCareList();" id="myCares" class=""><u>CHILD CARE SERVICES</u></a>
					<div class="" id="myCaresList" style="display:none;">
			      		<form action="ChildCareServices.jsp" method="get">
					    	<button type="submit" formaction="ChildCareServices.jsp" id="" >Tutors</button>
			      			<button type="submit" formaction="BabySitters.jsp" id="" >Baby-sitters</button>
			      	  </form>		
			    	</div>
			</li>
			
	</ul>
</nav>
<article>
	<div>
		<table width="900px">
			<tr>
			<td colspan="5" style="border: 1px solid black;background-color: #AED6F1">CART DETAILS</td>
			<input type="hidden" name="user_id" value="<%=session.getAttribute("user_id") %>">
			</tr>
			
			<tr >
			<th ><p><u>Product Name</u></p></th>
			<th><p><u>Price per unit</u></p></th>
			<th><p><u>Quantity</u></p></th>
			<th><p><u>Count</u></p></th>
			<th><p><u>Remove From Cart</u></p></th>
			</tr>
			<% 
			@SuppressWarnings("unchecked")
				ArrayList<ShoppingCartVO> cart = (ArrayList<ShoppingCartVO>)session.getAttribute("cart_order"); 
				for(ShoppingCartVO shop : cart){
				
			 %>
			 <form action="RemoveCartItemServlet" method="post">
			 <tr>
			   <td><p  class="cart_product_name" name="cart_product_name"><%=shop.getProduct_name() %></p></td>
			   <td><p  class="cart_product_name" name="cart_product_price"><%=shop.getProduct_price() %></p></td>
			   <td><p  class="cart_product_name" name="cart_product_quantity"><%=shop.getQuantity() %></p></td>
			   <td><p  class="cart_product_count" name="cart_product_count"><%=shop.getCount() %></p></td>
			   <td><input type="submit" name="Submit"  value="Remove" style="width :60%;background-color: #FADBD8"></input></td>
			 <input type="hidden" name="product_id" value="<%=shop.getProduct_id()%>">
			 </form>
			 <%} %>
			 
			 <tr>
			 <td colspan="2"><b>Total number of items</b></td>
			 <td colspan="3"><p name="number_of_items"><b><%=session.getAttribute("number_of_items") %> </b></p> 
			 <input type="hidden" name="number_of_items" value="<%=session.getAttribute("number_of_items")%>">
			 </td>
			 </tr>
			 <tr>
			 <td colspan="2"><b>Total Price</b></td>
			 <td colspan="3"><p name="total_price"><b> $ <%=session.getAttribute("total_price") %> </b></p> </td>
			 <input type="hidden" name="total_price" value="<%=session.getAttribute("total_price")%>">
			 </tr>
			 <form action="SaveCartSummaryServlet" method="post">
			<tr>
				<td colspan="5" align="center"><input  type="submit" value="Proceed to Check Out" style="background-color: #F0B27A; width: 200px; height: 40px"></td>
			</tr>
			<input type="hidden" name="user_id" value="<%=session.getAttribute("user_id")%>">
			<input type="hidden" name="session_id" value="<%=session.getAttribute("session_id") %>">
			</form>
		</table>
	</div>

</article>

</body>
</html>