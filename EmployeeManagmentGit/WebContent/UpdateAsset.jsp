<%@include file="main_files/header.jsp"%>

<%@include file="main_files/nav_header1.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<body>

	<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/employeemanagement" user="root"
		password="" />

	<sql:query var="listEmp" dataSource="${myDS }">select employeedetails.Emp_name, assetdetails.Rent, assetdetails.Date_to_given ,assetdetails.Company_of_laptop, assetdetails.Configuration,assetdetails.Courier_done,assetdetails.Laptop_received_by_employee from assetdetails inner join employeedetails on assetdetails.Employee_id=employeedetails.Emp_id where Employee_id=<%=request.getSession().getAttribute("Empid")%>;</sql:query>

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
			<h1>Applicant Updation</h1>

		</section>

		<!-- Main content -->
		<section class="content container-fluid">
			<input type="button" value="Back" onCLick="history.back()"
				class="btn btn-primary btn-info" style="margin-left: 1000px"/>

			<div class="container" style="margin-top: 30px">
				<div class="col-md-10 col-md-offset-1">
					<div class="panel panel-default">
						<div class="panel-body">
							<html:form action="/updateasset" method="updateDisplay">
								<c:forEach var="user" items="${listEmp.rows}">
										<fmt:parseDate value="${user.Date_to_given }" var="sdate" pattern="yyyy-MM-dd"/>
											<fmt:formatDate value="${sdate}" pattern="MM/dd/yyyy" var="intdate"/>
										
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Employee Name</label>
											<div class="col-md-5">
												<html:text property="applicant" name="assetForm"
													styleClass="form-control" value="${user.Emp_name }" disabled=""></html:text>
											</div>
										</div>
									</div>
									<br>
									
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Rent</label>
											<div class="col-md-5">
												<html:text property="rent" name="assetForm"
													styleClass="form-control" value="${user.Rent}" disabled=""></html:text>
											</div>
										</div>
									</div>
									<br>
															
									
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Date of Laptop given</label>
											<div class="col-md-5">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<div>
													<html:text property="date_to_given" name="assetForm"
														styleClass="form-control pull-right datepicker"
														value="${intdate}"></html:text>
													</div>
												</div>
											</div>
										</div>
									</div>								
									<br>
									
									
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Configuration</label>
											<div class="col-md-5">
												<html:text property="configuration"
													name="assetForm" styleClass="form-control"
													value="${user.Configuration }"></html:text>
											</div>
										</div>
									</div>
									<br>

									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Company Of Laptop</label>
											<div class="col-md-5">
												<html:text property="company_of_laptop" name="assetForm"
													styleClass="form-control" value="${user.Company_of_laptop }"></html:text>
											</div>
										</div>
									</div>
									<br>

									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Courier Done</label>
											<div class="col-md-5">
												<html:text property="courier_done"
													name="assetForm" styleClass="form-control"
													value="${user.Courier_done }"></html:text>
											</div>
										</div>
									</div>
									<br>	
									
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Laptop Received by Employee</label>
											<div class="col-md-5">
												<html:text property="laptop_received_by_employee"
													name="assetForm" styleClass="form-control"
													value="${user.Laptop_received_by_employee }"></html:text>
											</div>
										</div>
									</div>
									<br>
																	
								
									<html:submit styleClass="btn btn-success" style="margin-left:400px">Update</html:submit>
										<html:hidden property="method" value="updateDisplay"/>
									<hr style="margin-top: 10px; margin-bottom: 10px;">
								</c:forEach>
							</html:form>
						</div>
					</div>
				</div>
			</div>



		</section>
		<!-- /.content -->
	</div>

	<%@include file="main_files/footer.jsp"%>
	</div>

	<%@include file="main_files/js_section.jsp"%>

</body>

<script type="text/javascript">
	$('.datepicker').datepicker({
		autoclose : true,
		todayHighlight : true
	});
</script>
</html>