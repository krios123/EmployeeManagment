<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.awt.*"%>

<%@ page import="javax.servlet.http.*"%>

<%@include file="main_files/header.jsp"%>

<%@include file="main_files/nav_header.jsp"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>


<body>
	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">

		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">

			<!-- Sidebar user panel (optional) -->
			<div class="user-panel">
				<h2 style="color: white">Welcome</h2>
				<div class="pull-left info"></div>
			</div>

			<%@include file="main_files/slidermenu.jsp"%>

		</section>
		<!-- /.sidebar -->
	</aside>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header"></section>


		<!-- Main content -->
		<section class="content container-fluid">


			<div align="center">
				<table border="1">
					<tr>
						<th>ID</th>
						<th>File</th>

					</tr>
					<%
					OutputStream img;
					int i = 1;
					Blob image = null;
					byte[] imgData = null;
						try {
						

							Class.forName("com.mysql.jdbc.Driver");
							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employeemanagement", "root", "");
						Statement st = con.createStatement();						

							String sql = "SELECT * FROM upload";
							
							ResultSet rs = st.executeQuery(sql);
							
							while (rs.next()) {
								
							image=rs.getBlob(2);	
							/* out.print(image);
							imgData = image.getBytes(1, (int) image.length());
							out.print(imgData); */
							
							//var image = document.createElement('image');
						  //  image.src = 'data:image/bmp;base64,'+Base64.encode(image);
						  //  document.body.appendChild(image);
							
							
							//InputStream is = image.getBinaryStream();
						    //  int b = is.read();
							%>
							<tr>
							<td><%=i++%></td>
							<td><img src="<%=imgData %>" alt="" height="300px" width="300px"></td>
							</tr>
							
							<%
							}
								}
							catch(Exception e)
							{
								out.print(e.getMessage());
							}
					%>

				</table>

			</div>

		</section>
	</div>


	<!-- /.content-wrapper -->

	<%@include file="main_files/footer.jsp"%>



	<%@include file="main_files/js_section.jsp"%>

</body>

