<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>At Your Service</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style>
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
function displayMyFruitsList() {
	var x = document.getElementById('myFruitsList');
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
						<form action="Groceries.jsp" method="get">
			      			<button formaction="Vegetables.jsp" id="" >Vegetables</button>
			      		</form>
			      		<button onclick="displayMyFruitsList()" id="myFruits" >Fruits</button>
			      			<div class="" id="myFruitsList" style="display:none; color: #555;font-family: Courier New;font-size: 12px;">	
								<a  href=#apples>Apples</a>
								<a  href="#banana">Bananas & Plantains</a>
								<a  href="#berries">Berries</a>
								<a  href="#citrus">Citrus Fruits</a>
								<a  href="#grapes">Grapes</a>
								<a  href="#melons">Melons</a>
								<a  href="#pears">Pears</a>
								<a  href="#tropical">Tropical & Exotic Fruit</a>
							</div>
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
			<th id="apples"><u>Apples</u></th>
		</tr>
		<tr>
			<td>Braeburn</td>
			<td><img src="http://www.markon.com/sites/default/files/styles/product_banner/public/prdimg//MFC_Apples_Braeburn.jpg?itok=7OkTQC9E" alt="Braeburn" style="width:200px;height:100px;"></td>
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
			<td>Fuji</td>
			<td><img src="http://arabiankart.com/wp-content/uploads/2015/09/green_apple.jpg" alt="Fuji" style="width:200px;height:100px;"></td>
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
			<td>Gala</td>
			<td><img src="http://barfblog.com/wp-content/uploads/2014/03/New-Zealand-Royal-Gala-Red-Apple-2pcs1.jpeg" alt="Gala" style="width:200px;height:100px;"></td>
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
			<td>Golden Delicious</td>
			<td><img src="https://www.theplantingtree.com/media/catalog/product/cache/1/image/1920x/04f3d080fa2c94223fead33caa313382/g/o/golden-dellicious-apples.jpg" alt="Golden" style="width:200px;height:100px;"></td>
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
			<td>Granny Smith</td>
			<td><img src="http://www.terra-aromatica.ru/images/green_apple.jpg" alt="Granny" style="width:200px;height:100px;"></td>
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
			<td>Honeycrisp</td>
			<td><img src="https://www.freshdirect.com/media/images/product/fruit_2/fru_apl_hnycrsp_org4_z.jpg?lastModify=2016-04-15" alt="Honey" style="width:200px;height:100px;"></td>
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
			<td>Pink Lady</td>
			<td><img src="https://www.freshdirect.com/media/images/product/fruit_2/fru_apl_pnkldy_4pk_z.jpg?lastModify=2016-04-15" alt="Pink" style="width:200px;height:100px;"></td>
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
			<td>Red Delicious</td>
			<td><img src="https://smhttp-ssl-17653.nexcesscdn.net/media/catalog/product/cache/1/thumbnail/9df78eab33525d08d6e5fb8d27136e95/f/t/ft047a.jpg" alt="Red" style="width:200px;height:100px;"></td>
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
			<th id="banana"><u>Bananas & Plantains</u></th>
		</tr>
		<tr>
			<td>Bananas</td>
			<td><img src="https://s-media-cache-ak0.pinimg.com/originals/7d/06/84/7d06845bc5f631b32ced2eca26312de5.jpg" alt="Banana" style="width:200px;height:100px;"></td>
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
			<td>Plantains</td>
			<td><img src="http://www.eatsxm.com/uploads/1/3/8/6/13862036/7368771_orig.jpg" alt="Plantain" style="width:200px;height:100px;"></td>
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
			<th id="berries"><u>Berries</u></th>
		</tr>
		<tr>
			<td>Strawberries</td>
			<td><img src="http://www.adagio.com/images5/flavor_thumbnail/strawberry.jpg" alt="Strawberry" style="width:200px;height:100px;"></td>
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
			<td>Blueberries</td>
			<td><img src="http://www.medicalnewstoday.com/content/images/articles/287/287710/blueberries.jpg" alt="Blueberry" style="width:200px;height:100px;"></td>
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
			<td>Raspberries</td>
			<td><img src="https://images6.alphacoders.com/348/348028.jpg" alt="Raspberry" style="width:200px;height:100px;"></td>
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
			<td>Blackberries</td>
			<td><img src="http://www.thespanishorchard.com/wp-content/uploads/2015/05/Blackberry1.jpg" alt="Blackberry" style="width:200px;height:100px;"></td>
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
			<th id="citrus"><u>Citrus Fruits</u></th>
		</tr>
		<tr>
			<td>Grape Fruit</td>
			<td><img src="http://fivehourdiabetic.com/wp-content/uploads/2014/11/Grapefruit-with-a-half-and-leaves-on-white-background.jpg" alt="Grape Fruit" style="width:200px;height:100px;"></td>
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
			<td>Lemons</td>
			<td><img src="http://dreamatico.com/data_images/lemon/lemon-8.jpg" alt="Lemon" style="width:200px;height:100px;"></td>
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
			<td>Limes</td>
			<td><img src="http://img.21food.com/20110609/product/1306164781253.jpg" alt="Lime" style="width:200px;height:100px;"></td>
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
			<td>Oranges</td>
			<td><img src="http://3.bp.blogspot.com/-VtKEcTOpH8Y/VUgXXJ5jS6I/AAAAAAAABz8/ZdK3Ysojh0k/s1600/jeruk%2BLR2.jpg" alt="Orange" style="width:200px;height:100px;"></td>
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
			<td>Mandarins</td>
			<td><img src="http://www.citrustogrow.com.au/wp-content/uploads/2014/02/Afourer-Mandarin.jpg" alt="Mandarins" style="width:200px;height:100px;"></td>
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
			<th id="grapes"><u>Grapes</u></th>
		</tr>
		<tr>
			<td>Red Grapes</td>
			<td><img src="http://www.diabetes.co.uk/blog/wp-content/uploads/2015/09/Grape-White-Background-Vine-Fruit-Bunch_Medium.jpg" alt="Red Grapes" style="width:200px;height:100px;"></td>
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
			<td>Green Grapes</td>
			<td><img src="http://alternativa-za-vas.com/images/uploads/grozde1.jpg" alt="Green Grapes" style="width:200px;height:100px;"></td>
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
			<th id="melons"><u>Melons</u></th>
		</tr>
		<tr>
			<td>Cantaloupe</td>
			<td><img src="http://mysquarefootgarden.net/wp-content/uploads/cantaloupe.jpg" alt="Cantaloupe" style="width:200px;height:100px;"></td>
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
			<td>Watermelon</td>
			<td><img src="https://www.aldi.us/fileadmin/_processed_/7/8/csm_Watermelon_D_5a46718269.jpg" alt="Watermelon" style="width:200px;height:100px;"></td>
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
			<td>Honeydew</td>
			<td><img src="https://8e9d5b8b8dcb9208ef3f-01db2a53ae0368d03387780ee86ead55.ssl.cf2.rackcdn.com/0000000043290_CF_hyvee_default_large.jpeg" alt="Honeydew" style="width:200px;height:100px;"></td>
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