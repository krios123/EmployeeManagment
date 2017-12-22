<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Employee Information</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        
	
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

<%@include file="main_files/nav_header1.jsp"%>
	
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

			
			<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/employeemanagement" user="root"
				password="" />

			<sql:query var="listEmp" dataSource="${myDS }">select * from employeedetails where flag=1;</sql:query>
    
    
    <section class="content container-fluid">
    
    <input type=button value="Back" onCLick="history.back()"
				class="btn btn-primary btn-info" style="margin-left: 1000px"/><br/><br/><br/>
				
      <div class="row">
        <div class="col-xs-12">
          <div class="box ">
            <div class="box-header">
              <h3 class="box-title">Employee Information</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body  ">
            <div align="center" class="table-responsive">
              <table id="myDatatable" class="table table-bordered table-striped ">
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
	                <tbody>
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
            </div>
          </div>
        </div>
      </div>
    </section>
</div>
<div class="cl">hello</div>

<%@include file="main_files/footer.jsp"%>

<script src="bower_components/jquery/dist/jquery.min.js"></script>
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<script src="dist/js/adminlte.min.js"></script>
<script src="dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(function () {
    $('#myDatatable').DataTable({
      'paging'      : true,
      'lengthChange': true,
      'searching'   : true,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : true
    })
  })
</script>
</div>
</body>
</html>