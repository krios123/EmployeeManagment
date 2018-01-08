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
	<section class="content-header">
		

	</section>


	<!-- Main content -->
	<section class="content container-fluid">
  <div class="span6">
		<html:form action="/fileupload" method="uploadFile" enctype="multipart/form-data">

                    <h3 class="form-signin-heading">Select a File To Upload</h3>
                    <html:file property="file" name="fileform" ></html:file>
                  
            <br />
           	<html:submit value="Upload file"> submit</html:submit>
			<html:hidden property="method" value="uploadFile" />
								
                
             	</html:form>
            </div>
	
	</section>
</div>


<!-- /.content-wrapper -->

<%@include file="main_files/footer.jsp"%>



<%@include file="main_files/js_section.jsp"%>

