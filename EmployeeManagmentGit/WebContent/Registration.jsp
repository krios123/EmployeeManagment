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
		<h1>Employee Registration</h1>

	</section>

	<!-- Main content -->
	<section class="content container-fluid">
		<input type=button value="Back" onCLick="history.back()"
			class="btn btn-primary btn-info" style="margin-left: 1000px">

		<div class="container" style="margin-top: 30px">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-default">

					<div class="panel-body">

						<html:form action="/registration" method="insert">

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Employee name</label>
									<div class="col-md-5">
										<html:text property="emp_name" name="registrationForm"
											styleClass="form-control" value=""></html:text>
											<html:errors property="emp_name" />
									</div>
								</div>
							</div>
							<br>


							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Designation</label>
									<div class="col-md-5">
										<html:select property="designation" value=""
											styleClass="form-control" name="registrationForm">
											<html:option value="">-Select-</html:option>
											<html:option value="Java developer">Java Developer</html:option>
											<html:option value="PHP Developer">PHP Developer</html:option>
										</html:select>
										<html:errors property="designation"/>
									</div>
								</div>
							</div>


							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Date of Birth</label>
									<div class="col-md-5">
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<div>
											<html:text property="date_of_birth" name="registrationForm"
												styleClass="form-control pull-right datepicker" value=""></html:text>
										
										</div>
										</div><html:errors property="date_of_birth"/>
									</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label"> Gender</label>
									<div class="col-md-5">
										<html:select property="gender" value=""
											styleClass="form-control" name="registrationForm">
											<html:option value="">-Select-</html:option>
											<html:option value="male">Male</html:option>
											<html:option value="female">Female</html:option>
										</html:select>
										<html:errors property="gender"/>
										
									</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Father's Name</label>
									<div class="col-md-5">
										<html:text property="fathers_name" name="registrationForm"
											styleClass="form-control" value=""></html:text>
										<html:errors property="fathers_name"/>
									
									</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Father's Contact</label>
									<div class="col-md-5">
										<html:text property="fathers_contact_details"
											name="registrationForm" styleClass="form-control" value=""></html:text>
									
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Father's
										Designation</label>
									<div class="col-md-5">
										<html:text property="fathers_designation"
											name="registrationForm" styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>


							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Personal Mail Id</label>
									<div class="col-md-5">
										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-envelope-o"></i>
											</div>
											<html:text property="personal_mail_id"
												name="registrationForm" styleClass="form-control" value=""></html:text>
										</div><html:errors property="personal_mail_id"/>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Permanent Address</label>
									<div class="col-md-5">
										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-map-marker"></i>
											</div>
											<html:textarea property="permanent_address"
												name="registrationForm" styleClass="form-control" value=""></html:textarea>
											
							
										</div><html:errors property="permanent_address"/>
									</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label"> Local Address</label>
									<div class="col-md-5">
										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-map-marker"></i>
											</div>
											<html:textarea property="local_address"
												name="registrationForm" styleClass="form-control" value=""></html:textarea>
										</div>
										<html:errors property="local_address"/>
									</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label"> Contact No</label>
									<div class="col-md-5">
										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-phone"></i>
											</div>
											<html:text property="contact_no" name="registrationForm"
												styleClass="form-control" value="" size="10" maxlength="10"></html:text>
												<html:errors property="contact_no"/>
										
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Highest
										Qualification</label>
									<div class="col-md-5">
										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-graduation-cap"></i>
											</div>
											<html:select property="highest_qualification"
												name="registrationForm" styleClass="form-control" value="">
												<html:option value="">--Select--</html:option>
												<html:option value="B.tech">B.tech</html:option>
												<html:option value="M.tech">M.tech</html:option>
												<html:option value="B.E.">B.E.</html:option>
												<html:option value="M.E.">M.E.</html:option>
												<html:option value="BCA">BCA</html:option>
												<html:option value="MCA">MCA</html:option>
											</html:select>
												<html:errors property="highest_qualification"/>
											
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Year of
										Experience</label>
									<div class="col-md-5">
										<html:text property="year_of_Experience"
											name="registrationForm" styleClass="form-control" value="0"></html:text>
												<html:errors property="year_of_Experience"/>
									
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label"> Date of Joining</label>
									<div class="col-md-5">
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<div>
											<html:text property="date_of_joining" name="registrationForm"
												styleClass="form-control pull-right datepicker" value=""></html:text>
										
										</div></div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Date of
										Registration</label>
									<div class="col-md-5">
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<div>
											<html:text property="date_of_registration" name="registrationForm"
												styleClass="form-control pull-right datepicker" value=""></html:text>
												<html:errors property="date_of_registration"/>
										
										</div></div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Salary at the
										Time of Joining</label>
									<div class="col-md-5">
										<html:text property="salary_at_the_time_of_joining"
											name="registrationForm" styleClass="form-control" value="0"></html:text>
										<html:errors property="salary_at_the_time_of_joining"/>
									
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Passport Number</label>
									<div class="col-md-5">
										<html:text property="passport_no" name="registrationForm"
											styleClass="form-control" value=""></html:text>
									
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label"> Pan-card Number</label>
									<div class="col-md-5">
										<html:text property="pancard_no" name="registrationForm"
											styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">PF Number</label>
									<div class="col-md-5">
										<html:text property="pF_no" name="registrationForm"
											styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Official Bank
										Name</label>
									<div class="col-md-5">
										<html:text property="official_bank_name"
											name="registrationForm" styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Official Bank
										Account Number</label>
									<div class="col-md-5">
										<html:text property="official_bank_account_no"
											name="registrationForm" styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Employee Personal
										Bank Name</label>
									<div class="col-md-5">
										<html:text property="employee_personal_bank_name"
											name="registrationForm" styleClass="form-control" value=""></html:text>
										<html:errors property="employee_personal_bank_name"/>
									
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Personal Bank
										Account No</label>
									<div class="col-md-5">
										<html:text property="personal_bank_account_no"
											name="registrationForm" styleClass="form-control" value=""></html:text>
										<html:errors property="personal_bank_account_no"/>
									
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label"> Bank Address</label>
									<div class="col-md-5">
										<html:text property="bank_address" name="registrationForm"
											styleClass="form-control" value=""></html:text>
										<html:errors property="bank_address"/>
									
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label"> IFSC Code</label>
									<div class="col-md-5">
										<html:text property="iFSC_code" name="registrationForm"
											styleClass="form-control" value=""></html:text>
										<html:errors property="iFSC_code"/>
									
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
		todayHighlight : true
	});
</script>
</html>