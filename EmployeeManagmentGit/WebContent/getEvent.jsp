<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/employeemanagement" user="root"
				password="" />

			<sql:query var="listEmp" dataSource="${myDS }">select * from employeedetails where flag=1;</sql:query>

		<div>[
		<c:forEach var="user" items="${listEmp.rows}">
			{title          : 'Happy Birthday ${user.Emp_name}',
          	start          : <fmt:parseDate value="${user.Date_of_birth}" pattern="yyyy-MM-dd"></fmt:parseDate>,
          	backgroundColor: '#f56954',
          	borderColor    : '#f56954'},
         </c:forEach>
          	]
		</div>
</body>
</html>