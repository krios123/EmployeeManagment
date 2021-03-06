
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<section>
	<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/employeemanagement" user="root"
				password="" />

			<sql:query var="listEmp" dataSource="${myDS }">select * from employeedetails order by Date_of_birth limit 4;</sql:query>

						<sql:query var="workAnniversaries" dataSource="${myDS }">select *,floor(TIMESTAMPDIFF(month,Date_of_joining,curdate())/12) as 'total_year'   from employeedetails order by Date_of_joining limit 4;</sql:query>

<div class="row">
<div class="col-md-12">
	<div class="col-md-7">
         <div class="widget-box transparent" id="recent-box">
                    <div class="widget-header">
                        <h4 class="lighter smaller"><i class="fa fa-rss orange"></i> Recent</h4>
                        <div class="widget-toolbar no-border">
                            <ul class="nav nav-tabs" id="recent-tab">
                             
                                <li id="liBirthday" class="active">
                                    <a data-toggle="tab" href="#member-tab" class="purple"> <i class="fa fa-birthday-cake"></i> Birthdays</a>
                                </li>

                                <li id="liHoliday">
                                    <a data-toggle="tab" href="#task-tab" class="green"><i class="fa fa-glass"></i> Holidays</a>
                                </li>
                                <li id="liAnniversary">
                                    <a data-toggle="tab" href="#anniversary-tab" class="red"><i class="fa fa-gift"></i> Work Anniversaries</a>
                                </li>
                            </ul>
                        </div>
                    </div>
           <div class="widget-body">
               <div class="widget-main padding-3">
                  <div class="tab-content padding-8 overflow-visible">           
                    
                    <div id="member-tab" class="tab-pane active">
                                    <div class="clearfix">
                                     <c:forEach var="user" items="${listEmp.rows}">
                                                <div class="col-md-6">
                                                    <div class="itemdiv memberdiv" style="width:auto">
                                                       
                                                        <div class="body">
                                                        <fmt:parseDate value="${user.Date_of_birth}" var="DOBirth" pattern="yyyy-MM-dd"/>
                                                         <span>
                                                         	<div>
                                                         		<i class="fa fa-birthday-cake"></i>
                                                                <span class="text-primary"> <c:out value="${user.Emp_name}" /></span>
                                                            </div>
                                                            <div>                                                     
                                                                <span><c:out value="${user.Designation}" /></span>
                                                            </div>
                                                            <div>
                                                          		<span>  <i class="fa fa-calendar"></i> <fmt:formatDate value="${DOBirth }" type="date"/></span>
                                                            </div>       
                                                            <a href="mailto:${user.Personal_mail_id}?subject=Happy Birthday !!!!" target="_blank" class="tooltip-success" data-rel="tooltip" data-placement="right" title="Wish u Very Happy Birthday" data-original-title="Send&nbsp;birthday&nbsp;wishes">
                                                                    <span class="green">Email -
                                                                        <i class="fa fa-envelope-o bigger-110"></i>
                                                                    </span>
                                                                </a>                                                   
                                                             <div class="space-6"></div>
                                                             </span>
                                                        </div><br>    
                                                      
                                                    </div>
                                                </div>   
                                                                                             
                                             </c:forEach>                         
                                    </div>
                   </div>
                   
                       <div id="anniversary-tab" class="tab-pane">
                                    <div class="clearfix">
                                      <c:forEach var="user" items="${workAnniversaries.rows}">
                                                <div class="col-md-6">
                                                    <div class="itemdiv memberdiv" style="width:auto">
                                                      
                                                       <div class="body">
                                                       <fmt:parseDate value="${user.Date_of_joining}" var="DOJoining" pattern="yyyy-MM-dd"/>
                                                         <span>
                                                         	<div>
                                                         		<i class="fa fa-gift"></i>
                                                                <span class="text-primary"> <c:out value="${user.Emp_name}" /></span>
                                                            </div>
                                                            <div>                                                     
                                                                <span><c:out value="${user.Designation}" /></span>
                                                            </div>
                                                            <div>                                                     
                                                                <span> <c:out value="${user.total_year}"></c:out> Year Completed</span>
                                                               
                                                            </div>
                                                            <div>
                                                          		<span>  <i class="fa fa-calendar"></i>
                                                          		<fmt:formatDate value="${DOJoining }" type="date"/></td></span>
                                                            </div>  
                                                               <a href="mailto:${user.Personal_mail_id}?subject=Happy Work Anniversary !!!!" target="_blank" class="tooltip-success" data-rel="tooltip" data-placement="right" title="Wish u Very Happy Birthday" data-original-title="Send&nbsp;birthday&nbsp;wishes">
                                                                    <span class="green">Email -
                                                                        <i class="fa fa-envelope-o bigger-110"></i>
                                                                    </span>
                                                                </a>                                                             
                                                             <div class="space-6"></div>
                                                             </span>
                                                        </div><br>                                                   
                                                       
                                                    </div>
                                                </div>      
                                                 </c:forEach>                               
                                    </div>
                  	 </div>
                  	 
                       <div id="task-tab" class="tab-pane active">
                                    <div class="clearfix">
                                                <div class="col-md-6">
                                                    <div class="itemdiv memberdiv" style="width:auto">
                                                        <c:forEach var="user" items="${listEmp.rows}">
                                                        <div class="body">
                                                    
                                                        </div><br>                                                   
                                                        </c:forEach>
                                                    </div>
                                                </div>                                     
                               </div>
                  	 </div> 
               </div>    
            </div>
           </div>
           
           </div>
           </div>
           </div>
  </div>
</section>

<script>

var birthdayList = '0';
var holidayList = '0';
var anniversaryList = '0';
 if (birthdayList.trim() != '0') {
    $("#liBirthday").addClass("active");
    $("#liHoliday").removeClass("active");
    $("liAnniversary").removeClass("active");

    $("#member-tab").addClass("active");
    $("#task-tab").removeClass("active");
    $("anniversary-tab").removeClass("active");
}
else if (holidayList.trim() != '0') {
    $("#liHoliday").addClass("active");
    $("#liBirthday").removeClass("active");
    $("liAnniversary").removeClass("active");

    $("#task-tab").addClass("active");
    $("#member-tab").removeClass("active");
    $("anniversary-tab").removeClass("active");
}
else (anniversaryList.trim() != '0') {
    $("liAnniversary").addClass("active");
    $("#liHoliday").removeClass("active");
    $("#liBirthday").removeClass("active");

    $("#anniversary-tab").addClass("active");
    $("#task-tab").removeClass("active");
    $("#member-tab").removeClass("active");
}

;
</script>