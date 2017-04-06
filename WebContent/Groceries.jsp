<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>At Your Service</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style>
	 th, td {
    	border: 1px solid black;   
	}
	td{
		text-align: left;
		padding: 5px;
	}
</style>

<script type="text/javascript">
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
		<li><a  href="HomePage.jsp"><u>HOME</u></a></li>
			<li>
				<a href="#" onclick="displayMyGroceriesList();" id="myGroceries"><u>GROCERIES</u></a>
					<div class="" id="myGroceriesList" style="display:none;">
			      		<form action="Groceries.jsp" method="get">
			      			<button formaction="" id="" >Vegetables</button>
			      			<button formaction="Fruits.jsp" id="" >Fruits</button>
			      			<button formaction="" id="" >Dairy Products</button>
			      			<button formaction="" id="" >Meat</button>
			      			<button formaction="" id="" >Snacks</button>
			      			<button formaction="" id="" >Bread & Bakery</button>
			      			<button formaction="" id="" >Cereal</button>
			      			<button formaction="" id="" >Canned & Packaged Foods</button>
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
	<table width="900px">
	<tr>
		<th><a href="Vegetables.jsp">Vegetables</a></th>
		<th><a href="Fruits.jsp">Fruits</a></th>
		<th><a href="Vegetables.jsp">Dairy Products</a></th>
		<th><a href="Vegetables.jsp">Meat</a></th>
	</tr>
	<tr>
		
			<td color: #8b7d7b;>
				<ul style="list-style: none;">
				<li>Artichokes</li>
				<li>Asparagus</li>
				<li>Avocados</li>
				<li>Broccoli</li>
				<li>Cabbage</li>
				<li>Cauliflower</li>
				<li>Celery</li>
				<li>Corn</li>
				<li>Cucumbers</li>
				<li>Eggplant</li>
				<li>Garlic</li>
				<li>Leafy Greens</li>
				<li>Mushrooms & Truffles</li>
				<li>Onions & Shallots</li>
				<li>Peas & Beans</li>
				<li>Peppers</li>
				<li>Potatoes & Yams</li>
				<li>Root Vegetables</li>
				<li>Squash & Gourds</li>
				<li>Tomatillos</li>
				<li>Tomatoes</li>
				</ul>
			</td>
		
			<td color: #666666;>
				<ul style="list-style: none;">
				<li>Apples</li>
				<li>Bananas & Plantains</li>
				<li>Berries</li>
				<li>Citrus Fruits</li>
				<li>Grapes</li>
				<li>Melons</li>
				<li>Pears</li>
				<li>Tropical & Exotic Fruit</li>
				</ul>
			</td>
			
			<td color: #666666;>
				<ul style="list-style: none;">
				<li>Artisan Cheese</li>
				<li>Butter & Margarine</li>
				<li>Cheese & Charcuterie Gifts</li>
				<li>Cottage Cheese</li>
				<li>Cream Cheese</li>
				<li>Eggs & Egg Substitutes</li>
				<li>Milk & Cream</li>
				<li>Refrigerated Doughs</li>
				<li>Refrigerated Salsas, Dips & Spreads</li>
				<li>Sour Cream</li>
				<li>Yogurt</li>
				</ul>
			</td>
			
			<td color: #666666;>
				<ul style="list-style: none;">
				<li>Bacon</li>
				<li>Beef</li>
				<li>Chicken</li>
				<li>Lamb</li>
				<li>Pork</li>
				<li>Sausages</li>
				<li>Seafood</li>
				<li>Turkey</li>
				</ul>
			</td>
		</tr>
	</table>
	<br>
	<br>
	<table width="900px">
		<tr>
		<th><a href="Vegetables.jsp">Snacks</a></th>
		<th><a href="Vegetables.jsp">Bread & Bakery</a></th>
		<th><a href="Vegetables.jsp">Cereal</a></th>
		<th><a href="Vegetables.jsp">Canned & Packaged Food</a></th>
	</tr>
	<tr>
		
			<td color: #666666;>
				<ul style="list-style: none;">
				<li>Chips & Crisps</li>
				<li>Cookies</li>
				<li>Crackers</li>
				<li>Fruit Snacks</li>
				<li>Granola & Nutrition Bars</li>
				<li>Ice Cream</li>
				<li>Nuts & Seeds</li>
				<li>Popcorn</li>
				<li>Pretzels</li>
				<li>Puffed Snacks</li>
				<li>Rice Cakes</li>
				</ul>
			</td>
		
			<td color: #666666;>
				<ul style="list-style: none;">
				<li>Breadcrumbs & Stuffing</li>
				<li>Breakfast Bakery</li>
				<li>Cakes</li>
				<li>Desserts</li>
				<li>Fresh Bakery Breads</li>
				<li>Pizza Crusts</li>
				</ul>
			</td>
			
			<td color: #666666;>
				<ul style="list-style: none;">
				<li>Cold Cereals</li>
				<li>Granola</li>
				<li>Grits</li>
				<li>Muesli</li>
				<li>Oatmeal</li>
				</ul>
			</td>
			
			<td color: #666666;>
				<ul style="list-style: none;">
				<li>Antipasto</li>
				<li>Beans & Peas</li>
				<li>Sloppy Joe Mix</li>
				</ul>
			</td>
		</tr>
	</table>
</article>


</div>
</body>
</html>