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

			<sql:query var="listEmp" dataSource="${myDS }">select * from employeedetails where flag=1;</sql:query>


		<div class="container" style="margin-top: 30px">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-default">

					<div class="panel-body">

						<html:form action="/assetregistration" method="insert" onsubmit="return formValidation()">
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Employee id</label>
									<div class="col-md-5">
									<html:select property="employee_id" value="" styleId="employee_id"
											styleClass="form-control getasset" name="assetForm" onchange="getvalue()">
											
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
										<html:text property="rent" name="assetForm" styleId="rent"
											styleClass="form-control" value="" ></html:text>
										
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Designation</label>
									<div class="col-md-5">
										<html:text property="designation" name="assetForm" styleId=""
											styleClass="form-control designation" value="" readonly="true" ></html:text>
										
									</div>
								</div>
							</div>
							<br>
								<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Team</label>
									<div class="col-md-5">
										<html:text property="team" name="assetForm" styleId=""
											styleClass="form-control team" value="" readonly="true" ></html:text>
										
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Work location</label>
									<div class="col-md-5">
										<html:text property="work_location" name="assetForm" styleId=""
											styleClass="form-control work" value="" readonly="true"></html:text>
										
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
											<html:text property="date_to_given" name="assetForm" styleId="date_to_given"
												styleClass="form-control pull-right datepicker" value=""></html:text>
							
										</div>
									
									</div>
								</div>
							</div>
							</div>
							<br>

								<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Company of Laptop</label>
									<div class="col-md-5">
										<html:text property="company_of_laptop" styleId="company_of_laptop"
											name="assetForm" styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>
							

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Configuration</label>
									<div class="col-md-5">
										<html:text property="configuration" styleId="configuration"
											name="assetForm" styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>
							
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Courier_done</label>
									<div class="col-md-5">
										<html:text property="courier_done" styleId="courier_done"
											name="assetForm" styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>
							
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Laptop Received by Employee</label>
									<div class="col-md-5">
										<html:text property="laptop_received_by_employee" styleId="laptop_received_by_employee"
											name="assetForm" styleClass="form-control" value=""></html:text>
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
<script type="text/javascript">
	$('.datepicker').datepicker({
		autoclose : true,
		todayHighlight : true,
		format:"yyyy-mm-dd"
	});
	
	function getvalue()
	{
		url="http://localhost:8080/EmployeeManagmentGit/getassetvalue?method=assetvalue&id="+$(".getasset").val();
		
		$.get(url,function(data,status){
			alert("hi")

			alert(status)

			if(status=="success")
				{
				alert(data)
				var detail=JSON.parse(data)
				
				$(".team").val(detail.team)
				$(".work").val(detail.work)
				$(".designation").val(detail.designation)
				}
		})
		alert(url);
	}
	
	function formValidation()
	{
		var employee_id = document.getElementById("employee_id").value;
		var rent = document.getElementById("rent").value;
		var date_to_given = document.getElementById("date_to_given").value;
		var company_of_laptop = document.getElementById("company_of_laptop").value;
		var configuration = document.getElementById("configuration").value;
		var courier_done = document.getElementById("courier_done").value;
		var laptop_received_by_employee = document.getElementById("laptop_received_by_employee").value;
		
		if(employee_id=="")
			{
				alert("Please select Employee id !!");
				document.getElementById("employee_id").focus();
				return false;
			}
		
		if(rent==""|| date_to_given==""|| date_to_given==""|| company_of_laptop==""
				|| configuration==""|| courier_done==""|| laptop_received_by_employee)
			{
			 	alert("Please enter all the mandatory fields!!!"); 
		        return false; 
			}
		
	}
</script>
</html>