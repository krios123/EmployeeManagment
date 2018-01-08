package com.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import com.mysql.jdbc.Blob;
import com.mysql.jdbc.PreparedStatement;

import bean.EmpDesignation;
import controller.Dbconn;
import form.DesignationForm;
import form.FileForm;
import form.QualificationForm;
import form.TeamForm;

public class AdminAction extends DispatchAction {

	public ActionForward addDesign(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		DesignationForm dform = (DesignationForm) form;
		String name = dform.getDesignation();
		String type = dform.getType();
		System.out.println("name" + name);
		System.out.println("Tyep" + type);
		try {
			Configuration conf = new Configuration().configure();
			StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder()
					.applySettings(conf.getProperties());

			SessionFactory sf = conf.buildSessionFactory(builder.build());

			Session session = sf.openSession();

			Transaction t = session.beginTransaction();
			EmpDesignation emp = new EmpDesignation();

			emp.setName(name);
			emp.setType(type);
			session.save(emp);
			t.commit();
			session.close();

			return mapping.findForward("success");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return mapping.findForward("success");

	}

	public ActionForward addTeam(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		TeamForm tform = (TeamForm) form;
		String name = tform.getTeam();
		String type = tform.getType();
		System.out.println("name" + name);
		System.out.println("Tyep" + type);
		try {
			Configuration conf = new Configuration().configure();
			StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder()
					.applySettings(conf.getProperties());

			SessionFactory sf = conf.buildSessionFactory(builder.build());

			Session session = sf.openSession();

			Transaction t = session.beginTransaction();
			EmpDesignation emp = new EmpDesignation();

			emp.setName(name);
			emp.setType(type);
			session.save(emp);
			t.commit();
			session.close();

			return mapping.findForward("success");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return mapping.findForward("success");

	}

	public ActionForward addQualification(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		QualificationForm qform = (QualificationForm) form;
		String name = qform.getQualification();
		String type = qform.getType();
		System.out.println("name" + name);
		System.out.println("Tyep" + type);
		try {
			Configuration conf = new Configuration().configure();
			StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder()
					.applySettings(conf.getProperties());

			SessionFactory sf = conf.buildSessionFactory(builder.build());

			Session session = sf.openSession();

			Transaction t = session.beginTransaction();
			EmpDesignation emp = new EmpDesignation();

			emp.setName(name);
			emp.setType(type);
			session.save(emp);
			t.commit();
			session.close();

			return mapping.findForward("success");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return mapping.findForward("success");

	}

	public ActionForward uploadFile(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		FileForm fform = (FileForm) form;
		String name = fform.getFile();
		System.out.println("File" + name);
		PrintWriter out=response.getWriter();
		Connection conn = null;
		PreparedStatement pstmt = null;
		String url = "jdbc:mysql://localhost:3306/";
		String driver = "com.mysql.jdbc.Driver";
		String db = "employeemanagement";
		String uname = "root";
		String pass = "";
		Class.forName(driver);
		conn = DriverManager.getConnection(url + db, uname, pass);
		String path=getServlet().getServletContext().getRealPath("/")+"files";
		

		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url + db, uname, pass);			
			File f = new File("E:/githubrepositary/EmployeeManagment/EmployeeManagmentGit/files");		
			FileInputStream fis = new FileInputStream(f);		
			pstmt = (PreparedStatement) conn.prepareStatement("insert into upload(file,type) values(?,?)");		
			pstmt.setBinaryStream(1, fis, (int) f.length());		
			pstmt.setString(2, "png");
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return mapping.findForward("success");
		
	}
	public ActionForward displayimg(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		String id = request.getParameter("id");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employeemanagement", "root", "");
		PreparedStatement st = null;						
		Blob image = null;
		byte[] imgData = null;
		
		String sql = "SELECT * FROM upload";
		con.prepareStatement(sql);
		ResultSet rs = st.executeQuery(sql);
		while (rs.next()) {
			image = (Blob) rs.getBlob(2);
			imgData = image.getBytes(2, (int) image.length());
		response.getContentType();
		OutputStream img=response.getOutputStream();
	

		//InputStream input = rs.getBinaryStream("imageColumnName");
		//OutputStream output = response.getOutputStream();
		response.setContentType("image/gif");
		
		img.write(imgData);
		
	}
		return null;
	}
	
}
