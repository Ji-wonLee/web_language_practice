<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	The student is confirmed : ${param.firstName} ${param.lastName}

	<!--
		<%= request.getParameter("lastName") %>
		<%= request.getParameter("firstName") %>
	 -->
	<br /> The student's country:
	<%= request.getParameter("country") %>
	<br /> The student's favorite programming languages:
	<%= request.getParameter("favoriteLanguage") %>

	<br />

	<br /> The Student's native Language is
	<%
		String[] langs = request.getParameterValues("nativeLanguage");
		
		if(langs != null){
			for(String tempLang : langs){
				out.println("<li>" + tempLang +"</li>" );
			}
		}
	%>

	<!--
		${param.lastName}
		${param.firstName}
		${paramValues.language[0]}
		${paramValues.language[1]}
		${paramValues.language[2]}
	 
	 -->
</body>
</html>