<%@include file="main_files/header.jsp"%>

<%@include file="main_files/nav_header1.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


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
		<h1>Employee Attendance Data Form</h1>

	</section>

	<!-- Main content -->
	<section class="content container-fluid">
	
<%---------------------------------------------------------------------------------------------------%>
			<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/employeemanagement" user="root"
				password="" />

			<sql:query var="listEmp" dataSource="${myDS }">select * from employeedetails where flag=1;</sql:query>
<%--------------------------------------------------------------------------------------------------------%>
		<input type=button value="Back" onCLick="history.back()"
			class="btn btn-primary btn-info" style="margin-left: 1000px">

		<div class="container" style="margin-top: 30px">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-default">

					<div class="panel-body">

						<html:form action="/insertattendance" method="insert">
								<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Employee Id</label>
									<div class="col-md-5">
										<html:select property="emp_id" value=""
											styleClass="form-control" name="attendanceForm">
											<html:option value="">-Select-</html:option>
											<c:forEach var="user" items="${listEmp.rows }">
												<html:option value="${user.Emp_id}">${user.Emp_id} ${user.Emp_name}</html:option>
											</c:forEach>
										</html:select>
									</div>
								</div>
							</div>
							<br>
							
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Total working Days</label>
									<div class="col-md-5">
										<html:text property="total_working_days" name="attendanceForm"
											styleClass="form-control" value=""></html:text>
											
									</div>
								</div>
							</div>
							<br>
							
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Total Present Days</label>
									<div class="col-md-5">
										<html:text property="total_present_days" name="attendanceForm"
											styleClass="form-control" value=""></html:text>
											
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Leaves Taken</label>
									<div class="col-md-5">
										<html:text property="leaves_taken" name="attendanceForm"
											styleClass="form-control" value=""></html:text>
											<div style="color: red;">	
												<html:errors property="emp_name" />
											</div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Leave Type</label>
									<div class="col-md-5">
										<html:select property="leave_type" value=""
											styleClass="form-control" name="attendanceForm">
											<html:option value="">-Select-</html:option>
												<html:option value="paid">Paid</html:option>
												<html:option value="unpaid">UnPaid</html:option>
										</html:select>
									</div>
								</div>
							</div>
							<br>
							
							<html:submit styleClass="btn btn-success" style="margin-left:400px">Submit</html:submit>
							<hr style="margin-top: 10px; margin-bottom: 10px;">
							<html:hidden property="method" value="insert"/>
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
</html>