<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

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


<body class="hold-transition skin-blue sidebar-mini" onunload="deleteAllCookies()">
	
	
	<%
			int num;
			if(request.getParameterMap().containsKey("id") || !(request.getParameter("id")==null))
			{
				num= Integer.parseInt(request.getParameter("id"));
			}
			else
			{
				num = 0;
			}
	%>
	
	<c:set value="<%= num %>" var="cnt"></c:set>
	
	<div id="num"><%= num %></div>
	
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
  <section class="content container-fluid">
  		<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/employeemanagement" user="root"
				password="" />
				
		<sql:query var="listEmp" dataSource="${myDS }">select *,floor(TIMESTAMPDIFF(month,Date_of_joining,date_format(subdate(curdate(),interval ? month),'%y-%m-%d'))/12) as 'total_year'  from employeedetails where date_format(Date_of_joining,'%m')= date_format(subdate(curdate(),interval ? month),'%m') and flag=1 order by date_format(Date_of_joining,'%d');
				<sql:param value="${cnt }" />
				<sql:param value="${cnt }" />
		</sql:query>
		<sql:query var="month" dataSource="${myDS }">select date_format(subdate(curdate(),interval ? month),'%M') as 'Month' from dual;
			<sql:param value="${cnt }"/>
		</sql:query>
		
    	<div align="center" style="font-size: xx-large;">
  			<c:forEach var="mnth" items="${month.rows}" varStatus="cnt"><c:choose><c:when test="${ cnt.count le 1}">${mnth.Month} month Work Anniversary!!</c:when></c:choose></c:forEach>	
		</div>			
  		<table border="1" class="table table-hover">
					<thead>
						<tr>
							<th>Employee Id</th>
							<th>Emp Name</th>
							<th>Designation</th>
							<th>Gender</th>
							<th>Date of Joining</th>
							<th>Total year completed</th>
						</tr>
					</thead>
						<tbody id="myTable">
							<c:forEach var="user" items="${listEmp.rows}">
							<fmt:parseDate value="${user.Date_of_birth}" var="DOBirth" pattern="yyyy-MM-dd"/>
							<fmt:parseDate value="${user.Date_of_joining}" var="DOJoining" pattern="yyyy-MM-dd"/>
							<tr>
								<td><c:out value="${user.Emp_id}" /></td>
								<td><c:out value="${user.Emp_name}" /></td>
								<td><c:out value="${user.Designation}" /></td>
								<td><c:out value="${user.Gender}" /></td>
									<td><fmt:formatDate value="${DOJoining }" type="date"/></td>
								<td><c:out value="${user.total_year}" /></td>
							</tr>
							</c:forEach>
						</tbody>
				</table>
				
				<form action="CalenderWorkAnniversary.jsp" id="nextmonth1">
					<input type="text" style="display: none;" value="" id="id" name="id" />
					<button class="btn btn-block btn-info btn-sm" type="button" onclick="nextmonth()">Next Month</button>
					<button class="btn btn-block btn-info btn-sm" type="button" onclick="prevmonth()">Prev Month</button>
				</form>
  </section>
  </div>
 
			<script type="text/javascript">
				
				function nextmonth()
				{
					
					num = document.getElementById("num").innerHTML;
										
					document.getElementById("id").value= (num-1);
					
					document.getElementById("nextmonth1").submit();
					
				}
				
				function prevmonth()
				{
					 
				num = document.getElementById("num").innerHTML;
									
				document.getElementById("id").value= parseInt(num)+1;
				
				document.getElementById("nextmonth1").submit();
				}
			</script>


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
</div>
</body>
</html>