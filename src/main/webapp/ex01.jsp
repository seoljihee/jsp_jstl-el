<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<c:set var="contextPath1" value="${pageContext.request.contextPath }/ex01_1.jsp"/> 
<c:set var="contextPath2" value="<%= request.getContextPath()%>"/> --%>
<c:set var="contextPath1" value="${pageContext.request.contextPath }/ex01_1.jsp"/>
<c:set var="contextPath2" value="<%=request.getContextPath()%>"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <a href="${contextPath1}">contextPath1로 이동</a><br>
    <a href="${contextPath2}/ex01_1.jsp">contextPaht2로 이동</a>
    
    <h1>forEach연습</h1>
 <%
    int[] arr = {111,222,333};
    for(int i=0; i<arr.length; i++){
    	out.print(arr[i] + "<br>");
    }
    out.print("<hr>");
    for(int s : arr){
    	out.print(s + "<br>");
    }
 %>
	 <%--${contextPaht1}--%>
	<%--${pageContext.request.contextPath}<br>    
	 
		path1: ${contextPath1}<br>
		path2: ${contextPath2}<br> 	
	<a href="ex01_1.jsp">이동</a>
	<a href="<%=request.getContextPath() %>/ex01_1.jsp">이동</a>
	<a href="${contextPath1}">이동</a><br>
	<a href="${contextPath2}">이동</a>
	
	<hr>
	foreach연습<br>
	
	int[] arr={111,222,333};
	for(int i=0; i<arr.length; i++){
		out.print(arr[i] +", ");
	}
	out.print("<br>");
	for(int n: arr){
		out.print(n + "<br>");
	}
	
	--%>
</body>
</html>



