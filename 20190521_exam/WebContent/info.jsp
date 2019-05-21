<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="vo.MemberVo"%>
<% MemberVo m = (MemberVo) session.getAttribute("loginMember"); %>
	<table class="info">
		<tr>
			<td>아이디</td>
			<td><%= m.getId() %></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%= m.getPass() %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%= m.getName()%></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><%=m.getAddr() %></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><%= m.getPhone() %></td>
		</tr>
		<tr>
			<td colspan=2><input type="button" value="메인" onclick="location.href='index.jsp'"/></td>
		</tr>
 	</table>