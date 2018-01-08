<%@include file="main_files/header.jsp"%>

<%@include file="main_files/nav_header2.jsp"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<style>
	#btnli >li{
	display:inline-block;
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
	<ul id="btnli">
            	<li ><a href="Designation.jsp" class="btn btn-primary btn-info">Add Designation</a></li>
             	<li><a href="Team.jsp" class="btn btn-primary btn-info">Add Team</a></li>
               <li><a href="Qualification.jsp" class="btn btn-primary btn-info">Add Qualification</a></li>           
          </ul>
	<div class="container" style="margin-top: 30px">
				<div class="col-md-10 col-md-offset-1">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">
								<strong>Add Team</strong>
							</h3>
						</div>
						<div class="panel-body">
						
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
												styleClass="form-control" value="Team" style="Display:none"></html:text>
										</div>
									</div>
								</div>
								<br>
								<html:submit value="Submit" styleClass="btn btn-lg btn-info"
									style="margin-left:400px"> submit</html:submit>
 								<html:hidden property="method" value="addTeam" />
 								<hr style="margin-top: 10px; margin-bottom: 10px;">
	
	</html:form>
	
	
	</section>
</div>


<!-- /.content-wrapper -->

<%@include file="main_files/footer.jsp"%>



<%@include file="main_files/js_section.jsp"%>

</body>
</html>