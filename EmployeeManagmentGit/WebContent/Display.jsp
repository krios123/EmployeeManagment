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
			<h2>Employee Information</h2>

		</section>

		<!-- Main content -->
		<section class="content container-fluid">
			<input type=button value="Back" onCLick="history.back()"
				class="btn btn-primary btn-info" style="margin-left: 1000px"><br/><br/><br/>
			<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/employeemanagement" user="root"
				password="" />

			<sql:query var="listEmp" dataSource="${myDS }">select * from employeedetails where flag=1;</sql:query>



			<div align="center" class="table-responsive">
				<table border="1" class="table table-hover">
					<thead>
						<tr>
							<th>Employee Id</th>
							<th>Emp Name</th>
							<th>Designation</th>
							<th>Date of Birth</th>
							<th>Gender</th>
							<th>Fathers Name</th>
							<th>Fathers Contact Details</th>
							<th>Fathers Designation</th>
							<th>Personal Mail id</th>
							<th>Permanent Address</th>
							<th>Local Address</th>
							<th>Contact No</th>
							<th>Highest Qualification</th>
							<th>Year of Experience</th>
							<th>Date of Joining</th>
							<th>Date of Registration</th>
							<th>Salary at the time of Joining</th>
							<th>Increment Amount</th>
							<th>Increment Amount_date</th>
							<th>Passport No</th>
							<th>Pancard No</th>
							<th>PF No</th>
							<th>Official Bank Name</th>
							<th>Official Bank Account No</th>
							<th>Employee Personal Bank Name</th>
							<th>Personal Bank Account No</th>
							<th>Bank Address</th>
							<th>IFSC Code</th>
							<th>Total Leave Permissioned</th>
							<th>Total Leave taken from Jan till Dec</th>
							<th>Leave taken</th>
							<th>Absent</th>
							<th>Total yearly leave left</th>
							<th></th>
							<th></th>
						</tr>
					</thead>
						<tbody id="myTable">
							<c:forEach var="user" items="${listEmp.rows}">
							<fmt:parseDate value="${user.Date_of_birth}" var="DOBirth" pattern="yyyy-MM-dd"/>
							<fmt:parseDate value="${user.Date_of_joining}" var="DOJoining" pattern="yyyy-MM-dd"/>
							<fmt:parseDate value="${user.Date_of_registration}" var="DORegistration" pattern="yyyy-MM-dd"/>
							<fmt:parseDate value="${user.Increment_amount_date}" var="IncrementAmtDate" pattern="yyyy-MM-dd"/>
							<tr>
								<td><c:out value="${user.Emp_id}" /></td>
								<td><c:out value="${user.Emp_name}" /></td>
								<td><c:out value="${user.Designation}" /></td>
									<td><fmt:formatDate value="${DOBirth }" type="date"/> </td>
								<td><c:out value="${user.Gender}" /></td>
								<td><c:out value="${user.Fathers_name}" /></td>
								<td><c:out value="${user.Fathers_contact_details}" /></td>
								<td><c:out value="${user.Fathers_designation}" /></td>
								<td><c:out value="${user.Personal_mail_id}" /></td>
								<td><c:out value="${user.Permanent_address}" /></td>
								<td><c:out value="${user.Local_address}" /></td>
								<td><c:out value="${user.Contact_no}" /></td>
								<td><c:out value="${user.Highest_qualification}" /></td>
								<td><c:out value="${user.Year_of_Experience}" /></td>
									<td><fmt:formatDate value="${DOJoining }" type="date"/></td>
									<td><fmt:formatDate value="${DORegistration }" type="date"/></td>
								<td><c:out value="${user.Salary_at_the_time_of_joining}" /></td>
								<td><c:out value="${user.Increment_amount}" /></td>
									<td><fmt:formatDate value="${IncrementAmtDate }" type="date"/></td>
								<td><c:out value="${user.Passport_no}" /></td>
								<td><c:out value="${user.Pancard_no}" /></td>
								<td><c:out value="${user.PF_no}" /></td>
								<td><c:out value="${user.Official_bank_name}" /></td>
								<td><c:out value="${user.Official_bank_account_no}" /></td>
								<td><c:out value="${user.Employee_personal_bank_name}" /></td>
								<td><c:out value="${user.Personal_bank_account_no}" /></td>
								<td><c:out value="${user.Bank_address}" /></td>
								<td><c:out value="${user.IFSC_code}" /></td>
								<td><c:out value="${user.Total_leave_permissioned}" /></td>
								<td><c:out value="${user.Total_leave_taken_from_jan_till_dec}" /></td>
								<td><c:out value="${user.Leave_taken}" /></td>
								<td><c:out value="${user.Absent}" /></td>
								<td><c:out value="${user.Total_yearly_leave_left}" /></td>
								<td><html:link page="/update?method=update&id=${user.Emp_id}"><div class="btn btn-block btn-warning btn-sm">Update</div></html:link></td>
								<td><div onclick="forDelete(${user.Emp_id})" ><div class="btn btn-block btn-danger btn-sm">Delete</div></div></td>
							</tr>
							</c:forEach>
						</tbody>
				</table>

			</div>
			<script type="text/javascript">
				function forDelete(empid) {

					var r=confirm("Are yoy sure?")
					alert("empid  "+ empid)

					var r= confirm('Are you sure!!')
					//alert("empid  "+ empid)
					if(r==true)
						{
							location.href = '/EmployeeManagmentGit/delete?method=delete&id='+empid;
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