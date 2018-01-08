<%@include file="main_files/header.jsp"%>

<%@include file="main_files/nav_header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<body>

	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">

		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">

			<!-- Sidebar user panel (optional) -->
			<div class="user-panel">
				<h2 style="color: white">Welcome</h2>
				<div class="pull-left info"></div>
			</div>


			<%@include file="main_files/slidermenu.jsp"%>

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

			<html:errors />
			<div class="container" style="margin-top: 30px">
				<div class="col-md-10 col-md-offset-1">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">
								<strong>Login Form </strong>
							</h3>
						</div>
						<div class="panel-body">

							<html:form action="/login" method="insertlogin">
								<div class="row">

									<div class="form-group">
										<label class="col-md-4 control-label" for="Name">Type</label>
										<div class="col-md-5">
											<html:select property="type"
												value="" styleClass="form-control"
												name="loginForm">
												<html:option value="">-Select-</html:option>
												<html:option value="Admin">Admin</html:option>
												<html:option value="HR">HR</html:option>
												<html:option value="Employee">Employee</html:option>
												
											</html:select>
										</div>
									</div>
								</div><br>
								<div class="row">

									<div class="form-group">
										<label class="col-md-4 control-label" for="Name">User
											Name</label>
										<div class="col-md-5">
											<html:text property="username" name="loginForm"
												styleClass="form-control" value=""></html:text>
										</div>
									</div>
								</div>
								<br>

								<div class="row">
									<div class="form-group">
										<label class="col-md-4 control-label"> Password</label>
										<div class="col-md-5">
											<html:text property="password" name="loginForm"
												styleClass="form-control" value=""></html:text>
										</div>
									</div>
								</div>
								<br>
								<html:submit value="Login" styleClass="btn btn-lg btn-info"
									style="margin-left:400px"> submit</html:submit>
								<html:hidden property="method" value="insertlogin" />
								<hr style="margin-top: 10px; margin-bottom: 10px;">
							</html:form>
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<%@include file="main_files/footer.jsp"%>
	</div>


	<%@include file="main_files/js_section.jsp"%>
</body>
</html>