<%@include file="main_files/header.jsp"%>

<%@include file="main_files/nav_header.jsp"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


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
		<h1>
			Employee Management <small>1</small>
		</h1>

	</section>


	<!-- Main content -->
	<section class="content container-fluid">

	<img src="image/hrms.jpg" height="600" width="1100">
	
	</section>
</div>


<!-- /.content-wrapper -->

<%@include file="main_files/footer.jsp"%>



<%@include file="main_files/js_section.jsp"%>

</body>
</html>