<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="joinMember" class="vo.MemberVo" scope="application"/>
<jsp:useBean id="loginDto" class="dto.LoginDto" scope="page"/>
<jsp:setProperty property="*" name="loginDto"/>

<%
	request.setCharacterEncoding("utf-8");
	/* String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String login = request.getParameter("login"); */
	
	if(joinMember.getId() != null && joinMember.getId().equals(loginDto.getId()) && joinMember.getPass().equals(loginDto.getPsaa())) {
		session.setAttribute("loginMember", joinMember);
		if (loginDto.isLogin()) {
			Cookie cookie = new Cookie("memberID", loginDto.getId());
			cookie.setMaxAge(60 * 60 * 24 * 30);
			response.addCookie(cookie);
		}
		out.print("<script>alert('로그인 성공'); location.href='index.jsp'</script>");
	} else {
		out.print("<script>alert('로그인 실패'); location.href='index.jsp?page=login'</script>");
	}
%>



