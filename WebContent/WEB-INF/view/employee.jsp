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

<!-- MOHAMAD code -->
<div  class="box "  align='center'>
<h1>Account: ${logedEmployee.name }</h1>
 <a href="logout"><button>Logout</button></a>
</div>

<!-- MOHAMAD End -->

<!-- Gab -->
<div class="col-sm-12">
	<div class="row">
	<div class="header">
	<h1>Employee List</h1>
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
								
							<div class="col-sm-6">
								Start/Pause/Finish	
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
								
							<div class="col-sm-6">
								<c:if test="${task.status == 'New' || task.status == 'Paused' || task.status == 'Finished'}">
									<a href="start?id=${task.id }"><button>Start</button></a>
								</c:if>	
								<c:if test="${task.status == 'Started'}">
									<a href="pause?id=${task.id }"><button>Pause</button></a>
									<a href="finish?id=${task.id }"><button>Finish</button></a>
								</c:if>


							</div>								
															
						</c:forEach>
						
					</div>
				</div>
		</c:forEach>
		</div>
		<br>
		
</div>
<!-- Gab endline -->




<!-- Mohamad -->

<h1>Employee Details</h1> 
    Id: ${employee.id} <br>
    Name: ${employee.name} <br>
    Email: ${employee.email} <br>
    Password: ${employee.password} <br>
    Address: ${employee.address} <br>
    phone: ${employee.phone} <br>

<!-- end Mohamad -->

</body>
</html>