<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청 과목 저장</title>
</head>
<body>
	<%
		String sessionId = (String) session.getAttribute("sessionid");
		String title = "";

		if (sessionId == null){
			response.sendRedirect("login.jsp");
		} else {
			String[] subjects = request.getParameterValues("subject");
			for(int i=0;i<subjects.length;i++) {
				title = subjects[i];
				session.setAttribute(title, subjects[i]);
//				out.println(session.getAttribute(title));
			}
		}
	%>
	<a href = "list.jsp">수강신청 목록 보기</a>

</body>
</html>