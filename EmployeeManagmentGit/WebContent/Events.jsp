
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<section>
	<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/employeemanagement" user="root"
				password="" />

			<sql:query var="listEmp" dataSource="${myDS }">select * from employeedetails where Date_of_birth between subdate(curdate(),interval 2 day) and subdate(curdate(),interval -5 day);</sql:query>
			
                <div class="widget-box transparent" id="recent-box">
                    <div class="widget-header">
                        <h4 class="lighter smaller"><i class="fa fa-rss orange"></i> Recent</h4>
                        <div class="widget-toolbar no-border">
                            <ul class="nav nav-tabs" id="recent-tab">
                                <li class="" id="liNews">
                                    <a data-toggle="tab" href="#comment-tab" class="blue"> <i class="fa fa-bullhorn"></i> News</a>
                                </li>

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
                    
                    <div id="member-tab" class="tab-pane active">
                                    <div class="clearfix">
                                                <div class="col-md-6">
                                                    <div class="itemdiv memberdiv" style="width:auto">
                                                        <c:forEach var="user" items="${listEmp.rows}">
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
                                                             <div class="space-6"></div>
                                                             </span>
                                                        </div><br>                                                   
                                                        </c:forEach>
                                                    </div>
                                                </div>                                     
                                    </div>
                   </div>
                   
                     <div id="anniversary-tab" class="tab-pane active">
                                    <div class="clearfix">
                                                <div class="col-md-6">
                                                    <div class="itemdiv memberdiv" style="width:auto">
                                                        <c:forEach var="user" items="${listEmp.rows}">
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
                                                             <div class="space-6"></div>
                                                             </span>
                                                        </div><br>                                                   
                                                        </c:forEach>
                                                    </div>
                                                </div>                                     
                                    </div>
                   </div>
                   
            </div>
           
</section>

<script>
var employeeNewslist = '0';
var birthdayList = '4';
var holidayList = '11';
var anniversaryList = '4';
if (employeeNewslist.trim() != '0') {
    $("#liNews").addClass("active");
    $("#liBirthday").removeClass("active");
    $("#liHoliday").removeClass("active");
    $("liAnniversary").removeClass("active");

    $("#comment-tab").addClass("active");
    $("#member-tab").removeClass("active");
    $("#task-tab").removeClass("active");
    $("#anniversary-tab").removeClass("active");
}
else if (birthdayList.trim() != '0') {
    $("#liBirthday").addClass("active");
    $("#liNews").removeClass("active");
    $("#liHoliday").removeClass("active");
    $("liAnniversary").removeClass("active");

    $("#member-tab").addClass("active");
    $("#comment-tab").removeClass("active");
    $("#task-tab").removeClass("active");
    $("anniversary-tab").removeClass("active");
}
else if (holidayList.trim() != '0') {
    $("#liHoliday").addClass("active");
    $("#liNews").removeClass("active");
    $("#liBirthday").removeClass("active");
    $("liAnniversary").removeClass("active");

    $("#task-tab").addClass("active");
    $("#comment-tab").removeClass("active");
    $("#member-tab").removeClass("active");
    $("anniversary-tab").removeClass("active");
}
else if (anniversaryList.trim() != '0') {
    $("liAnniversary").addClass("active");
    $("#liHoliday").removeClass("active");
    $("#liNews").removeClass("active");
    $("#liBirthday").removeClass("active");

    $("#anniversary-tab").addClass("active");
    $("#task-tab").removeClass("active");
    $("#comment-tab").removeClass("active");
    $("#member-tab").removeClass("active");
}
else {
    $("#liNews").addClass("active");
    $("#liBirthday").removeClass("active");
    $("#liHoliday").removeClass("active");
    $("liAnniversary").removeClass("active");

    $("#comment-tab").addClass("active");
    $("#member-tab").removeClass("active");
    $("#task-tab").removeClass("active");
    $("#anniversary-tab").removeClass("active");
}
});
</script>