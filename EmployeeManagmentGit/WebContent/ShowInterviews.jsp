<%@include file="main_files/header.jsp"%>
 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="CSS/style.css">



<header class="main-header">

	<!-- Logo -->
	<a href="index.jsp" class="logo">
		<span class="logo-mini"><b>#</b>008</span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>K</b>rios</span>
	</a>

	<!-- Header Navbar -->
	<nav class="navbar navbar-static-top" role="navigation">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="push-menu"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>


		<div class="navbar-custom-menu">
			<span> <!-- search form (Optional) -->

				<form class="navbar-form navbar-left" action="#" method="get">
					<div class="input-group">

						 <input class="form-control" id="myInput" type="text" placeholder="Search..">

					</div>
				</form>
				</span>
				 <span>

					<ul class="nav navbar-nav">
						<li><a href="login.jsp">Logout</a></li>
					</ul>

			</span>
		</div>
	</nav>
</header>

<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<body>

	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- Sidebar user panel (optional) -->
			<div class="user-panel">
				<h2 style="color: white">Welcome</h2>
				<div class="pull-left info"></div>
			</div>


			<%@include file="main_files/slider_submenu.jsp"%>

		</section>
		<!-- /.sidebar -->
	</aside>

	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h2>Interviews Updates</h2>

		</section>

		<!-- Main content -->
		<section class="content container-fluid">
			<input type=button value="Back" onCLick="history.back()"
				class="btn btn-primary btn-info" style="margin-left: 1000px"/><br/><br/><br/>
			<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/employeemanagement" user="root"
				password="" />

			<sql:query var="listEmp" dataSource="${myDS }">select * from recruitmentdetails where flag=1;</sql:query>



			<div align="center" class="table-responsive">
				<table border="1" class="table table-hover">
					<thead>
						<tr>
						    <th>Applicant Id</th>
							<th>Applicant Name</th>
							<th>Scheduled Date</th>
							<th>Interview Time</th>							
							<th>Venue</th>							
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</thead>
						<tbody id="myTable">
							<c:forEach var="user" items="${listEmp.rows}">
							<fmt:parseDate value="${user.Scheduled_date}" var="sdate" pattern="yyyy-MM-dd"/>
							<tr>
								<td><c:out value="${user.Applicant_id}" /></td>
								<td><c:out value="${user.Applicant_name}" /></td>
								<td><fmt:formatDate value="${sdate}" type="date"/> </td>
								<td><c:out value="${user.Interview_time}" /></td>
								<td><c:out value="${user.Venue}" /></td>	
								<td><html:link page="/select?method=selecteddelete&id=${user.Applicant_id}"><div class="btn btn-block btn-success btn-sm">Selected</div></html:link></td>
															
								<td><html:link page="/iupdate?method=update&id=${user.Applicant_id}"><div class="btn btn-block btn-warning btn-sm">Update</div></html:link></td>
								<td><div onclick="forDelete(${user.Applicant_id})" ><div class="btn btn-block btn-danger btn-sm">Delete</div></div></td>
							</tr>
							</c:forEach>
						</tbody>
				</table>

			</div>
			<script type="text/javascript">
				function forDelete(empid) {

					var r=confirm("Are yoy sure?")
					alert("empid  "+ empid)

				
					if(r==true)
						{
							location.href = '/EmployeeManagmentGit/idelete?method=delete&id='+empid;
						}
					else
						{
							return
						}
				}
			
			</script>
		</section>
		<!-- /.content -->
	</div>



	<%@include file="main_files/footer.jsp"%>
	</div>


	<%@include file="main_files/js_section.jsp"%>
<script>
$(document).ready(function(){
	//alert("hii")
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</body>