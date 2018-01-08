<%@include file="main_files/header.jsp"%>

<%@include file="main_files/nav_header2.jsp"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<style>
#btnli>li {
	display: inline-block;
}
</style>

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

			<%@include file="main_files/AdminSlider.jsp"%>

		</section>
		<!-- /.sidebar -->
	</aside>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h3>Welcome To Admin Page</h3>

		</section>

		<!-- Main content -->
		<section class="content container-fluid">
			<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/employeemanagement" user="root"
				password="" />
			<section>

				<div class="row">
					<div class="col-md-12">
						<div class="col-md-7">
							<div class="widget-box transparent" id="recent-box">
								<div class="widget-header">

									<div class="widget-toolbar no-border">
										<ul class="nav nav-tabs" id="recent-tab">

											<li id="liBirthday" class="active"><a data-toggle="tab"
												href="#member-tab" class="purple"> Add Designation </a></li>

											<li id="liHoliday"><a data-toggle="tab" href="#task-tab"
												class="green">Add Qualification</a></li>

											<li id="liAnniversary"><a data-toggle="tab"
												href="#anniversary-tab" class="red">Add Team </a></li>
										</ul>
									</div>
								</div>
								<div class="widget-body">
									<div class="widget-main padding-3">
										<div class="tab-content padding-8 overflow-visible">

											<div id="member-tab" class="tab-pane active">
												<div class="clearfix">
													<br>
													<div>
														<html:form action="/designatin" method="addDesign">
															<div class="row">

																<div class="form-group">
																	<label class="col-md-4 control-label">Add
																		Designation</label>
																	<div class="col-md-5">
																		<html:text property="designation"
																			name="designationform" styleClass="form-control"
																			value=""></html:text>
																	</div>
																</div>
															</div>
															<br>

															<div class="row">
																<div class="form-group">
																	<label class="col-md-4 control-label"></label>
																	<div class="col-md-5">
																		<html:text property="type" name="designationform"
																			styleClass="form-control" value="Designation"
																			style="Display:none"></html:text>
																	</div>
																</div>
															</div>
															<br>
															<html:submit value="Submit"
																styleClass="btn btn-primary btn-info"
																style="margin-left:250px"> submit</html:submit>
															<html:hidden property="method" value="addDesign" />
															<hr style="margin-top: 10px; margin-bottom: 10px;">
														</html:form>
													</div>
													<div>
														<sql:query var="listEmp" dataSource="${myDS }">select * from designationlist where Type="Designation";</sql:query>
														<div align="center" class="table-responsive">
															<table class="table table-hover">
																<thead>
																	<tr>
																		<th>Designation Name</th>
																	</tr>
																</thead>
																<tbody id="myTable">
																	<c:forEach var="user" items="${listEmp.rows}">
																		<tr>
																			<td><c:out value="${user.Name}" /></td>
																		</tr>
																	</c:forEach>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>

											<div id="anniversary-tab" class="tab-pane">
												<div class="clearfix">
													<br>
													<div>
														<html:form action="/valueteam" method="addTeam">
															<div class="row">
																<div class="form-group">
																	<label class="col-md-4 control-label">Add Team</label>
																	<div class="col-md-5">
																		<html:text property="team" name="abc"
																			styleClass="form-control" value=""></html:text>
																	</div>
																</div>
															</div>
															<br>

															<div class="row">
																<div class="form-group">
																	<label class="col-md-4 control-label"></label>
																	<div class="col-md-5">
																		<html:text property="type" name="abc"
																			styleClass="form-control" value="Team"
																			style="Display:none"></html:text>
																	</div>
																</div>
															</div>
															<br>
															<html:submit value="Submit"
																styleClass="btn btn-primary btn-info"
																style="margin-left:250px"> submit</html:submit>
															<html:hidden property="method" value="addTeam" />
															<hr style="margin-top: 10px; margin-bottom: 10px;">
														</html:form>
													</div>
													<div>
														<sql:setDataSource var="myDS"
															driver="com.mysql.jdbc.Driver"
															url="jdbc:mysql://localhost:3306/employeemanagement"
															user="root" password="" />
														<sql:query var="listEmp" dataSource="${myDS }">select * from designationlist where Type="Team";</sql:query>
														<div align="center" class="table-responsive">
															<table class="table table-hover">
																<thead>
																	<tr>
																		<th>Team Name</th>
																	</tr>
																</thead>
																<tbody id="myTable">
																	<c:forEach var="user" items="${listEmp.rows}">
																		<tr>
																			<td><c:out value="${user.Name}" /></td>
																		</tr>
																	</c:forEach>
																</tbody>
															</table>

														</div>

													</div>
												</div>
											</div>

											<div id="task-tab" class="tab-pane">
												<div class="clearfix">
													<br>
													<div>
														<html:form action="/qualificatin"
															method="addQualification">
															<div class="row">
																<div class="form-group">
																	<label class="col-md-4 control-label">Add
																		Qualification</label>
																	<div class="col-md-5">
																		<html:text property="qualification"
																			name="qualificationform" styleClass="form-control"
																			value=""></html:text>
																	</div>
																</div>
															</div>
															<br>

															<div class="row">
																<div class="form-group">
																	<label class="col-md-4 control-label"></label>
																	<div class="col-md-5">
																		<html:text property="type" name="qualificationform"
																			styleClass="form-control" value="Qualification"
																			style="Display:none"></html:text>
																	</div>
																</div>
															</div>
															<br>
															<html:submit value="Submit"
																styleClass="btn btn-primary btn-info"
																style="margin-left:250px"> submit</html:submit>
															<html:hidden property="method" value="addQualification" />
															<hr style="margin-top: 10px; margin-bottom: 10px;">

														</html:form>
													</div>
													<div>
														<sql:query var="listEmp" dataSource="${myDS }">select * from designationlist where Type="Qualification";</sql:query>
														<div align="center" class="table-responsive">
															<table class="table table-hover">
																<thead>
																	<tr>
																		<th>Qualification Name</th>
																	</tr>
																</thead>
																<tbody id="myTable">
																	<c:forEach var="user" items="${listEmp.rows}">
																		<tr>
																			<td><c:out value="${user.Name}" /></td>
																		</tr>
																	</c:forEach>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
	</div>
	</div>
	</section>
	</section>
	</div>


	<!-- /.content-wrapper -->

	<%@include file="main_files/footer.jsp"%>



	<%@include file="main_files/js_section.jsp"%>

</body>

</html>