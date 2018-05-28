<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/css/bootstrap.css"%></style>
<style><%@include file="/WEB-INF/css/jquery.min.js"%></style>
<style><%@include file="/WEB-INF/css/bootstrap.min.js"%></style>
<style><%@include file="/WEB-INF/css/mystyle.css"%></style>

<style><%@include file="/WEB-INF/css/TestingNewTable.css"%></style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- Gab -->
<div class="col-sm-12">
	<div class="row">
	<div class="header">
	<h1>Suggestion List</h1>
	</div>
		<c:forEach var="project" items="${getProjects }">
			<div class="muu3">
 	      	Project name: ${project.title}
 	      	</div>
 	      	<div>
 	      				<div class="muu2">
	 	      				<div class="col-sm-3">
								Task Name
							</div>	
								
							<div class="col-sm-3">
								Status Of Task
							</div>
								
							<div class="col-sm-2">
								Start
							</div>
								
							<div class="col-sm-2">
								Pause
							</div>
								
							<div class="col-sm-2">
								Finish							
							</div>
						</div>
						<div class="muu">
	 					<c:forEach var="task" items="${project.tasks }">	
	
							<div class="col-sm-3">
								${task.title}
							</div>	
								
							<div class="col-sm-3">
								${task.status}
							</div>
								
							<div class="col-sm-2">
								Start
							</div>
								
							<div class="col-sm-2">
								Pause
							</div>
								
							<div class="col-sm-2">
								Finish							
							</div>
								
						</c:forEach>
						
					</div>
				</div>
		</c:forEach>
		</div>
		<br>
		
</div>
<!-- Gab endline -->
</body>
</html>