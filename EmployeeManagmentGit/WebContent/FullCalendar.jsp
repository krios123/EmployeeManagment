<%@include file="main_files/header.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@include file="main_files/nav_header1.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>


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

	<%
			int num;
			if(request.getParameterMap().containsKey("num") || !(request.getParameter("num")==null))
			{
				num= Integer.parseInt(request.getParameter("num"));
			}
			else
			{
				num = 0;
			}
	%>

<div id="num1" style="display: none"><%= num %></div>

<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Employee Registration</h1>

	</section>

	<!-- Main content -->
	<section class="content container-fluid">
	
	<form action="FullCalendar.jsp" id="mnthForm">
			<input type="text" style="display: none;" value="" id="num2" name="num" />
		<ul>		
			<li class="fa fa-chevron-circle-left fa-3x" style="cursor: pointer;" title="Previous Month" aria-hidden="true" type="button" onclick="prevmonth()"></li>
			<li class="fa fa-chevron-circle-right fa-3x" style="cursor: pointer;" title="Next Month" aria-hidden="true" type="button" onclick="nextmonth()"></li>
		</ul>
	</form>
	<div id="num" style="display: block;"><%= num %></div>
		      <div class="row">		      
			        <!-- /.col -->
			        <div class="col-md-9">
			          <div class="box box-primary">
			            <div class="box-body no-padding">
			              <!-- THE CALENDAR -->
			              <div id="calendar"></div>
			            </div>
			            <!-- /.box-body -->
			          </div>
			          <!-- /. box -->
			        </div>
			        <!-- /.col -->
			     </div>
			      
	</section>
</div>

<script>
var d,m,y;

  $(document).ready(function () {
	
	 // alert(" document ready");
	 // alert(new Date());
  
    var date = new Date()
    	d    = date.getDate(),
        m    = date.getMonth(),
        y    = date.getFullYear()
  
        
        
        calendar =  $('#calendar').fullCalendar({
      header    : {
        left  : 'prevYear prev,next nextYear today',
        center: 'title',
        right : 'month,agendaWeek,agendaDay'
      },
      buttonText: {
        today: 'today',
        month: 'month',
        week : 'week',
        day  : 'day'
      },
      
      //Random default events
      events    :{ 
    	 	
    	  url: 'http://localhost:8080/EmployeeManagmentGit/getJsonCalender?num='+(parseInt(document.getElementById("num").innerHTML)+parseInt(m)),
    	 
    	  error: function() {
              alert('there was an error while fetching events!')
          }
      }
      
    })

  })
  
 			function prevmonth()
				{	
	  				calendar.fullCalendar('prev');
	  				calendar.fullCalendar('gotoDate',)
					num = document.getElementById("num").innerHTML;				
					document.getElementById("num2").value= (num-1);
					
					document.getElementById("mnthForm").submit();	
				}
				
			function nextmonth()
				{
						
	            	calendar.fullCalendar('next');
	            	calendar.fullCalendar('defaultDate' ,'2018-02-12');
					num = document.getElementById("num").innerHTML;					
					document.getElementById("num2").value= parseInt(num)+1;
					
					document.getElementById("mnthForm").submit();
				}
</script>

<script type="text/javascript">
				
				
			</script>

<%@include file="main_files/footer.jsp"%>

<%@include file="main_files/js_section.jsp"%>

</body>
</html>