<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style><%@include file="/WEB-INF/css/bootstrap.css"%></style>
<style><%@include file="/WEB-INF/css/jquery.min.js"%></style>
<style><%@include file="/WEB-INF/css/bootstrap.min.js"%></style>
<style><%@include file="/WEB-INF/css/mystyle.css"%></style>

<style><%@include file="/WEB-INF/css/TestingNewTable.css"%></style>

<style><%@include file="/WEB-INF/css2/mystyle.css"%></style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- MOHAMAD Gab code -->
<jsp:include  flush="true" page="/WEB-INF/view/header.jsp"/>
<!-- MOHAMAD End -->

<!-- Gab -->

<div class="col-sm-12 taskDesign">
	<div class="row">
		<div class="listDesign">
			<h1  align="center">Employee List</h1>
		</div>
		<c:forEach var="project" items="${getProjects }">
			<div class="projectInfo">
 	      		Project name: ${project.title}
				<div >
					<div class="staticInfo">
						<div class="col-sm-3">
							Task Name
						</div>	
							
						<div class="col-sm-3">
							Status Of Task
						</div>

						<div class="col-sm-3">
							Timespend
						</div>
								
						<div class="col-sm-2">
							Start/Pause/Finish	
						</div>
						
							
					</div>

					<div class="taskInfo">
						<c:forEach var="task" items="${project.tasks }">	
		
							<div class="col-sm-3">
								${task.title}
							</div>	
										
							<div class="col-sm-3">
								${task.status}
							</div>

							<div class="col-sm-3">
								 <c:choose>
									    <c:when test="${task.timespend<=999}">
									       00:00
									    </c:when> 
									    <c:when test="${task.timespend >= 1000 && task.timespend <= 3599000 }">
									      <jsp:useBean id="dateObject1" class="java.util.Date" />
								    	  <jsp:setProperty name="dateObject1" property="time" value="${task.timespend}" />
									      <b><fmt:formatDate value="${dateObject1 }" pattern=" 00:mm " /></b>
									     
									    </c:when>    
									    <c:otherwise>
						                  <jsp:useBean id="dateObject2" class="java.util.Date" />
								    	  <jsp:setProperty name="dateObject2" property="time" value="${task.timespend-3600000}" />
									      <b><fmt:formatDate value="${dateObject2 }" pattern="hh:mm " /></b>
							            </c:otherwise>
									 </c:choose>
							</div>
							
							<div class="col-sm-2">
								<c:if test="${task.status == 'New' || task.status == 'Paused' || task.status == 'Finished'}">
								<a href="start?id=${task.id }"><button>Start</button></a>
								</c:if>	
								<c:if test="${task.status == 'Started'}">
								<a href="pause?id=${task.id }"><button>Pause</button></a>
								<a href="finish?id=${task.id }"><button>Finish</button></a>
								</c:if>
							</div>
							
							
								
						</c:forEach>
						<div class="row"></div>
					</div>

				</div>
			</div>
		</c:forEach>
		
		<div>
			<h1> </h1>
		</div>
	</div>
</div>

<!-- Gab endline -->

</body>
</html>