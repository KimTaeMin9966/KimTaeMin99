<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@page import="vo.MemberVo"%>
<jsp:useBean id="joinMember" class="vo.MemberVo" scope="application"/>
<%
	Cookie cookies[] = request.getCookies();
	if (cookies != null && cookies.length > 0) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("memberID")) {
				session.setAttribute("loginMember", joinMember);
			}
		}
	}
	MemberVo m = (MemberVo) session.getAttribute("loginMember");
%>
<header>
	<ul>
		<% if (m != null) { %>
			<li><a href="index.jsp?page=info"><%=m.getName()%></a>님 반갑습니다.</li>
			<li><a href="logOut.jsp">로그아웃</a></li>
		<% } else { %>
			<li><a href="index.jsp?page=login">로그인</a></li>
			<li><a href="index.jsp?page=join">회원가입</a></li>
		<% } %>
	</ul>
</header>