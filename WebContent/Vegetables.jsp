<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>At Your Service</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style>
	  td {
    	border: 1px solid black;   
	}
	td{
		text-align: center;
		padding: 15px;
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
function displayMyVegetablesList() {
	var x = document.getElementById('myVegList');
	var y = document.getElementById('myCaresList');
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
<a name="top"></a>
<body>
<div class="container">


<header>
   <h3>At Your Service...</h3>
</header>


<nav>
	<ul>
		<li><a href="HomePage.jsp"><u>HOME</u></a></li>
			<li>
				<a href="#" onclick="displayMyGroceriesList()" id="myGroceries"><u>GROCERIES</u></a>
					<div class="" id="myGroceriesList" style="display:none;">
					  
			      		<button onclick="displayMyVegetablesList()" id="" >Vegetables</button>
			      			<div class="" id="myVegList" style="display:none; color: #555;font-family: Courier New;font-size: 12px;">	
								<a  href=#artichokes>Artichokes</a>
								<a  href="#asparagus">Asparagus</a>
								<a  href="#avocados">Avocados</a>
								<a  href="#broccoli">Broccoli</a>
								<a  href="#cabbage">Cabbage</a>
								<a  href="#cauliflower">Cauliflower</a>
								<a  href="#Celery">Celery</a>
								<a  href="#corn">Corn</a>
								<a  href="#cucumbers">Cucumbers</a>
								<a  href="#eggplant">Eggplant</a>
								<a  href="#garlic">Garlic</a>
								<a  href="#leaves">Leafy Greens</a>
								<a  href="#mushroom">Mushrooms & Truffles</a>
								<a  href="#onion">Onions & Shallots</a>
								<a  href="#pea">Peas & Beans</a>
								<a  href="#peppers">Peppers</a>
								<a  href="#potato">Potatoes & Yams</a>
								<a  href="#root">Root Vegetables</a>
								<a  href="#squash">Squash & Gourds</a>
								<a  href="#tomatillos">Tomatillos</a>
								<a  href="#tomato">Tomatoes</a>
							</div>
			      		<button formaction="Fruits.jsp" id="myFruits" >Fruits</button>
			      		<button onclick="" id="" >Dairy Products</button>
			      		<button onclick="" id="" >Meat</button>
			      		<button onclick="" id="" >Snacks</button>
			      		<button onclick="" id="" >Bread & Bakery</button>
			      		<button onclick="" id="" >Cereal</button>
			      		<button onclick="" id="" >Canned & Packaged Foods</button>
			    	  
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
			<th id="artichokes"><u>Artichokes</u></th>
		</tr>
		<tr>
			<td>Artichoke</td>
			<td><img src="http://www.specialtyproduce.com/sppics/4404.png" alt="Artichokes" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
</table>
<br>
<br>
<table width="900px">
		<tr>
			<th id="asparagus"><u>Asparagus</u></th>
		</tr>
		<tr>
			<td>Asparagus</td>
			<td><img src="http://s.doctoroz.com/styles/720x480/s3/sites/default/files/slideshow/asparagus.png?itok=5B0y6B8P" alt="Asparagus" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
</table>
<br>
<br>
<table width="900px">
		<tr>
			<th id="avocados"><u>Avocados</u></th>
		</tr>
		<tr>
			<td>Hass Avocados</td>
			<td><img src="http://www.specialtyproduce.com/sppics/949.png" alt="Hass Avocados" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Reed Avocados</td>
			<td><img src="http://dev.specialtyproduce.com/produce/sppics/7521.png" alt="Reed Avocados" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
</table>
<br>
<br>
<table width="900px">
		<tr>
			<th id="broccoli"><u>Broccoli</u></th>
		</tr>
		<tr>
			<td>Broccoli Crowns</td>
			<td><img src="http://www.specialtyproduce.com/sppics/784.png" alt="Broccoli Crowns" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Broccolini Asparation</td>
			<td><img src="http://www.myproduceguy.com/local/images/items/jumbo/IT000435.jpg" alt="Broccolini Asparation" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Gai Lan Chinese Broccoli</td>
			<td><img src="http://www.qvm.com.au/wp-content/uploads/2013/04/Gai-Lan-Chinese-Broccoli.jpg" alt="Gai Lan Chinese Broccoli" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
</table>
<br>
<br>
<table width="900px">
		<tr>
			<th id="cabbage"><u>Cabbage</u></th>
		</tr>
		<tr>
			<td>Green Cabbage</td>
			<td><img src="http://goorganicnyc.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/g/r/green-cabbage.jpg" alt="Green Cabbage" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Red Cabbage</td>
			<td><img src="http://www.ayurveda.com/images/content/recipes/red-cabbage.jpg" alt="Red Cabbage" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Bok Choy</td>
			<td><img src="https://i.ytimg.com/vi/dKZKGSmw4Xc/maxresdefault.jpg" alt="Bok Choy" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Napa Cabbage</td>
			<td><img src="http://www.gourmetsleuth.com/images/default-source/articles/napa-cabbage.jpg?sfvrsn=2" alt="Napa Cabbage" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Savoy Cabbage</td>
			<td><img src="http://files.recipetips.com/images/glossary/c/cabbage_savoy.jpg" alt="Savoy Cabbage" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
</table>
<br>
<br>
<table width="900px">
		<tr>
			<th id="cauliflower"><u>Cauliflower</u></th>
		</tr>
		<tr>
			<td>Cauliflower</td>
			<td><img src="http://natureandnutrition.com/wp-content/uploads/2015/02/cauliflower.jpg" alt="Cauliflower" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
</table>
<br>
<br>
<table width="900px">
		<tr>
			<th id="celery"><u>Celery</u></th>
		</tr>
		<tr>
			<td>Celery Medium</td>
			<td><img src="https://www.freshdirect.com/media/images/product/veg_1/clry_clrystlk_z.jpg?lastModify=2016-05-02" alt="Medium" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Celery Hearts</td>
			<td><img src="http://market.bellabeanorganics.com/v/vspfiles/photos/OrganicCeleryHearts-2.jpg" alt="Hearts" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
</table>
<br>
<br>
	<table width="900px">
		<tr>
			<th id="pears"><u>Pears</u></th>
		</tr>
		<tr>
			<td>Asian Pear</td>
			<td><img src="http://18674-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2015/08/iStock_000021956100Medium.jpg" alt="Asian Pear" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Bartlett Pear</td>
			<td><img src="http://www.specialtyproduce.com/sppics/5416.png" alt="Bartlett Pear" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Bosc Pear</td>
			<td><img src="http://www.specialtyproduce.com/sppics/8183.png" alt="Bosc Pear" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Comice Pear</td>
			<td><img src="http://www.melissas.com//v/vspfiles/photos/445-2T.jpg" alt="Comice Pear" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Red Pear</td>
			<td><img src="http://www.goodfruit.com/wp-content/uploads/7d2381d9f7ede9cab0d1ef17e985bdde.jpe" alt="Red Pear" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>D'Anjou Pear</td>
			<td><img src="http://abigailkirsch.com/wp/wp-content/uploads/2012/11/iStock_000016884188XSmall.jpg" alt="D'Anjou Pear" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
</table>
<br>
<br>
<table width="900px">
		<tr>
			<th id="tropical"><u>Tropical & Exotic Fruit</u></th>
		</tr>
		<tr>
			<td>Mango</td>
			<td><img src="http://www.electricvapors.net/wp-content/uploads/2015/03/mango.jpg" alt="Mango" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Pineapple</td>
			<td><img src="http://freenology.com/images/71442946288pineapple.jpg" alt="Pineapple" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Kiwifruit</td>
			<td><img src="https://agroproducts.files.wordpress.com/2015/09/kiwifruit.jpg" alt="Kiwifruit" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Papaya</td>
			<td><img src="http://2.bp.blogspot.com/-T4beEBO1HZs/VFXHHSouewI/AAAAAAAAFK8/2oDMZemj9jw/s1600/Screen%2BShot%2B2014-11-01%2Bat%2B10.53.34%2BPM.png" alt="Papaya" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
		<tr>
			<td>Sweet young coconut</td>
			<td><img src="http://www.grealthfresh.com/image/data/footergallery/Green-Coconuts.jpg" alt="coconut" style="width:200px;height:100px;"></td>
			<td><select name="select">
				 <option value="" selected>Select Quantity</option>
 				 <option value="1">1</option>
  			     <option value="2">2</option>
  				 <option value="3">3</option>
  				 <option value="4">4</option>
				</select>
			</td>
			<td> <input type="button" value="Add to cart"></td>
		</tr>
</table>
<br>
<br>
<a href='#top'>Back to Top</a>
</article>

</div>
</body>
</html>