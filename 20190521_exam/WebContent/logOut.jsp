<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Cookie cookies[] = request.getCookies();
	if (cookies != null && cookies.length > 0) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("memberID")) {
				Cookie c = new Cookie("memberID", "");
				c.setMaxAge(0);
				response.addCookie(c);
				break;
			}
		}
	}
	//session.invalidate();
	session.removeAttribute("loginMember");
%>

<script>
	alert("로그아웃 완료");
	location.href = "index.jsp";
</script>


