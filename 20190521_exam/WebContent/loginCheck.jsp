<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="vo.MemberVo"%>
<jsp:useBean id="joinMember" class="vo.MemberVo" scope="application"/>

<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String login = request.getParameter("login");
	
	if(joinMember.getId() != null && joinMember.getId().equals(id) && joinMember.getPass().equals(pass)) {
		session.setAttribute("loginMember", joinMember);
		if (login != null) {
			Cookie cookie = new Cookie("memberID", joinMember.getId());
			cookie.setMaxAge(60 * 60 * 24 * 30);
			response.addCookie(cookie);
		}
		out.print("<script>alert('로그인 성공'); location.href='index.jsp'</script>");
	} else {
		out.print("<script>alert('로그인 실패'); location.href='index.jsp?page=login'</script>");
	}
%>



