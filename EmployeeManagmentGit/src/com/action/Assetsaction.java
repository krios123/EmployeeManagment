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
import form.AssetsForm;



public class Assetsaction extends DispatchAction {
	
	public ActionForward insert(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		AssetsForm rform=(AssetsForm)form;
		
		
		
		String emp_id				= rform.getEmployee_id();
		String rent					= rform.getRent();
		String date_to_given		=rform.getDate_to_given();
		String company_of_laptop	= rform.getCompany_of_laptop();
		String configuration		= rform.getConfiguration();
		String courier_done			= rform.getCourier_done();
		String laptop_received_by_employee= rform.getLaptop_received_by_employee();
		
		try{
				Statement st = Dbconn.connectDB();
		
				String sql = "insert into assetdetails values(null,'"+emp_id+"','"+rent+"','"+date_to_given+"','"+company_of_laptop+"','"+configuration+"','"+courier_done+"','"+laptop_received_by_employee+"',1) ";
				System.out.println("Query" + sql);
				st.executeUpdate(sql);
				}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return mapping.findForward("success");
	}
	
	public ActionForward update(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("idd" + id);
		request.getSession().setAttribute("Empid", id);
		
		return mapping.findForward("success");
	}
	public ActionForward delete(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {


		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("idd" + id);

		Statement st = Dbconn.connectDB();

		String sl = "UPDATE `assetdetails`  set flag = 0 WHERE Employee_id='" + id + "'";
		 st.executeUpdate(sl);
		 System.out.println(sl);
		 System.out.println("success");

		return mapping.findForward("success");
	}
	
	
	public ActionForward updateDisplay(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
AssetsForm rform=(AssetsForm)form;
		
		SimpleDateFormat  sdfSource= new SimpleDateFormat("MM/dd/yyyy");
		SimpleDateFormat sdfDestination = new SimpleDateFormat("yyyy-MM-dd");
		
		String emp_id				= rform.getEmployee_id();
		String rent					= rform.getRent();
		String date_to_given		= sdfDestination.format(sdfSource.parse(rform.getDate_to_given()));
		String company_of_laptop	= rform.getCompany_of_laptop();
		String configuration		= rform.getConfiguration();
		String courier_done			= rform.getCourier_done();
		String laptop_received_by_employee= rform.getLaptop_received_by_employee();
		
		try{
			Statement st = Dbconn.connectDB();
	
			String sql = "update assetdetails set Rent='"+rent+"' ,Date_to_given='"+date_to_given+"' ,Company_of_laptop='"+company_of_laptop+"' ,Configuration='"+configuration+"' ,Courier_done='"+courier_done+"' ,Laptop_received_by_employee='"+laptop_received_by_employee+"' where Employee_id='"+request.getSession().getAttribute("Empid")+"'";
			System.out.println("Query" + sql);
			st.executeUpdate(sql);
			}
	catch (Exception e) {
		System.out.println(e.getMessage());
	}
		
	return mapping.findForward("success");
	}
	
}
	
