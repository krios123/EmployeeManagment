<%@include file="main_files/header.jsp"%>

<%@include file="main_files/nav_header1.jsp"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!-- Left side column. contains the logo and sidebar -->
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

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Employee Management <small>1</small>
		</h1>

	</section>


	<!-- Main content -->
	<section class="content container-fluid">
		<%-- SQL connections ------------------------------------------------------------------------------------%>
		<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/employeemanagement" user="root"
			password="" />

		<sql:query var="emps" dataSource="${myDS }">select * from employeedetails;</sql:query>
			<sql:query var="listemp" dataSource="${myDS }">select * from employeedetails where date_format(Date_of_birth,'%d-%m') between date_format(subdate(curdate(),interval 2 day),'%d-%m') and date_format(subdate(curdate(),interval -5 day),'%d-%m');</sql:query>


		<%---------------------------------------------------------------------------------------------------- --%>
		<section class="content">
			<!-- Small boxes (Stat box) -->
			<div class="row">
				<div class="col-lg-3 col-xs-6">
					<!-- small box -->
					<div class="small-box bg-aqua">
						<div class="inner">
							<h3>${emps.rowCount}</h3>

							<p>Employee Registrations</p>
						</div>
						<div class="icon">
							<i class="ion ion-person-add"></i>
						</div>
						<a href="Display.jsp" class="small-box-footer">More info <i
							class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
				<!-- ./col -->
				<div class="col-lg-3 col-xs-6">
					<!-- small box -->
					<div class="small-box bg-green">
						<div class="inner">
							<h3>100</h3>

							<p>Total orders</p>
						</div>
						<div class="icon">
							<i class="ion ion-stats-bars"></i>
						</div>
						<a href="#" class="small-box-footer">More info <i
							class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
				<!-- ./col -->
				<div class="col-lg-3 col-xs-6">
					<!-- small box -->
					<div class="small-box bg-yellow">
						<div class="inner">
							<h3>44</h3>

							<p>xyz</p>
						</div>
						<div class="icon">
							<i class="ion ion-person-add"></i>
						</div>
						<a href="#" class="small-box-footer">More info <i
							class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
				<!-- ./col -->
				<div class="col-lg-3 col-xs-6">
					<!-- small box -->
					<div class="small-box bg-red">
						<div class="inner">
							<h3>${listemp.rowCount}	</h3>
							<h4><%	out.print("Today's Birthday ");	%></h4>						
							<p>
								<c:forEach var="usr" items="${listemp.rows}">
									<c:out value="${usr.Emp_name}" /><br>
								</c:forEach>
							</p>
						</div>
						<div class="icon">
							<i class="fa fa-birthday-cake"></i>
						</div>


					</div>
				</div>
				<!-- ./col -->
			</div>
		</section>
	

					<%@include file="Events.jsp"%>

				</div>
			</div>
		</div>
	</section>
</div>


<!-- /.content-wrapper -->

<%@include file="main_files/footer.jsp"%>



<%@include file="main_files/js_section.jsp"%>

</body>
</html>