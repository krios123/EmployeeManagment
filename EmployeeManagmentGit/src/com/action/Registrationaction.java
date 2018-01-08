package com.action;

import java.util.Date;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import bean.Employee;
import form.LoginForm;

import controller.Dbconn;

import form.RegistrationForm;

public class Registrationaction extends DispatchAction {

	public ActionForward insert(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{

		RegistrationForm rform = (RegistrationForm) form;
PrintWriter out=response.getWriter();
out.print("HIE");


SimpleDateFormat smf=new SimpleDateFormat("yyyy-mm-dd");

		String Emp_name = rform.getEmp_name();
		String Designation = rform.getDesignation();
		String team= rform.getTeam();
		String work_location= rform.getWork_location();
		String current_status= rform.getCurrent_status();
		String reference = rform.getReference();
		
		Date Date_of_birth 			= smf.parse(rform.getDate_of_birth());
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
		Date Date_of_joining 		= smf.parse(rform.getDate_of_joining());
		Date Date_of_registration =   smf.parse(rform.getDate_of_registration()); 
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
		System.out.println("status:"+current_status);
		try{
			
		
		Configuration conf=new Configuration().configure();
		StandardServiceRegistryBuilder builder= new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
		
		SessionFactory sf=conf.buildSessionFactory(builder.build());
		
		Session session = sf.openSession();
		
		Transaction t=session.beginTransaction();
		Employee e= new Employee();
		
		e.setEmp_name(Emp_name);
		e.setDesignation(Designation);
		e.setTeam(team);
		e.setWork_location(work_location);
		e.setCurrent_status(current_status);
		e.setReference(reference);
		e.setDate_of_birth((Date_of_birth));
		e.setGender(Gender);
		e.setFathers_name(Fathers_name);
		e.setFathers_designation(Fathers_designation);
		e.setFathers_contact_details(Fathers_contact_details);
		e.setDesignation(Designation);
		e.setPersonal_mail_id(Personal_mail_id);
		e.setPermanent_address(Permanent_address);
		e.setLocal_address(Local_address);
		e.setContact_no(Contact_no);
		e.setHighest_qualification(Highest_qualification);
		e.setYear_of_Experience(Year_of_Experience);
		
		e.setDate_of_joining(Date_of_joining);
		e.setDate_of_registration(Date_of_registration);
		e.setSalary_at_the_time_of_joining(Salary_at_the_time_of_joining);
		e.setPassport_no(Passport_no);
		e.setPancard_no(Pancard_no);
		e.setpF_no(PF_no);
		e.setOfficial_bank_name(Official_bank_name);
		e.setOfficial_bank_account_no(Official_bank_account_no);
		e.setEmployee_personal_bank_name(Employee_personal_bank_name);
		e.setPersonal_bank_account_no(Personal_bank_account_no);
		e.setBank_address(Bank_address);
		e.setiFSC_code(IFSC_code);
		e.setFlag(1);
		
		session.save(e);
		t.commit();
		session.close();
		}
		catch(Exception e)
		{
			System.out.println("fail");
			System.out.println(e.getMessage());
		

		}
		//Statement st = Dbconn.connectDB();
/*
		String sql = "INSERT INTO `employeemanagement`.`employeedetails` (`Emp_id`, `Emp_name`, `Designation`,`Team`,`Work_location`, `Date_of_birth`, `Gender`, `Fathers_name`, `Fathers_contact_details`, `Fathers_designation`, `Personal_mail_id`, `Permanent_address`, `Local_address`, `Contact_no`, `Highest_qualification`, `Year_of_Experience`, `Date_of_joining`, `Date_of_registration`, `Salary_at_the_time_of_joining`, `Passport_no`, `Pan_card_no`, `PF_no`, `Official_bank_name`, `Official_bank_account_no`, `Employee_personal_bank_name`, `Personal_bank_account_no`, `Bank_address`, `IFSC_code`,`Current_status`,`Reference`) VALUES (NULL, '"
				+ Emp_name + "', '" + Designation + "','" + team + "','" + work_location + "', '" + Date_of_birth + "', '" + Gender + "', '" + Fathers_name
				+ "', '" + Fathers_contact_details + "', '" + Fathers_designation + "', '" + Personal_mail_id + "', '"
				+ Permanent_address + "', '" + Local_address + "', '" + Contact_no + "', '" + Highest_qualification
				+ "', '" + Year_of_Experience + "', '" + Date_of_joining + "', '" + Date_of_registration + "', '"
				+ Salary_at_the_time_of_joining + "', '" + Passport_no + "', '" + Pancard_no + "', '" + PF_no + "', '"
				+ Official_bank_name + "', '" + Official_bank_account_no + "', '" + Employee_personal_bank_name + "', '"
				+ Personal_bank_account_no + "', '" + Bank_address + "', '" + IFSC_code + "','" + current_status + "','" + reference + "')";
		System.out.println("Query" + sql);
		//st.executeUpdate(sql);
*/
		return mapping.findForward("success");

	}

	public ActionForward delete(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		RegistrationForm registerForm = (RegistrationForm) form;

		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("idd" + id);

		Configuration conf=new Configuration().configure();
		StandardServiceRegistryBuilder builder= new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
		
		SessionFactory sf=conf.buildSessionFactory(builder.build());
		
		Session session = sf.openSession();
		
		Transaction t=session.beginTransaction();
		Employee emp=(Employee) session.get(Employee.class, id);
		emp.setFlag(0);
		
		session.update(emp);
		
		t.commit();
		session.close();
	
	/*	Statement st = Dbconn.connectDB();

		String sl = "update employeedetails set flag = 0 WHERE Emp_id='" + id + "'";
		 st.executeUpdate(sl)*/;

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
		
		SimpleDateFormat smf = new SimpleDateFormat("yyyy-MM-dd");
		
		System.out.println("hii"+request.getParameter("id"));
		RegistrationForm rform=(RegistrationForm)form;
		System.out.println("in update employee method");
		
		try{
			String Emp_name = rform.getEmp_name();
			String Designation = rform.getDesignation();
			String team= rform.getTeam();
			String work_location= rform.getWork_location();
			String current_status= rform.getCurrent_status();
			String reference = rform.getReference();
			
			Date Date_of_birth 			= smf.parse(rform.getDate_of_birth());
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
			Date Date_of_joining 		= smf.parse(rform.getDate_of_joining());
			Date Date_of_registration =   smf.parse(rform.getDate_of_registration()); 
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
			System.out.println("status:"+current_status);
			
			Configuration conf=new Configuration().configure();
			StandardServiceRegistryBuilder builder= new StandardServiceRegistryBuilder().applySettings(conf.getProperties());			
			SessionFactory sf=conf.buildSessionFactory(builder.build());			
			Session session = sf.openSession();			
			Transaction t=session.beginTransaction();
			
			Query sql=session.createQuery("UPDATE `employeedetails` SET `Emp_name` = '"+rform.getEmp_name()+"', `Designation` = '"+rform.getDesignation()+"',`Team` = '"+rform.getTeam()+"',`Work_location` = '"+rform.getWork_location()+"' ,`Date_of_birth` = '"+smf.parse(rform.getDate_of_birth())+"', `Gender` = '"+rform.getGender()+"', `Fathers_name` = '"+rform.getFathers_name()+"', `Fathers_contact_details` = '"+rform.getFathers_contact_details()+"', `Fathers_designation` = '"+rform.getFathers_designation()+"', `Personal_mail_id` = '"+rform.getPersonal_mail_id()+"', `Permanent_address` = '"+rform.getPermanent_address()+"', `Local_address` = '"+rform.getLocal_address()+"', `Contact_no` = '"+rform.getContact_no()+"', `Highest_qualification` = '"+rform.getHighest_qualification()+"', `Year_of_Experience` = '"+rform.getYear_of_Experience()+"', `Date_of_joining` = '"+smf.parse(rform.getDate_of_joining())+"', `Date_of_registration` = '"+smf.parse(rform.getDate_of_registration())+"', `Salary_at_the_time_of_joining` = '"+rform.getSalary_at_the_time_of_joining()+"', `Increment_amount` = '"+rform.getIncrement_amount()+"', `Increment_amount_date` = '"+smf.parse(rform.getIncrement_amount_date())+"', `Passport_no` = '"+rform.getPassport_no()+"', `Pan_card_no` = '"+rform.getPancard_no()+"', `PF_no` = '"+rform.getpF_no()+"', `Official_bank_name` = '"+rform.getOfficial_bank_name()+"', `Official_bank_account_no` = '"+rform.getOfficial_bank_account_no()+"', `Employee_personal_bank_name` = '"+rform.getEmployee_personal_bank_name()+"', `Personal_bank_account_no` = '"+rform.getPersonal_bank_account_no()+"', `Bank_address` = '"+rform.getBank_address()+"', `IFSC_code` = '"+rform.getiFSC_code()+"', `Total_leave_permissioned` = '"+rform.getTotal_leave_permissioned()+"', `Total_leave_taken_from_jan_till_dec` = '"+rform.getTotal_leave_taken_from_jan_till_dec()+"', `Total_leave_taken` = '"+rform.getTotal_leave_taken()+"', `Absent` = '"+rform.getAbsent()+"', `Total_yearly_leave_taken` = '"+rform.getTotal_yearly_leave_taken()+"',`Current_status` = '"+rform.getCurrent_status()+"',`Reference` = '"+rform.getReference()+"' WHERE Emp_id='"+request.getSession().getAttribute("Empid")+"'");
			
			
			
			/* Statement st=Dbconn.connectDB();
			
			String sql="UPDATE `employeedetails` SET `Emp_name` = '"+rform.getEmp_name()+"', `Designation` = '"+rform.getDesignation()+"',`Team` = '"+rform.getTeam()+"',`Work_location` = '"+rform.getWork_location()+"' ,`Date_of_birth` = '"+sdfDestination.format(sdfSource.parse(rform.getDate_of_birth()))+"', `Gender` = '"+rform.getGender()+"', `Fathers_name` = '"+rform.getFathers_name()+"', `Fathers_contact_details` = '"+rform.getFathers_contact_details()+"', `Fathers_designation` = '"+rform.getFathers_designation()+"', `Personal_mail_id` = '"+rform.getPersonal_mail_id()+"', `Permanent_address` = '"+rform.getPermanent_address()+"', `Local_address` = '"+rform.getLocal_address()+"', `Contact_no` = '"+rform.getContact_no()+"', `Highest_qualification` = '"+rform.getHighest_qualification()+"', `Year_of_Experience` = '"+rform.getYear_of_Experience()+"', `Date_of_joining` = '"+sdfDestination.format(sdfSource.parse(rform.getDate_of_joining()))+"', `Date_of_registration` = '"+sdfDestination.format(sdfSource.parse(rform.getDate_of_registration()))+"', `Salary_at_the_time_of_joining` = '"+rform.getSalary_at_the_time_of_joining()+"', `Increment_amount` = '"+rform.getIncrement_amount()+"', `Increment_amount_date` = '"+sdfDestination.format(sdfSource.parse(rform.getIncrement_amount_date()))+"', `Passport_no` = '"+rform.getPassport_no()+"', `Pan_card_no` = '"+rform.getPancard_no()+"', `PF_no` = '"+rform.getpF_no()+"', `Official_bank_name` = '"+rform.getOfficial_bank_name()+"', `Official_bank_account_no` = '"+rform.getOfficial_bank_account_no()+"', `Employee_personal_bank_name` = '"+rform.getEmployee_personal_bank_name()+"', `Personal_bank_account_no` = '"+rform.getPersonal_bank_account_no()+"', `Bank_address` = '"+rform.getBank_address()+"', `IFSC_code` = '"+rform.getiFSC_code()+"', `Total_leave_permissioned` = '"+rform.getTotal_leave_permissioned()+"', `Total_leave_taken_from_jan_till_dec` = '"+rform.getTotal_leave_taken_from_jan_till_dec()+"', `Total_leave_taken` = '"+rform.getTotal_leave_taken()+"', `Absent` = '"+rform.getAbsent()+"', `Total_yearly_leave_taken` = '"+rform.getTotal_yearly_leave_taken()+"',`Current_status` = '"+rform.getCurrent_status()+"',`Reference` = '"+rform.getReference()+"' WHERE Emp_id='"+request.getSession().getAttribute("Empid")+"'";
				  st.executeUpdate(sql);
				  */
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
