<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="vo.MemberVo"%>
<jsp:useBean id="loginMember" class="vo.MemberVo" scope="page"/>
<jsp:setProperty property="*" name="loginMember"/>

<jsp:useBean id="joinMember" class="vo.MemberVo" scope="application"/>

<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String login = request.getParameter("login");
	
	if(joinMember.getId() != null && loginMember.getId().equals(id) && loginMember.getPass().equals(pass)) {
		session.setAttribute("loginMember", loginMember);
		if (login != null) {
			Cookie cookie = new Cookie("memberID", loginMember.getId());
			cookie.setMaxAge(60 * 60 * 24 * 30);
			response.addCookie(cookie);
		}
		out.print("<script>");
		out.print("alert('로그인 성공');");
		out.print("location.href='index.jsp';");
		out.print("</script>");
	} else {
		out.print("<script>");
		out.print("alert('로그인 실패');");
		out.print("location.href='login.jsp';");
		out.print("</script>");
	}
%>



