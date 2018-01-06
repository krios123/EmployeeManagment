<%@include file="main_files/header.jsp"%>

<%@include file="main_files/nav_header1.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>



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
		<h1>Employee Recruitment</h1>

	</section>

	<!-- Main content -->
	<section class="content container-fluid">
		<input type=button value="Back" onCLick="history.back()"
			class="btn btn-primary btn-info" style="margin-left: 1000px">

		<div class="container" style="margin-top: 30px">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-default">

					<div class="panel-body">

						<html:form action="/recruitment" method="recruit">

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Applicant name</label>
									<div class="col-md-5">
										<html:text property="applicant" name="recruitmentForm"
											styleClass="form-control" value=""></html:text>
										</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Scheduled Date</label>
									<div class="col-md-5">
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<div>
											<html:text property="scheduled_date" name="recruitmentForm"
												styleClass="form-control pull-right datepicker" value=""></html:text>
							
										</div>
									
									</div>
								</div>
							</div>
							</div>
							<br>

							
						
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Interview Time</label>
									<div class="col-md-5">
										<html:text property="interview_time" name="recruitmentForm"
											styleClass="form-control" value=""></html:text>
										
									</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Venue</label>
									<div class="col-md-5">
										<html:text property="venue"
											name="recruitmentForm" styleClass="form-control" value=""></html:text>
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
		todayHighlight : true,
		format:"yyyy-mm-dd"
	});
</script>
</html>