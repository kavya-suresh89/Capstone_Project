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
	
	button{
	background-color: #cdc9c9;
	color: #4c4c4c;
	height:35px;
	width:100%;
}
	
	/*table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}*/
	td{
		width : 150px;
		text-align: center;
		padding: 15px;
	}
	
	/* Add a black background color to the top navigation */

    


/* Style the links inside the navigation bar */


.floated_img
{
    
    display: inline-table;
    border: 1px solid #A3E4D7 ;
    width: 250px;
    height: 300px;
    background-position: fixed;
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

window.scrollBy(0, 1000);
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
<div class= "main-display" >
	
	<a href="#"  id="myCategoryItems" style="font-size: 20px;color: #28B463;font-family: cursive; float: left;"><%=session.getAttribute("category_name") %></a>
	<input type="hidden" id="category_id" name="category_id" value="<%=session.getAttribute("category_id") %>">
	<input type="hidden" id="category_id" name="category_name" value="<%=session.getAttribute("category_name") %>">
	
	 <form action="RetrieveCartDetailsServlet" method="get">
			<p style="color: #555;font-size: 20px; font-family: sans-serif;float: right;">
        	<%if(session.getAttribute("cart_size") == null){ %>0 Items</p>
        	<%} else { %>
        	<%=session.getAttribute("cart_size") %> Items</p>
        	<%} %>
        	<input type="image" src="images/shopping-cart.png" alt="Shopping Cart" style="width:60px;height:60px;float: right;">
        	<input type="hidden" name="session_id" value="<%=session.getAttribute("session_id") %>">
     </form>
			    
	

</div>	

<br>
<br>
<br>
<br>
<br>

	
	
	<%
	@SuppressWarnings("unchecked")
	  ArrayList<ProductDetailsVO> product = (ArrayList<ProductDetailsVO>)session.getAttribute("product_details");
	    for(ProductDetailsVO pd : product){
		%>
		<div class="floated_img">
		<div class="img_set" style="padding-left: 65px; width: 100px; height: 100px; padding-top: 15px;">
		<input type="image" src="<%=pd.getImageUrl()%>" alt="<%=pd.getImageName()%>" width="100px" height="100px" align="middle">	
		</div>
		<div class="name_display" style="padding-top: 5px; width: 100%; padding-bottom: 5px;">
		<p align="center" style="color: #E74C3C;font-size: 20px; font-family: cursive; width: 100%; position: inherit;" class="prod_name" name="prod_name" ><%=pd.getProductName() %></p>
		</div>
		<div class="price_display" style="padding-top: 10px;">
		<p align="left" style="color: #F39C12;font-size: 20px; font-family: sans-serif" class="item_price" name="item_price">&nbsp;<%=pd.getProductPrice() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <%=pd.getQuantity() %></p>
		</div>
		<form action="ShoppingCartServlet" method="post">
			<input align="middle" type="submit" value="Add to cart"   style="color:#FDFEFE ; background-color: #52BE80; font-size: 20px; font-family: sans-serif; width:100%;  height: 45px; position: inherit;">	
			<input type="hidden" name="product_id" value="<%=pd.getProductId()%>">
			<input type="hidden" name="item_name" value="<%=pd.getProductName() %>">
			</div>
			<input type="hidden" name="session_id" value="<%=session.getAttribute("session_id") %>">
		</form>	<%
		}
		%>
		
		
		
		

</div>


<a href='#top'>Back to Top</a>
</article>
</div>
</body>
</html>