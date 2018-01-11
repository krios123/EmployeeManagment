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

						<html:form action="/registration" method="insert" onsubmit="return formValidation()">

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Employee name</label>
									<div class="col-md-5">
										<html:text property="emp_name" styleId="emp_name" name="registrationForm"
											styleClass="form-control" value="" ></html:text>
											<div style="color: red;">	
											<html:errors property="emp_name" />
								</div>	</div>
								</div>
							</div>
							<br>


							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Designation</label>
									<div class="col-md-5">
										<html:text property="designation" styleId="designation"
											name="registrationForm" styleClass="form-control" value=""></html:text>
									
										<div style="color: red;">	
										<html:errors property="designation"/></div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Team</label>
									<div class="col-md-5">
										<html:text property="team" styleId="team"
											name="registrationForm" styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Work Location</label>
									<div class="col-md-5">
										<html:text property="work_location" styleId="work_location"
											name="registrationForm" styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>


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
											<html:text property="date_of_birth" name="registrationForm" styleId="date_of_birth"
												styleClass="form-control pull-right datepicker" value=""></html:text>
										
										</div>
										</div>
										<div style="color: red;">	
										<html:errors property="date_of_birth"/></div>
									</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label"> Gender</label>
									<div class="col-md-5">
										<html:select property="gender" value="" styleId="gender"
											styleClass="form-control" name="registrationForm">
											<html:option value="">-Select-</html:option>
											<html:option value="male">Male</html:option>
											<html:option value="female">Female</html:option>
										</html:select>
										<div style="color: red;">	
										<html:errors property="gender"/></div>
										
									</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Father's Name</label>
									<div class="col-md-5">
										<html:text property="fathers_name" name="registrationForm" styleId="fathers_name"
											styleClass="form-control" value=""></html:text>
										<div style="color: red;">	
										<html:errors property="fathers_name"/>
									</div>
									</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Father's Contact</label>
									<div class="col-md-5">
										<html:text property="fathers_contact_details" styleId="fathers_contact_details"
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
										<html:text property="fathers_designation" styleId="fathers_designation"
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
											<html:text property="personal_mail_id" styleId="personal_mail_id"
												name="registrationForm" styleClass="form-control" value=""></html:text>
										</div>
										<div style="color: red;">	
										<html:errors property="personal_mail_id"/>
									</div></div>
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
											<html:textarea property="permanent_address" styleId="permanent_address"
												name="registrationForm" styleClass="form-control" value=""></html:textarea>
											
							
										</div>
										<div style="color: red;">	
										<html:errors property="permanent_address"/>
									</div></div>
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
											<html:textarea property="local_address" styleId="local_address"
												name="registrationForm" styleClass="form-control" value=""></html:textarea>
										</div>
										<div style="color: red;">	
										<html:errors property="local_address"/></div>
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
											<html:text property="contact_no" name="registrationForm" styleId="contact_no"
												styleClass="form-control" value="" size="10" maxlength="10"></html:text>
												<div style="color: red;">	
												<html:errors property="contact_no"/>
										</div>
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Highest Qualification</label>
									<div class="col-md-5">
										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-graduation-cap"></i>
											</div>
										
											<html:text property="highest_qualification" styleId="highest_qualification"
											name="registrationForm" styleClass="form-control" value=""></html:text>
									
										</div><div style="color: red;">	
												<html:errors property="highest_qualification"/>
											</div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Year of Experience</label>
									<div class="col-md-5">
										<html:text property="year_of_Experience" styleId="year_of_Experience"
											name="registrationForm" styleClass="form-control" value=""></html:text>
												<div style="color: red;">	
												<html:errors property="year_of_Experience"/>
												</div>
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
											<html:text property="date_of_joining" name="registrationForm" styleId="date_of_joining"
												styleClass="form-control pull-right datepicker" value=""></html:text>
										
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
											<html:text property="date_of_registration" name="registrationForm" styleId="date_of_registration"
												styleClass="form-control pull-right datepicker" value=""></html:text>
												
										</div></div><div style="color: red;">	
												<html:errors property="date_of_registration"/>
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
										<html:text property="salary_at_the_time_of_joining" styleId="salary_at_the_time_of_joining"
											name="registrationForm" styleClass="form-control" value=""></html:text>
										<div style="color: red;">	
										<html:errors property="salary_at_the_time_of_joining"/>
									</div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Passport Number</label>
									<div class="col-md-5">
										<html:text property="passport_no" name="registrationForm" styleId="passport_no"
											styleClass="form-control" value=""></html:text>
									
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label"> Pan-card Number</label>
									<div class="col-md-5">
										<html:text property="pancard_no" name="registrationForm" styleId="pancard_no"
											styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">PF Number</label>
									<div class="col-md-5">
										<html:text property="pF_no" name="registrationForm" styleId="pF_no"
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
										<html:text property="official_bank_name" styleId="official_bank_name"
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
										<html:text property="official_bank_account_no" styleId="official_bank_account_no"
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
										<html:text property="employee_personal_bank_name" styleId="employee_personal_bank_name"
											name="registrationForm" styleClass="form-control" value=""></html:text>
										<div style="color: red;">	
										<html:errors property="employee_personal_bank_name"/>
									</div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Personal Bank
										Account No</label>
									<div class="col-md-5">
										<html:text property="personal_bank_account_no" styleId="personal_bank_account_no"
											name="registrationForm" styleClass="form-control" value=""></html:text>
										<div style="color: red;">	
										<html:errors property="personal_bank_account_no"/>
									</div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label"> Bank Address</label>
									<div class="col-md-5">
										<html:text property="bank_address" name="registrationForm" styleId="bank_address"
											styleClass="form-control" value=""></html:text>
										<div style="color: red;">	
										<html:errors property="bank_address"/>
									</div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label"> IFSC Code</label>
									<div class="col-md-5">
										<html:text property="iFSC_code" name="registrationForm" styleId="iFSC_code"
											styleClass="form-control" value=""></html:text>
										<div style="color: red;">	
										<html:errors property="iFSC_code"/>
									</div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Current Status</label>
									<div class="col-md-5">
										<html:text property="current_status" styleId="current_status"
											name="registrationForm" styleClass="form-control" value=""></html:text>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<label class="col-md-4 control-label">Reference</label>
									<div class="col-md-5">
										<html:text property="reference"  styleId="reference"
											name="registrationForm" styleClass="form-control" value=""></html:text>
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
<script type="text/javascript" src="jsValidation/registration.js"></script>
</body>

<script type="text/javascript">
	$('.datepicker').datepicker({
		autoclose : true,
		format:"yyyy-mm-dd",
		todayHighlight : true
	});
	
	function formValidation()
	{
		//alert("In validation");
		
		var emp_name						= document.getElementById("emp_name").value;
		var designation						= document.getElementById("designation").value;
		var team							= document.getElementById("team").value;
		var work_location					= document.getElementById("work_location").value;
		var date_of_birth					= document.getElementById("date_of_birth").value;
		var gender							= document.getElementById("gender").value;
		var fathers_name					= document.getElementById("fathers_name").value;
		var fathers_contact_details			= document.getElementById("fathers_contact_details").value;
		var fathers_designation				= document.getElementById("fathers_designation").value;
		var personal_mail_id				= document.getElementById("personal_mail_id").value;
		var permanent_address				= document.getElementById("permanent_address").value;
		var local_address					= document.getElementById("local_address").value;
		var contact_no						= document.getElementById("contact_no").value;
		var highest_qualification			= document.getElementById("highest_qualification").value;
		var year_of_Experience				= document.getElementById("year_of_Experience").value;
		var date_of_joining					= document.getElementById("date_of_joining").value;
		var date_of_registration			= document.getElementById("date_of_registration").value;
		var salary_at_the_time_of_joining	= document.getElementById("salary_at_the_time_of_joining").value;
		var passport_no						= document.getElementById("passport_no").value;
		var pancard_no						= document.getElementById("pancard_no").value;
		var pF_no							= document.getElementById("pF_no").value;
		var official_bank_name				= document.getElementById("official_bank_name").value;
		var official_bank_account_no		= document.getElementById("official_bank_account_no").value;
		var employee_personal_bank_name		= document.getElementById("employee_personal_bank_name").value;
		var personal_bank_account_no		= document.getElementById("personal_bank_account_no").value;
		var bank_address					= document.getElementById("bank_address").value;
		var iFSC_code						= document.getElementById("iFSC_code").value;
		var current_status					= document.getElementById("current_status").value;
		var reference						= document.getElementById("reference").value;
		
		//alert("alldata"+ emp_name);
		 if (emp_name == "" || designation == "" || team == "" || work_location == "" || date_of_birth == "" || gender  == ""
				 || fathers_name == "" || fathers_contact_details == "" || fathers_designation == "" || personal_mail_id == ""
				 || permanent_address == ""|| local_address == "" || contact_no == "" || highest_qualification == ""
				 || year_of_Experience == "" || date_of_joining == "" || date_of_registration == "" || salary_at_the_time_of_joining == ""
				 || passport_no == "" || pancard_no == "" || pF_no == "" || official_bank_name == "" || official_bank_account_no == ""
				 || employee_personal_bank_name == "" || personal_bank_account_no == ""|| bank_address == ""|| iFSC_code == ""
				 || current_status == "" || reference =="")
		    { 
		        alert("Please enter all the mandatory fields!!!"); 
		        return false; 
		    } 
		 
		 if(!(/^[A-Za-z ]+$/).test(emp_name)) 
		    { 
		        alert("Emlopyee Name contains alphabets only!!"); 
		        document.getElementById("emp_name").value = ""; 
		        document.getElementById("emp_name").focus(); 
		        return false; 
		    } 
		 
		 if(!(/^[A-Za-z ]+$/).test(fathers_name)) 
		    { 
		        alert("Fathers Name contains alphabets only!!"); 
		        document.getElementById("fathers_name").value = ""; 
		        document.getElementById("fathers_name").focus(); 
		        return false; 
		    } 
		 
		 if(!(/^[0-9]{10}$/).test(fathers_contact_details)) 
		    { 
		        alert("Please enter correct phone number!!"); 
		        document.getElementById("fathers_contact_details").value = ""; 
		        document.getElementById("fathers_contact_details").focus(); 
		        return false; 
		    } 
		 
		 if(!(/^[A-Za-z ]+$/).test(fathers_designation)) 
		    { 
		        alert("Fathers Designation Name contains alphabets only!!"); 
		        document.getElementById("fathers_designation").value = ""; 
		        document.getElementById("fathers_designation").focus(); 
		        return false; 
		    } 

		 if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/).test(personal_mail_id)) 
		    { 
		        alert("Please enter correct email id!!"); 
		        document.getElementById("personal_mail_id").value = ""; 
		        document.getElementById("personal_mail_id").focus(); 
		        return false; 
		    }
		 
		 if(!(/^[0-9]{10}$/).test(contact_no)) 
		    { 
		        alert("Please enter correct phone number!!"); 
		        document.getElementById("contact_no").value = ""; 
		        document.getElementById("contact_no").focus(); 
		        return false; 
		    } 
		 
		 if(!(/^[0-9]+$/).test(year_of_Experience)) 
		    { 
		        alert("Year of Experience contains number only!!"); 
		        document.getElementById("year_of_Experience").value = ""; 
		        document.getElementById("year_of_Experience").focus(); 
		        return false; 
		    } 
		 
		 if(!(/^[0-9]+$/).test(salary_at_the_time_of_joining)) 
		    { 
		        alert("Salary contains numbers only!!"); 
		        document.getElementById("salary_at_the_time_of_joining").value = ""; 
		        document.getElementById("salary_at_the_time_of_joining").focus(); 
		        return false; 
		    } 
	}
</script>
</html>