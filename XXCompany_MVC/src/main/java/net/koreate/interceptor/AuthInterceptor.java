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

			if (requestURI.equals("/chatting/home")) return true;
			if (requestURI.equals("/working/orderWrite") && !(auth.equals("사장") || auth.equals("관계자"))) {
				session.setAttribute("error", username + "님은 권한이 없어 작업 지시를 할수 없습니다.");
				response.sendRedirect("/working/order");
				return false;
			}
			if (auth.equals("사장") || auth.equals("관계자") || auth.equals("웹관리자")) { return true; }
			else {
				session.setAttribute("error", username + "님은 권한이 없어 접근을 제한 합니다.");
				response.sendRedirect("/");
				return false;
			}
		}
	}

}
