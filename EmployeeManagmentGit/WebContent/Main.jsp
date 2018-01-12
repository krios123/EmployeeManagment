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
		Dashboard <small></small>
		</h1>

	</section>


	<!-- Main content -->
	<section class="content container-fluid">
		<%-- SQL connections ------------------------------------------------------------------------------------%>
		<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/employeemanagement" user="root"
			password="" />


		<sql:query var="emps" dataSource="${myDS }">select * from employeedetails;</sql:query>
	<sql:query var="joining" dataSource="${myDS }">select * from employeedetails where Date_of_joining=curdate() and flag=1;</sql:query>
		
		<sql:query var="Interviews" dataSource="${myDS }">select * from recruitmentdetails where Scheduled_date=curdate() and flag=1;</sql:query>
		
			<sql:query var="dobCount" dataSource="${myDS }">select * from employeedetails where date_format(Date_of_birth,'%m-%d')= date_format(curdate(),'%m-%d');</sql:query>

		<sql:query var="workAnniversaries" dataSource="${myDS }">select *, floor(TIMESTAMPDIFF(month,Date_of_joining,curdate())/12) as 'total_year'  from employeedetails where date_format(Date_of_joining,'%m-%d')= date_format(curdate(),'%m-%d');</sql:query>


		<%---------------------------------------------------------------------------------------------------- --%>
		<section class="content">
			<!-- Small boxes (Stat box) -->
			<div class="row">
				<div class="col-md-4 col-xs-6">
					<!-- small box -->
					<div class="small-box bg-aqua dashboard_box">
						<div class="inner pull-left">
							<h3>${emps.rowCount}</h3>

							<p>Employee Registrations</p>
						</div>
						<div class="icon pull-right">
							<i class="ion ion-person-add"></i>
						</div>
						<div class="clearfix"></div>
						<a href="Display.jsp" class="small-box-footer">More info <i
							class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
				<!-- ./col -->
				<div class="col-md-4 col-xs-6">
					<!-- small box -->
					<div class="small-box bg-green dashboard_box">
						<div class="inner pull-left">
							<h3>${Interviews.rowCount}</h3>
							<h4>Today's InterView Scheduled</h4>
							
							<c:forEach var="usr" items="${Interviews.rows}">
									<c:out value="${usr.Applicant_name}" /><br>
								</c:forEach>
						</div>
						<div class="icon pull-right">
							<i class="ion ion-stats-bars"></i>
						</div>
						<div class="clearfix"></div>
						<a href="ShowInterviews.jsp" class="small-box-footer">More info <i
							class="fa fa-arrow-circle-right"></i></a>
					</div>
					
				</div>
				<!-- ./col -->
				
				<!-- ./col -->
				<div class="col-md-4 col-xs-6">
					<!-- small box -->
					<div class="small-box bg-purple dashboard_box">
						<div class="inner pull-left">
							<h3>${dobCount.rowCount}	</h3>
							<h4><%	out.print("Today's Birthday ");	%></h4>						
							<p>
								<c:forEach var="usr" items="${dobCount.rows}">
									<c:out value="${usr.Emp_name}" /><br>
								</c:forEach>
							</p>
						</div>
						<div class="icon pull-right">
							<i class="fa fa-birthday-cake"></i>
						</div>
						<div class="clearfix"></div>
					</div>
					  
				</div>
				<div class="clearfix"></div>
				<!-- ./col -->
			</div>
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-4 col-xs-6">
					<div class="small-box bg-yellow dashboard_box">
						<div class="inner pull-left">
							<h3>${joining.rowCount}	</h3>
							<h4><%	out.print(" Today's Joining!!! ");	%></h4>						
							<p>
								<c:forEach var="usr1" items="${joining.rows}">
										
									<c:out value="${usr1.Emp_name}" /><br>
								</c:forEach>
							</p>
						</div>
						<div class="icon pull-right">
							<i class=""></i>
						</div>
						<div class="clearfix"></div>
					</div>  
				</div>
				<div class="col-md-4 col-xs-6">
					<div class="small-box bg-red dashboard_box">
						<div class="inner pull-left">
							<h3>${workAnniversaries.rowCount}	</h3>
							<h4><%	out.print(" Happy Work Anniversary!!! ");	%></h4>						
							<p>
								<c:forEach var="usr1" items="${workAnniversaries.rows}">
										
									<c:out value="${usr1.Emp_name}" /><br>
								</c:forEach>
							</p>
						</div>
						<div class="icon pull-right">
							<i class="fa fa-gift"></i>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-2"></div>
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