<%@include file="main_files/header.jsp"%>
 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="CSS/style.css">
<header class="main-header">

	<!-- Logo -->
	<a href="index.jsp" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-mini"><b>#</b>008</span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>K</b>rios</span>
	</a>

	<!-- Header Navbar -->
	<nav class="navbar navbar-static-top" role="navigation">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="push-menu"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>


		<div class="navbar-custom-menu">
			<span> <!-- search form (Optional) -->

				<form class="navbar-form navbar-left" action="#" method="get">
					<div class="input-group">

						 <input class="form-control" id="myInput" type="text" placeholder="Search..">

					</div>
				</form>
			</span>
			<span>

					<ul class="nav navbar-nav">
						<li><a href="login.jsp">Logout</a></li>
					</ul>

			</span>
		</div>
	</nav>
</header>

<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<body>

	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- Sidebar user panel (optional) -->
			<div class="user-panel">
				<h2 style="color: white">Welcome</h2>
				<div class="pull-left info"></div>
			</div>


			<%@include file="main_files/slider_submenu.jsp"%>

		</section>
		<!-- /.sidebar -->
	</aside>

	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h2>Employee Information</h2>

		</section>

		<!-- Main content -->
		<section class="content container-fluid">
		
		
		</section>
	</div>



	<%@include file="main_files/footer.jsp"%>
	
	<%@include file="main_files/js_section.jsp"%>
</body>