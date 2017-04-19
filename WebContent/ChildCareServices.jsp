<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.ArrayList,java.util.Iterator,com.edu.capstone.vo.*" %>
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
<style type="text/css">

</style>
</head>
<body>
	<div class="container">

		<header>
		<h3>At Your Service...</h3>
		</header>


		<nav>
		<ul>
			<li><a href="HomePage.jsp"><u>HOME</u></a></li>
			<li><a href="#" onclick="displayMyGroceriesList();"
				id="myGroceries"><u>GROCERIES</u></a>
				<div class="" id="myGroceriesList" style="display: none;">
					<form action="Groceries.jsp" method="get">
						<button formaction="" id="">Vegetables</button>
						<button formaction="Fruits.jsp" id="">Fruits</button>
						<button formaction="" id="">Dairy Products</button>
						<button formaction="" id="">Meat</button>
						<button formaction="" id="">Snacks</button>
						<button formaction="" id="">Bread & Bakery</button>
						<button formaction="" id="">Cereal</button>
						<button formaction="" id="">Canned & Packaged Foods</button>
					</form>
				</div></li>
			<li class=""><a href="#" onclick="displayMyRepairList();"
				id="myRepairs" class=""><u>REPAIR & MAINTENANCE</u></a>
				<div class="" id="myRepairsList" style="display: none;">
					<form action="RepairAndMaintenance.jsp" method="get">
						<button type="submit" formaction="RepairAndMaintenance.jsp" id="">HouseKeeping</button>
						<button type="submit" formaction="RepairAndMaintenance.jsp" id="">Plumbing</button>
						<button type="submit" formaction="RepairAndMaintenance.jsp" id="">Heating
							& Cooling</button>
						<button type="submit" formaction="RepairAndMaintenance.jsp" id="">Electric</button>
					</form>

				</div></li>
			<li class=""><a href="#" onclick="displayMyChildCareList();"
				id="myCares" class=""><u>CHILD CARE SERVICES</u></a>
				<div class="" id="myCaresList" style="display: none;">
					<form action="ChildCareServices.jsp" method="get">
						<button type="submit" formaction="ChildCareServices.jsp" id=""
							style="background-color: #fff; color: #999999; height: 35px; width: 100%;">Tutors</button>
						<button type="submit" formaction="BabySitters.jsp" id=""
							style="background-color: #fff; color: #999999; height: 35px; width: 100%;">Baby-sitters</button>
					</form>
				</div></li>
		</ul>
		</nav>

		<article>
		<h3>TUTORS</h3>

	<form id="tutors" action="ChildCareServlet" method="get">
			   <table width="100%">	
					 <%
			  @SuppressWarnings("unchecked")
			  ArrayList<ChildCareProviderVO> tutors = (ArrayList<ChildCareProviderVO>)request.getAttribute("childCareList");
			    Iterator<ChildCareProviderVO> tutor_iterator= tutors.iterator();
			    int index=0;
			   session.setAttribute("tutorlist", tutors);
			    while(tutor_iterator.hasNext()){
			    	ChildCareProviderVO tutor = (ChildCareProviderVO)tutor_iterator.next();
			    	System.out.println("TutorNAme"+tutor.getName());
			    	System.out.println("TutorID"+tutor.getIdChildCare());
			    	System.out.println("Tutorcategoryid"+tutor.getCategoryid());
			    	System.out.println("Tutorimage"+tutor.getImage());
			    	
			    	%>
			    			  				   
			   	<tr>
				<td width="10%">
				
					<ul  id="ulstyleimg">
		
							<li><img
							src="data:image/gif;base64,<%=tutor.getImage()%>"
							alt="Tutor" id="circle"></li>
							</ul>
							</td>
						<td width="80%">
						<ul id="ulstyle">
						<li><p id="listyle">Name : </p><p id="listylevalues"><%=tutor.getName()%></p></li>
						<li><p id="listyle">Expertise : </p><p id="listylevalues"><%=tutor.getSubjects()%></li>
						<li><p id="listyle">Available : </p><p id="listylevalues"><%=tutor.getAvailable()%></li>
						<li><p id="listyle"></p><p id="listylevalues"><%=tutor.getMode()%></li>
					
						</ul></td>
						<td width="10%">
					 
						
						<a id="button" href="ChildCareDetails.jsp?index=<%=index%>" style="text-decoration: none" target="_blank">View Details</a>
						
				</td>
			</tr>
			
			  <% index++;} %>
			  </table>
			   		</form>
				</article>	
	</div>
</body>
</html>