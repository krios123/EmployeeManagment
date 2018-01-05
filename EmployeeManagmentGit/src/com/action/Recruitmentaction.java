package com.action;

import java.sql.Statement;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import controller.Dbconn;
import form.RecruitmentForm;
import form.RegistrationForm;

public class Recruitmentaction extends DispatchAction
{
	public ActionForward recruit(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		RecruitmentForm rform=(RecruitmentForm)form;
		SimpleDateFormat  sdfSource= new SimpleDateFormat("MM/dd/yyyy");
		SimpleDateFormat sdfDestination = new SimpleDateFormat("yyyy-MM-dd");
		
		String name=rform.getApplicant();
		String date=sdfDestination.format(sdfSource.parse(rform.getScheduled_date()));
		String time=rform.getInterview_time();
		String venue=rform.getVenue();
		
		System.out.println("name" + name);
		
		Statement st = Dbconn.connectDB();
		
		String sql="INSERT INTO `employeemanagement`.`recruitmentdetails` (`Applicant_id`, `Applicant_name`, `Scheduled_date`, `Interview_time`, `Venue`) VALUES (NULL, '"+name+"', '"+date+"', '"+time+"', '"+venue+"')";
		
		System.out.println("Query" + sql);
		st.executeUpdate(sql);

		
		return mapping.findForward("success");
	}
	public ActionForward delete(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {


		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("idd" + id);

		Statement st = Dbconn.connectDB();

		String sl = "update recruitmentdetails set flag = 0 WHERE Applicant_id='" + id + "'";
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
		RecruitmentForm rform=(RecruitmentForm)form;
		System.out.println("in update employee method");
		
		try{
			 Statement st=Dbconn.connectDB();
			String sql="UPDATE `recruitmentdetails` SET `Applicant_name`='"+rform.getApplicant()+"',`Scheduled_date`='"+sdfDestination.format(sdfSource.parse(rform.getScheduled_date()))+"',`Interview_time`='"+rform.getInterview_time()+"',`Venue`= '"+rform.getVenue()+"' WHERE Applicant_id= '"+request.getSession().getAttribute("Empid")+"'";
				  st.executeUpdate(sql);
				  
		}catch (Exception e) {
			e.printStackTrace();
				System.out.println(e.getMessage());
				System.out.println("in catch");
			
		}
	
	return mapping.findForward("success");	

	}
	public ActionForward selecteddelete(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		

		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("idd" + id);

		Statement st = Dbconn.connectDB();

		String sl = "update recruitmentdetails set flag = 0 WHERE Applicant_id='" + id + "'";
		 st.executeUpdate(sl);

		return mapping.findForward("success");
	}

}
