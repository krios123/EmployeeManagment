<%@include file="main_files/header.jsp"%>

<%@include file="main_files/nav_header1.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
		<h1>Assets</h1>

	</section>

	<!-- Main content -->
	<section class="content container-fluid">
		<input type=button value="Back" onCLick="history.back()"
			class="btn btn-primary btn-info" style="margin-left: 1000px">
			<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/employeemanagement" user="root"
				password="" />

			<sql:query var="listEmp" dataSource="${myDS }">select * from employeedetails;</sql:query>


		<div class="container" style="margin-top: 30px">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-default">

					<div class="panel-body">

						<html:form action="/assetregistration" method="add">

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Employee id</label>
									<div class="col-md-5">
									<html:select property="employee_name" value=""
											styleClass="form-control" name="assetForm">
											
											<html:option value="">-Select-</html:option>
											<c:forEach var="user" items="${listEmp.rows}">
											<html:option value="${user.Emp_id}">${user.Emp_id}--${user.Emp_name}</html:option>
										</c:forEach>
											
										</html:select>
										
										</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Rent</label>
									<div class="col-md-5">
										<html:text property="rent" name="assetForm"
											styleClass="form-control" value=""></html:text>
										
									</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Team</label>
									<div class="col-md-5">
										<html:text property="team" name="assetForm"
											styleClass="form-control" value=""></html:text>
										
									</div>
								</div>
							</div>
							<br>
							
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label"> Date of Laptop Given</label>
									<div class="col-md-5">
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<div>
											<html:text property="date_to_given" name="assetForm"
												styleClass="form-control pull-right datepicker" value=""></html:text>
							
										</div>
									
									</div>
								</div>
							</div>
							</div>
							<br>

							
						
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Designation</label>
									<div class="col-md-5">
										<html:text property="designation" name="assetForm"
											styleClass="form-control" value=""></html:text>
										
									</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Work Location</label>
									<div class="col-md-5">
										<html:text property="work_location"
											name="assetForm" styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Configuration</label>
									<div class="col-md-5">
										<html:text property="configuration"
											name="assetForm" styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>
							
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Courier_done</label>
									<div class="col-md-5">
										<html:text property="courier_done"
											name="assetForm" styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>
							
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Laptop Received by Employee</label>
									<div class="col-md-5">
										<html:text property="laptop_received_by_employee"
											name="assetForm" styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>

							<html:submit styleClass="btn btn-success" style="margin-left:400px">Submit</html:submit>
							<hr style="margin-top: 10px; margin-bottom: 10px;">
							<html:hidden property="method" value="recruit"/>
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