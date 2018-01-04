package com.action;

import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import controller.Dbconn;
import form.AttendanceSheetForm;

public class AttendanceSheetAction extends DispatchAction {

	
	public ActionForward insert(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		AttendanceSheetForm aform= (AttendanceSheetForm)form;
		
		try{
			Statement st = Dbconn.connectDB();
	
			String sql = "insert into attendance_sheet values(null,'"+aform.getEmp_id()+"','"+aform.getTotal_working_days()+"','"+aform.getTotal_present_days()+"','"+aform.getLeaves_taken()+"','"+aform.getLeave_type()+"') ";
			System.out.println("Query" + sql);
			st.executeUpdate(sql);
			}
	catch (Exception e) {
		System.out.println(e.getMessage());
		return mapping.findForward("failure");
	}
	return mapping.findForward("success");
	}
	
	
}
