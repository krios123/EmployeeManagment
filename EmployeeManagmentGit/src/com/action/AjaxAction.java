package com.action;

import java.io.PrintWriter;

import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.bsf.debug.jsdi.JsObject;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.json.JSONArray;
import org.json.JSONObject;

import controller.Dbconn;
import form.LoginForm;

public class AjaxAction extends DispatchAction {

	public ActionForward calender(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception  {
		
		JSONArray jArray= null;
		System.out.println("in action");
		/*
		 * 
		 */
		int num=Integer.parseInt(request.getParameter("num"));
		System.out.println("get parameter"+num);
		
		
		
		try{
				Statement st=Dbconn.connectDB();
		      ResultSet rsDOB= st.executeQuery("select *,month(CURRENT_DATE()) as 'curmonth',YEAR(CURRENT_DATE()) as 'year', month(Date_of_birth) as 'month', day(Date_of_birth) as 'day' from employeedetails where flag=1;");  
		      System.out.println("in try");
		      
		      jArray=new JSONArray();
		      
		      while (rsDOB.next())
		        {
		          
		    	  int mnth= rsDOB.getInt("curmonth")+num;
		    	  int yr= (num/12)+rsDOB.getInt("year");
		    	 
		    	  System.out.println(rsDOB.getDate(6).getDate());
		      
		          JSONObject jObj = new JSONObject();
		          jObj.put("title", rsDOB.getString(2)+"'s Birthday");
		          jObj.put("start",LocalDate.of(yr,rsDOB.getInt("month"), rsDOB.getInt("day")));
		          jObj.put("backgroundColor", "#3c8dbc");
		          jObj.put("borderColor", "#3c8dbc");
		          
		          jArray.put(jObj);
		          
		        }
		      rsDOB.close();
		      
		      ResultSet rsDOJ= st.executeQuery("select *,floor(TIMESTAMPDIFF(month,Date_of_joining,curdate())/12) as 'total_year',YEAR(CURRENT_DATE()) as 'year', month(Date_of_joining) as 'month', day(Date_of_joining) as 'day' from employeedetails where flag=1;");
		      
		      while (rsDOJ.next())
		        {
		          
		    	  System.out.println(rsDOJ.getDate(6).getDay());
		      
		          JSONObject jObj = new JSONObject();
		          jObj.put("title", rsDOJ.getString(2)+"'s Work Anniversary \n"+rsDOJ.getInt("total_year"));
		          jObj.put("start",LocalDate.of(rsDOJ.getInt("year"),rsDOJ.getInt("month"),rsDOJ.getInt("day")));
		          jObj.put("backgroundColor", "#00c0ef");
		          jObj.put("borderColor", "#00c0ef");
		          
		          jArray.put(jObj);
		          
		        }
		       
		        System.out.println("jArry  "+jArray);
		        PrintWriter out = response.getWriter();
		        out.print(jArray);
		       System.out.println("In Action Class..........");
			
		}catch (Exception e) {
			
			System.out.println("in catch");
			System.out.println(e.getMessage());
		}
		
		
        return mapping.findForward("success");                 
	}
	public ActionForward assetvalue(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception 
	{
	
				int id=Integer.parseInt(request.getParameter("id"));
				System.out.println(id);
				try{
					Statement st=Dbconn.connectDB();
					String sql="select * from employeedetails where Emp_id='"+id+"' AND flag=1";
					ResultSet rs=st.executeQuery(sql);
					JSONObject obj= new JSONObject();
					while(rs.next())
						{
						
						obj.put("team", rs.getString("Team"));
						obj.put("designation", rs.getString("Designation"));
						obj.put("work", rs.getString("Work_location"));
						
						}
					System.out.println(obj);
			        PrintWriter out = response.getWriter();
			        out.print(obj);
				}catch(Exception e)
				{
					System.out.println(e.getMessage());
				}
                return null;                 
            
	}
	
}
