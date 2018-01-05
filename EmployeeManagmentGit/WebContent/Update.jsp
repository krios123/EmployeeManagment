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

	<sql:query var="listEmp" dataSource="${myDS }">select * from employeedetails where Emp_id=<%=request.getSession().getAttribute("Empid")%>;</sql:query>

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
			<input type="button" value="Back" onCLick="history.back()"
				class="btn btn-primary btn-info" style="margin-left: 1000px"/>

			<div class="container" style="margin-top: 30px">
				<div class="col-md-10 col-md-offset-1">
					<div class="panel panel-default">
						<div class="panel-body">
							<html:form action="/update1" method="updateDisplay">
								<c:forEach var="user" items="${listEmp.rows}">
										<fmt:parseDate value="${user.Date_of_birth }" var="DOBirth" pattern="yyyy-MM-dd"/>
											<fmt:formatDate value="${DOBirth}" pattern="MM/dd/yyyy" var="DOBirth1"/>
										<fmt:parseDate value="${user.Date_of_joining}" var="DOJoining" pattern="yyyy-MM-dd"/>
											<fmt:formatDate value="${DOJoining}" pattern="MM/dd/yyyy" var="DOJoining1"/>
										<fmt:parseDate value="${user.Date_of_registration}" var="DORegistration" pattern="yyyy-MM-dd"/>
											<fmt:formatDate value="${DORegistration}" pattern="MM/dd/yyyy" var="DORegistration1"/>
										<fmt:parseDate value="${user.Increment_amount_date}" var="IncrementAmtDate" pattern="yyyy-MM-dd"/>
											<fmt:formatDate value="${IncrementAmtDate}" pattern="MM/dd/yyyy" var="IncrementAmtDate1"/>
										
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">EMPname</label>
											<div class="col-md-5">
												<html:text property="emp_name" name="registrationForm"
													styleClass="form-control" value="${user.Emp_name }"></html:text>
											</div>
										</div>
									</div>
									<br>


									<br>
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Designation</label>
											<div class="col-md-5">
												<html:select property="designation"
													value="${user.Designation }" styleClass="form-control"
													name="registrationForm">
													<html:option value="">-Select-</html:option>
													<html:option value="Java developer">Java Developer</html:option>
													<html:option value="PHP Developer">PHP Developer</html:option>
												</html:select>
											</div>
										</div>
									</div>
									<br>
										<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Team</label>
											<div class="col-md-5">
												<html:text property="team" name="registrationForm"
													styleClass="form-control" value="${user.Team }"></html:text>
											</div>
										</div>
									</div>
									<br>
										<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Work Location</label>
											<div class="col-md-5">
												<html:text property="work_location" name="registrationForm"
													styleClass="form-control" value="${user.Work_location}"></html:text>
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
														styleClass="form-control pull-right datepicker"
														value="${DOBirth1}"></html:text>
													</div>
												</div>
											</div>
										</div>
									</div>
									<br>

									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label"> Gender</label>
											<div class="col-md-5">
												<html:select property="gender" value="${user.Gender }"
													styleClass="form-control" name="registrationForm">
													<html:option value="">-Select-</html:option>
													<html:option value="male">Male</html:option>
													<html:option value="female">Female</html:option>
												</html:select>
											</div>
										</div>
									</div>
									<br>

									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Father's Name</label>
											<div class="col-md-5">
												<html:text property="fathers_name" name="registrationForm"
													styleClass="form-control" value="${user.Fathers_name }"></html:text>
											</div>
										</div>
									</div>
									<br>

									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Father's
												Contact</label>
											<div class="col-md-5">
												<html:text property="fathers_contact_details"
													name="registrationForm" styleClass="form-control"
													value="${user.Fathers_contact_details }"></html:text>
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
													name="registrationForm" styleClass="form-control"
													value="${user.Fathers_designation }"></html:text>
											</div>
										</div>
									</div>
									<br>


									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Personal Mail
												Id</label>
											<div class="col-md-5">
												<div class="input-group">
													<div class="input-group-addon">
														<i class="fa fa-envelope-o"></i>
													</div>
													<html:text property="personal_mail_id"
														name="registrationForm" styleClass="form-control"
														value="${user.Personal_mail_id }"></html:text>
												</div>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Permanent
												Address</label>
											<div class="col-md-5">
												<div class="input-group">
													<div class="input-group-addon">
														<i class="fa fa-map-marker"></i>
													</div>
													<html:textarea property="permanent_address"
														name="registrationForm" styleClass="form-control"
														value="${user.Permanent_address }"></html:textarea>
												</div>
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
														name="registrationForm" styleClass="form-control"
														value="${user.Local_address }"></html:textarea>
												</div>
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
														styleClass="form-control" value="${user.Contact_no }"
														size="10" maxlength="10"></html:text>
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
														name="registrationForm" styleClass="form-control"
														value="${user.Highest_qualification }">
														<html:option value="">--Select--</html:option>
														<html:option value="B.tech">B.tech</html:option>
														<html:option value="M.tech">M.tech</html:option>
														<html:option value="B.E.">B.E.</html:option>
														<html:option value="M.E.">M.E.</html:option>
														<html:option value="BCA">BCA</html:option>
														<html:option value="MCA">MCA</html:option>
													</html:select>
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
													name="registrationForm" styleClass="form-control"
													value="${user.Year_of_Experience }"></html:text>
											</div>
										</div>
									</div>
									<br>
									
									
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label"> Date of
												Joining</label>
											<div class="col-md-5">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<div>
													<html:text property="date_of_joining"
														name="registrationForm" styleClass="form-control pull-right datepicker"
														value="${DOJoining1}"></html:text>
													</div>
												</div>
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
													<html:text property="date_of_registration"
														name="registrationForm" styleClass="form-control pull-right datepicker"
														value="${DORegistration1 }"></html:text>
													</div>
												</div>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Salary at the
												Time of Joining</label>
											<div class="col-md-5">
											<div>
												<html:text property="salary_at_the_time_of_joining"
													name="registrationForm" styleClass="form-control"
													value="${user.Salary_at_the_time_of_joining }"></html:text>
											</div></div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Increment
												amount</label>
											<div class="col-md-5">
												<html:text property="increment_amount"
													name="registrationForm" styleClass="form-control"
													value="${user.Increment_amount }"></html:text>
											</div>
										</div>
									</div>
									<br>
									
									
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label"> Increment
												amount date</label>
											<div class="col-md-5">
											<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													
													<div>
													<html:text property="increment_amount_date"
														name="registrationForm" styleClass="form-control pull-right datepicker"
														value="${IncrementAmtDate1}"></html:text>
													</div>
												</div>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Passport Number</label>
											<div class="col-md-5">
												<html:text property="passport_no" name="registrationForm"
													styleClass="form-control" value="${user.Passport_no }"></html:text>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label"> Pan-card
												Number</label>
											<div class="col-md-5">
												<html:text property="pancard_no" name="registrationForm"
													styleClass="form-control" value="${user.Pan_card_no }"></html:text>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">PF Number</label>
											<div class="col-md-5">
												<html:text property="pF_no" name="registrationForm"
													styleClass="form-control" value="${user.PF_no }"></html:text>
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
													name="registrationForm" styleClass="form-control"
													value="${user.Official_bank_name }"></html:text>
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
													name="registrationForm" styleClass="form-control"
													value="${user.Official_bank_account_no }"></html:text>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Employee
												Personal Bank Name</label>
											<div class="col-md-5">
												<html:text property="employee_personal_bank_name"
													name="registrationForm" styleClass="form-control"
													value="${user.Employee_personal_bank_name }"></html:text>
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
													name="registrationForm" styleClass="form-control"
													value="${user.Personal_bank_account_no }"></html:text>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label"> Bank Address</label>
											<div class="col-md-5">
												<html:text property="bank_address" name="registrationForm"
													styleClass="form-control" value="${user.Bank_address }"></html:text>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label"> IFSC Code</label>
											<div class="col-md-5">
												<html:text property="iFSC_code" name="registrationForm"
													styleClass="form-control" value="${user.IFSC_code }"></html:text>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label"> Total leave
												permissioned</label>
											<div class="col-md-5">
												<html:text property="total_leave_permissioned"
													name="registrationForm" styleClass="form-control"
													value="${user.Total_leave_permissioned }"></html:text>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Total leave
												taken from jan till dec</label>
											<div class="col-md-5">
												<html:text property="total_leave_taken_from_jan_till_dec"
													name="registrationForm" styleClass="form-control"
													value="${user.Total_leave_taken_from_jan_till_dec }"></html:text>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label"> Total leave
												taken</label>
											<div class="col-md-5">
												<html:text property="total_leave_taken"
													name="registrationForm" styleClass="form-control"
													value="${user.Total_leave_taken }"></html:text>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label"> Absent</label>
											<div class="col-md-5">
												<html:text property="absent" name="registrationForm"
													styleClass="form-control" value="${user.Absent }"></html:text>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Total yearly
												leave taken</label>
											<div class="col-md-5">
												<html:text property="total_yearly_leave_taken"
													name="registrationForm" styleClass="form-control"
													value="${user.Total_yearly_leave_taken }"></html:text>
											</div>
										</div>
									</div>
									<br>
										<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">Current_Status</label>
											<div class="col-md-5">
												<html:text property="current_status" name="registrationForm"
													styleClass="form-control" value="${user.Current_status}"></html:text>
											</div>
										</div>
									</div>
									<br>
										<div class="row">
										<div class="form-group">
											<label class="col-md-4 control-label">References</label>
											<div class="col-md-5">
												<html:text property="reference" name="registrationForm"
													styleClass="form-control" value="${user.reference}"></html:text>
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