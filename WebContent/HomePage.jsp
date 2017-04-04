<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>At Your Service</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
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
		<li><a  href="#"><u>HOME</u></a></li>
			<li>
				<div class=display-heading">
				<a href="#" onclick="displayMyGroceriesList();" id="myGroceries"><u>GROCERIES</u></a>
					<div class="" id="myGroceriesList" style="display:none;">
					  <form action="Groceries.jsp" method="get">
			      		<button formaction="Vegetables.jsp" id="">Vegetables</button>
			      		<button formaction="Fruits.jsp" id="" >Fruits</button>
			      		<button formaction="" id="">Dairy Products</button>
			      		<button formaction="" id="" >Meat</button>
			      		<button formaction="" id="" >Snacks</button>
			      		<button formaction="" id="">Bread & Bakery</button>
			      		<button formaction="" id="" >Cereal</button>
			      		<button formaction="" id="" >Canned & Packaged Foods</button>
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
<div class= "main-display">
<h2><a href="Groceries.jsp">Groceries</a></h2>

  <img src="http://kingofwallpapers.com/vegetables/vegetables-012.jpg" alt="Vegetables" style="width:220px;height:150px;">
  <img src="http://www.newhealthadvisor.com/images/1HT18746/fruits_1.jpg" alt="Fruits" style="width:220px;height:150px;">
  <img src="http://www.popcorn.org/portals/0/Images/Nutrition_FoodPlate_Dairy.jpg?ver=2015-09-17-122717-703" alt="Diary Products" style="width:220px;height:150px;">
  <img src="http://sunfestmarket.com/wp-content/uploads/2014/04/Meat.jpg" alt="Meat" style="width:220px;height:150px;">
  <img src="http://columbiaestereo.com/web/images/-SNACKS.jpg" alt="Snacks" style="width:220px;height:150px;">
  <img src="http://www.seyirkafe.com/wp-content/uploads/2015/07/bigstock-large-variety-of-bread-still-255654711.jpg" alt="Bread & Bakery" style="width:220px;height:150px;">
  <img src="http://www.womenshealthmag.com/sites/womenshealthmag.com/files/images/wh0410ec001.jpg" alt="Cereal" style="width:220px;height:150px;">
  <img src="https://livehealthyosu.files.wordpress.com/2014/10/canned_goods.jpg" alt="Canned & Packaged Foods" style="width:220px;height:150px;">
  <br>
  <br>
  <h1><a href="RepairAndMaintenance.jsp">Repair & Maintenance</a></h1>
  <img src="http://lightschool.ucoz.com/clean.jpg" alt="HouseKeeping" style="width:220px;height:150px;">
  <img src="https://www.yell.com/static/image/9e25c96f-86ce-42a5-ae49-eaed523d28bd_image_jpeg" alt="Plumbing" style="width:220px;height:150px;">
  <img src="http://www.airdexinc.com/wp-content/uploads/2015/08/heating_and_cooling.jpg" alt="Heating & Cooling" style="width:220px;height:150px;">
  <img src="http://www.clipartkid.com/images/839/black-and-white-electrical-plug-fQgjD6-clipart.gif" alt="Electric" style="width:220px;height:150px;">
  <br>
  <br>
  <h1><a href="ChildCareServices.jsp">Child Care Services</a></h1>
  <img src="https://princetonconversationgroup.files.wordpress.com/2013/04/tutoring-banner.jpg" alt="Tutors" style="width:250px;height:150px;">
  <img src="http://worldartsme.com/images/school-music-clipart-1.jpg" alt="Music Tutors" style="width:250px;height:150px;">
  <img src="https://fthmb.tqn.com/TT9JpB5OiqO5ma7bUdCryvdJT84=/768x0/filters:no_upscale()/about/GettyImages-469868165-56a13b613df78cf7726893fe.jpg" alt="BabySitters" style="width:250px;height:150px;">
  <img src="https://img.clipartfest.com/a926c7b5744ecd62d37598551fae7f1c_babysitter-clip-art-babysitter-clip-art_300-400.jpeg" alt="Babysitters" style="width:120px;height:150px;">
</div>
</article>


</div>
</body>
</html>