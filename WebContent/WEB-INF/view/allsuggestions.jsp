<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/css/mystyle.css"%></style>

<style><%@include file="/WEB-INF/css2/mystyle.css"%></style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<!--MOHAMAD Code  -->

<body>

<jsp:include  flush="true" page="/WEB-INF/view/header.jsp"/>

<div align="center">
           <h1><i> The Suggestion For All Projects<b></b></i></h1>
	            <table border="1">
		             <tr class="staticInfoTable">
		                <th>S.No.</th>
		                <th>Employee name</th>
		                <th>Project name</th>
						<th>Task Name</th>
						<th>Start</th>
		            </tr>
	                <c:forEach var="suggestion" items="${suggestions}" varStatus="status">
	                <tr>
	                    <td>${status.index + 1}</td>
	                    <c:forEach var="employee" items="${employees}" varStatus="status">
		                    <c:if test="${suggestion.employee_id == employee.id}" >
		                    <td>${employee.name}</td>
		                    </c:if>
		                </c:forEach>
	                    <c:forEach var="project" items="${projects}" varStatus="status">
	                        <c:if test="${ suggestion.project_id == project.id}" >
		                      <td>${project.title}</td>
		                    </c:if>
		                </c:forEach>   
	                    <c:forEach var="task" items="${tasks}" varStatus="status">
	                        <c:if test="${ suggestion.task_id == task.id}" >
		                    <td>${task.title}</td>
		                    </c:if>
			            </c:forEach>
			            <form:form name="SelectTaskFRomSuggestion" method="post" action="start" modelAttribute="task">
			               <input type='hidden' name="id" value='${suggestion.task_id}'/>
			               <td><input type="submit" value="Start"/></td>
			            </form:form>
		            
		            </tr>
		             
			         </c:forEach>
	            </table>
        </div>	   
</body>
<!--MOHAMAD Code  -->
</html>