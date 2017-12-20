<%@include file="main_files/header.jsp" %>

<%@include file="main_files/nav_header.jsp" %>
  
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <h2 style="color: white">Welcome</h2>
        <div class="pull-left info">
          
        </div>
      </div>

	<%@include file="main_files/slidermenu.jsp" %>
     
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Employee Management
        <small>1</small>
      </h1>
     
    </section>

			
    <!-- Main content -->
    <section class="content container-fluid">
<%-- SQL connections ------------------------------------------------------------------------------------%>
			<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/employeemanagement" user="root"
				password="" />

			<sql:query var="emps" dataSource="${myDS }">select * from employeedetails;</sql:query>
	
<%---------------------------------------------------------------------------------------------------- --%>
	<section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>${emps.rowCount}</h3>

              <p>Employee Registrations</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a href="Display.jsp" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3>100</h3>

              <p>Total orders</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3>44</h3>

              <p>xyz</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3>65</h3>

              <p> Visitors</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
      </div>    
 </section>   
 <div class="row">
   <section class="col-lg-5 connectedSortable ui-sortable" style="margin-left: 655px">  
       <div class="box box-solid bg-green-gradient">
            <div class="box-header ui-sortable-handle" style="cursor: move;">
              <i class="fa fa-calendar"></i>

              <h3 class="box-title">Calendar</h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                <!-- button with a dropdown -->
                <div class="btn-group">
                  <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-bars"></i></button>
                  <ul class="dropdown-menu pull-right" role="menu">
                    <li><a href="#">Add new event</a></li>
                    <li><a href="#">Clear events</a></li>
                    <li class="divider"></li>
                    <li><a href="#">View calendar</a></li>
                  </ul>
                </div>
                <button type="button" class="btn btn-success btn-sm" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-success btn-sm" data-widget="remove"><i class="fa fa-times"></i>
                </button>
              </div>
              <!-- /. tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <!--The calendar -->
              <div id="calendar" style="width: 100%"><div class="datepicker datepicker-inline"><div class="datepicker-days" style=""><table class="table-condensed"><thead><tr><th colspan="7" class="datepicker-title" style="display: none;"></th></tr><tr><th class="prev">«</th><th colspan="5" class="datepicker-switch">December 2017</th><th class="next">»</th></tr><tr><th class="dow">Su</th><th class="dow">Mo</th><th class="dow">Tu</th><th class="dow">We</th><th class="dow">Th</th><th class="dow">Fr</th><th class="dow">Sa</th></tr></thead><tbody><tr><td class="old day" data-date="1511654400000">26</td><td class="old day" data-date="1511740800000">27</td><td class="old day" data-date="1511827200000">28</td><td class="old day" data-date="1511913600000">29</td><td class="old day" data-date="1512000000000">30</td><td class="day" data-date="1512086400000">1</td><td class="day" data-date="1512172800000">2</td></tr><tr><td class="day" data-date="1512259200000">3</td><td class="day" data-date="1512345600000">4</td><td class="day" data-date="1512432000000">5</td><td class="day" data-date="1512518400000">6</td><td class="day" data-date="1512604800000">7</td><td class="day" data-date="1512691200000">8</td><td class="day" data-date="1512777600000">9</td></tr><tr><td class="day" data-date="1512864000000">10</td><td class="day" data-date="1512950400000">11</td><td class="day" data-date="1513036800000">12</td><td class="day" data-date="1513123200000">13</td><td class="day" data-date="1513209600000">14</td><td class="day" data-date="1513296000000">15</td><td class="day" data-date="1513382400000">16</td></tr><tr><td class="day" data-date="1513468800000">17</td><td class="day" data-date="1513555200000">18</td><td class="day" data-date="1513641600000">19</td><td class="day" data-date="1513728000000">20</td><td class="day" data-date="1513814400000">21</td><td class="day" data-date="1513900800000">22</td><td class="day" data-date="1513987200000">23</td></tr><tr><td class="day" data-date="1514073600000">24</td><td class="day" data-date="1514160000000">25</td><td class="day" data-date="1514246400000">26</td><td class="day" data-date="1514332800000">27</td><td class="day" data-date="1514419200000">28</td><td class="day" data-date="1514505600000">29</td><td class="day" data-date="1514592000000">30</td></tr><tr><td class="day" data-date="1514678400000">31</td><td class="new day" data-date="1514764800000">1</td><td class="new day" data-date="1514851200000">2</td><td class="new day" data-date="1514937600000">3</td><td class="new day" data-date="1515024000000">4</td><td class="new day" data-date="1515110400000">5</td><td class="new day" data-date="1515196800000">6</td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div><div class="datepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th colspan="7" class="datepicker-title" style="display: none;"></th></tr><tr><th class="prev">«</th><th colspan="5" class="datepicker-switch">2017</th><th class="next">»</th></tr></thead><tbody><tr><td colspan="7"><span class="month">Jan</span><span class="month">Feb</span><span class="month">Mar</span><span class="month">Apr</span><span class="month">May</span><span class="month">Jun</span><span class="month">Jul</span><span class="month">Aug</span><span class="month">Sep</span><span class="month">Oct</span><span class="month">Nov</span><span class="month focused">Dec</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div><div class="datepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th colspan="7" class="datepicker-title" style="display: none;"></th></tr><tr><th class="prev">«</th><th colspan="5" class="datepicker-switch">2010-2019</th><th class="next">»</th></tr></thead><tbody><tr><td colspan="7"><span class="year old">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year">2015</span><span class="year">2016</span><span class="year focused">2017</span><span class="year">2018</span><span class="year">2019</span><span class="year new">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div><div class="datepicker-decades" style="display: none;"><table class="table-condensed"><thead><tr><th colspan="7" class="datepicker-title" style="display: none;"></th></tr><tr><th class="prev">«</th><th colspan="5" class="datepicker-switch">2000-2090</th><th class="next">»</th></tr></thead><tbody><tr><td colspan="7"><span class="decade old">1990</span><span class="decade">2000</span><span class="decade focused">2010</span><span class="decade">2020</span><span class="decade">2030</span><span class="decade">2040</span><span class="decade">2050</span><span class="decade">2060</span><span class="decade">2070</span><span class="decade">2080</span><span class="decade">2090</span><span class="decade new">2100</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div><div class="datepicker-centuries" style="display: none;"><table class="table-condensed"><thead><tr><th colspan="7" class="datepicker-title" style="display: none;"></th></tr><tr><th class="prev">«</th><th colspan="5" class="datepicker-switch">2000-2900</th><th class="next">»</th></tr></thead><tbody><tr><td colspan="7"><span class="century old">1900</span><span class="century focused">2000</span><span class="century">2100</span><span class="century">2200</span><span class="century">2300</span><span class="century">2400</span><span class="century">2500</span><span class="century">2600</span><span class="century">2700</span><span class="century">2800</span><span class="century">2900</span><span class="century new">3000</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div></div></div>
            </div>
          
              <!-- /.row -->
            </div>
          </div>
        </section>
  </div>      

   
  <!-- /.content-wrapper -->

<%@include file="main_files/footer.jsp" %>
</div>


<%@include file="main_files/js_section.jsp" %>

</body>
</html>