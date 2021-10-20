<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String s = request.getParameter("n");  //하나의 값만 가져온다 
		out.print(s);
		
		String[] str = request.getParameterValues("n");
		//out.print(str[0]);
		//out.print(str[1]);
		//out.print(str[2]);
		
		out.print("<hr>");
		if(str != null){
			for(int i=0; i<str.length; i++){
				out.print(str[i] + "<br>");
			}
		}else{
			out.print("선택값이 없습니다.");
		}
	%>
	
	<h1>jstl & el</h1><br>

	<%-- 변수를 받아서 처리하는 경우 --%>
	<c:set var="value" value="${paramValues.n}"/>
	
	<c:if test="${value != null}">
		<c:forEach var="s" items="${value}">
		${s}<br>
		</c:forEach>	
	</c:if>
	<c:if test="${value == null }">
		값 없음
	</c:if>
	
	&lt; 변수를 받지 않고 작성하는 경우 &gt;<br>
	<c:if test="${paramValues.n != null }">
		<c:forEach var="s" items="${paramValues.n}"> <%--var:변수  items:name --%>
			${s}<br>
		</c:forEach>
	</c:if>
	<c:if test="${paramValues.n == null }">
	값 없음
	</c:if>
		
	
	
	
	
</body>
</html>