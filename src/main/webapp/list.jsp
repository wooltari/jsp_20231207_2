<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청 리스트</title>
</head>
<body>
	<h2>수강신청 목록</h2>
	<hr>
	<%
		String sId = (String) session.getAttribute("sessionid");
		String title = "";

		if (sId == null){
			response.sendRedirect("login.jsp");
		} else {
			out.println(sid+"님 로그인 중"+"<br>");
		}
	%>
	
	<%
		Enumeration enu = session.getAttributeNames();
     	// 세션내의 속성들의 이름을 열거형으로 반환
     	
     	String name="";
		while(enu.hasMoreElements()) {
			name = enu.nextElement().toString();
			if(!name.equals("sessionid")) {
				out.println(name);
			}
			
			
		}
	
	%>
	<br><br>
	<a href="logout.jsp">로그아웃</a>

</body>
</html>