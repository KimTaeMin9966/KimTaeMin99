package net.koreate.interceptor;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import net.koreate.service.MemberService;
import net.koreate.vo.MemberVo;

public class AuthInterceptor extends HandlerInterceptorAdapter {

	@Inject
	MemberService service;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String requestURI = request.getRequestURI();
		
		HttpSession session = request.getSession();
		session.setAttribute("dest", requestURI);

		Object loginUser = session.getAttribute("member");

		if (loginUser == null) {
			response.sendRedirect("/member/login");
			return false;
		} else {
			MemberVo user = (MemberVo) loginUser;
			String username = user.getUsername();
			String auth = service.getUserAuthByUsername(username);
			
			if (auth.equals("사장님") || auth.equals("관계자") || auth.equals("웹관리자")) {
				System.out.println(username + "님 반갑습니다.");
				return true;
			} else {
				session.setAttribute("error", username + "님 권한이 없어 접근을 제한 합니다.");
				response.sendRedirect("/");
				return false;
			}
		}
	}

}
