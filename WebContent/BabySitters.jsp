<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>At Your Service</title>
</head>
<link rel="stylesheet" type="text/css" href="style.css">

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
<h3>BABY-SITTERS</h3>

<table>
<tr>
<th>
<ul style="list-style: none;">
<li><img src="https://img.clipartfox.com/63b45de06c3ab7b66cbf23b18a9d2680_profile20clipart-profile-clip-art_297-300.png" alt="Tutor" style="width:200px;height:150px;" float: left;></li>
<li>Name : Betty</li>
<li>Rating : </li>
<li><input type="button" value="Request Details"></li>
</ul>
</th>
<th>
<ul style="list-style: none;">
<li><img src="https://img.clipartfox.com/63b45de06c3ab7b66cbf23b18a9d2680_profile20clipart-profile-clip-art_297-300.png" alt="Tutor" style="width:200px;height:150px;"></li>
<li>Name : Mark</li>
<li>Rating : </li>
<li><input type="button" value="Request Details" align="center"></li>
</ul>
</th>
<th>
<ul style="list-style: none;">
<li><img src="https://img.clipartfox.com/63b45de06c3ab7b66cbf23b18a9d2680_profile20clipart-profile-clip-art_297-300.png" alt="Tutor" style="width:200px;height:150px;"></li>
<li>Name : Beth</li>
<li>Rating : </li>
<li><input type="button" value="Request Details" align="center"></li>
</ul>
</th>
</tr>
<tr>
<th>
<ul style="list-style: none;">
<li><img src="https://img.clipartfox.com/63b45de06c3ab7b66cbf23b18a9d2680_profile20clipart-profile-clip-art_297-300.png" alt="Tutor" style="width:200px;height:150px;" float: left;></li>
<li>Name : Betty</li>
<li>Rating : </li>
<li><input type="button" value="Request Details"></li>
</ul>
</th>
<th>
<ul style="list-style: none;">
<li><img src="https://img.clipartfox.com/63b45de06c3ab7b66cbf23b18a9d2680_profile20clipart-profile-clip-art_297-300.png" alt="Tutor" style="width:200px;height:150px;"></li>
<li>Name : Mark</li>
<li>Rating : </li>
<li><input type="button" value="Request Details" align="center"></li>
</ul>
</th>
<th>
<ul style="list-style: none;">
<li><img src="https://img.clipartfox.com/63b45de06c3ab7b66cbf23b18a9d2680_profile20clipart-profile-clip-art_297-300.png" alt="Tutor" style="width:200px;height:150px;"></li>
<li>Name : Beth</li>
<li>Rating : </li>
<li><input type="button" value="Request Details" align="center"></li>
</ul>
</th>
</tr>
<tr>
<th>
<ul style="list-style: none;">
<li><img src="https://img.clipartfox.com/63b45de06c3ab7b66cbf23b18a9d2680_profile20clipart-profile-clip-art_297-300.png" alt="Tutor" style="width:200px;height:150px;" float: left;></li>
<li>Name : Betty</li>
<li>Rating : </li>
<li><input type="button" value="Request Details"></li>
</ul>
</th>
<th>
<ul style="list-style: none;">
<li><img src="https://img.clipartfox.com/63b45de06c3ab7b66cbf23b18a9d2680_profile20clipart-profile-clip-art_297-300.png" alt="Tutor" style="width:200px;height:150px;"></li>
<li>Name : Mark</li>
<li>Rating : </li>
<li><input type="button" value="Request Details" align="center"></li>
</ul>
</th>
<th>
<ul style="list-style: none;">
<li><img src="https://img.clipartfox.com/63b45de06c3ab7b66cbf23b18a9d2680_profile20clipart-profile-clip-art_297-300.png" alt="Tutor" style="width:200px;height:150px;"></li>
<li>Name : Beth</li>
<li>Rating : </li>
<li><input type="button" value="Request Details" align="center"></li>
</ul>
</th>
</tr>
</table>
</article>


</div>
</body>
</html>