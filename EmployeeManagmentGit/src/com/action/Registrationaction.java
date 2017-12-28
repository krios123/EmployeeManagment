package com.action;

import java.util.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import form.LoginForm;

import controller.Dbconn;

import form.RegistrationForm;

public class Registrationaction extends DispatchAction {

	public ActionForward insert(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		RegistrationForm rform = (RegistrationForm) form;
		SimpleDateFormat  sdfSource= new SimpleDateFormat("MM/dd/yyyy");
		SimpleDateFormat sdfDestination = new SimpleDateFormat("yyyy-MM-dd");

		String Emp_name = rform.getEmp_name();
		String Designation = rform.getDesignation();
		
		String Date_of_birth 		= sdfDestination.format(sdfSource.parse(rform.getDate_of_birth()));
		String Gender 				= rform.getGender();
		String Fathers_name 		= rform.getFathers_name();
		int Fathers_contact_details = rform.getFathers_contact_details();
		String Fathers_designation 	= rform.getFathers_designation();
		String Personal_mail_id 	= rform.getPersonal_mail_id();
		String Permanent_address 	= rform.getPermanent_address();
		String Local_address 		= rform.getLocal_address();
		int Contact_no 				= rform.getContact_no();
		String Highest_qualification= rform.getHighest_qualification();
		int Year_of_Experience 		= rform.getYear_of_Experience();
		String Date_of_joining 		= sdfDestination.format(sdfSource.parse(rform.getDate_of_joining()));
		String Date_of_registration = sdfDestination.format(sdfSource.parse(rform.getDate_of_registration())); 
		int Salary_at_the_time_of_joining = rform.getSalary_at_the_time_of_joining();
		String Passport_no 			= rform.getPassport_no();
		String Pancard_no 			= rform.getPancard_no();
		String PF_no 				= rform.getpF_no();
		String Official_bank_name 	= rform.getOfficial_bank_name();
		int Official_bank_account_no= rform.getOfficial_bank_account_no();
		String Employee_personal_bank_name = rform.getEmployee_personal_bank_name();
		int Personal_bank_account_no= rform.getPersonal_bank_account_no();
		String Bank_address 		= rform.getBank_address();
		String IFSC_code 			= rform.getiFSC_code();
		System.out.println("name" + Emp_name);

		System.out.println("PFname" + PF_no);

		Statement st = Dbconn.connectDB();

		String sql = "INSERT INTO `employeemanagement`.`employeedetails` (`Emp_id`, `Emp_name`, `Designation`, `Date_of_birth`, `Gender`, `Fathers_name`, `Fathers_contact_details`, `Fathers_designation`, `Personal_mail_id`, `Permanent_address`, `Local_address`, `Contact_no`, `Highest_qualification`, `Year_of_Experience`, `Date_of_joining`, `Date_of_registration`, `Salary_at_the_time_of_joining`, `Passport_no`, `Pan_card_no`, `PF_no`, `Official_bank_name`, `Official_bank_account_no`, `Employee_personal_bank_name`, `Personal_bank_account_no`, `Bank_address`, `IFSC_code`) VALUES (NULL, '"
				+ Emp_name + "', '" + Designation + "', '" + Date_of_birth + "', '" + Gender + "', '" + Fathers_name
				+ "', '" + Fathers_contact_details + "', '" + Fathers_designation + "', '" + Personal_mail_id + "', '"
				+ Permanent_address + "', '" + Local_address + "', '" + Contact_no + "', '" + Highest_qualification
				+ "', '" + Year_of_Experience + "', '" + Date_of_joining + "', '" + Date_of_registration + "', '"
				+ Salary_at_the_time_of_joining + "', '" + Passport_no + "', '" + Pancard_no + "', '" + PF_no + "', '"
				+ Official_bank_name + "', '" + Official_bank_account_no + "', '" + Employee_personal_bank_name + "', '"
				+ Personal_bank_account_no + "', '" + Bank_address + "', '" + IFSC_code + "')";
		System.out.println("Query" + sql);
		st.executeUpdate(sql);

		return mapping.findForward("success");

	}

	public ActionForward delete(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		RegistrationForm registerForm = (RegistrationForm) form;

		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("idd" + id);

		Statement st = Dbconn.connectDB();

		String sl = "update employeedetails set flag = 0 WHERE Emp_id='" + id + "'";
		 st.executeUpdate(sl);

		return mapping.findForward("success");
	}

	public ActionForward update(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("idd" + id);
		request.getSession().setAttribute("Empid", id);
		return mapping.findForward("success");
	}

	/**
	 * 
	 * 
	 */
	public ActionForward updateDisplay(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		SimpleDateFormat  sdfSource= new SimpleDateFormat("MM/dd/yyyy");
		SimpleDateFormat sdfDestination = new SimpleDateFormat("yyyy-MM-dd");
		
		System.out.println("hii"+request.getParameter("id"));
		RegistrationForm rform=(RegistrationForm)form;
		System.out.println("in update employee method");
		
		try{
			 Statement st=Dbconn.connectDB();
			
			String sql="UPDATE `employeedetails` SET `Emp_name` = '"+rform.getEmp_name()+"', `Designation` = '"+rform.getDesignation()+"', `Date_of_birth` = '"+sdfDestination.format(sdfSource.parse(rform.getDate_of_birth()))+"', `Gender` = '"+rform.getGender()+"', `Fathers_name` = '"+rform.getFathers_name()+"', `Fathers_contact_details` = '"+rform.getFathers_contact_details()+"', `Fathers_designation` = '"+rform.getFathers_designation()+"', `Personal_mail_id` = '"+rform.getPersonal_mail_id()+"', `Permanent_address` = '"+rform.getPermanent_address()+"', `Local_address` = '"+rform.getLocal_address()+"', `Contact_no` = '"+rform.getContact_no()+"', `Highest_qualification` = '"+rform.getHighest_qualification()+"', `Year_of_Experience` = '"+rform.getYear_of_Experience()+"', `Date_of_joining` = '"+sdfDestination.format(sdfSource.parse(rform.getDate_of_joining()))+"', `Date_of_registration` = '"+sdfDestination.format(sdfSource.parse(rform.getDate_of_registration()))+"', `Salary_at_the_time_of_joining` = '"+rform.getSalary_at_the_time_of_joining()+"', `Increment_amount` = '"+rform.getIncrement_amount()+"', `Increment_amount_date` = '"+sdfDestination.format(sdfSource.parse(rform.getIncrement_amount_date()))+"', `Passport_no` = '"+rform.getPassport_no()+"', `Pan_card_no` = '"+rform.getPancard_no()+"', `PF_no` = '"+rform.getpF_no()+"', `Official_bank_name` = '"+rform.getOfficial_bank_name()+"', `Official_bank_account_no` = '"+rform.getOfficial_bank_account_no()+"', `Employee_personal_bank_name` = '"+rform.getEmployee_personal_bank_name()+"', `Personal_bank_account_no` = '"+rform.getPersonal_bank_account_no()+"', `Bank_address` = '"+rform.getBank_address()+"', `IFSC_code` = '"+rform.getiFSC_code()+"', `Total_leave_permissioned` = '"+rform.getTotal_leave_permissioned()+"', `Total_leave_taken_from_jan_till_dec` = '"+rform.getTotal_leave_taken_from_jan_till_dec()+"', `Total_leave_taken` = '"+rform.getTotal_leave_taken()+"', `Absent` = '"+rform.getAbsent()+"', `Total_yearly_leave_taken` = '"+rform.getTotal_yearly_leave_taken()+"' WHERE Emp_id='"+request.getSession().getAttribute("Empid")+"'";
				  st.executeUpdate(sql);
				  
				  request.getSession().invalidate();
				  
		}catch (Exception e) {
			e.printStackTrace();
				System.out.println(e.getMessage());
				System.out.println("in catch");
			
		}
	
	return mapping.findForward("success");	

	}
	
	public ActionForward insertlogin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception 
	{
	
		LoginForm login=(LoginForm)form;
		
        String username = login.getUsername();
        String password = login.getPassword();
       
        System.out.println("name"+username);
      

            if((username.equals("reshma"))&&(password.equals("123")))
            {
                System.out.println("Successfully Login");
                return mapping.findForward("success");
               
            }
            else
            {
                System.out.println(" Login Failed");

                return mapping.findForward("fail");                 
            }
	}

}
