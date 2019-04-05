package net.koreate.interceptor;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import net.koreate.dto.LoginDto;
import net.koreate.service.MemberService;
import net.koreate.vo.MemberVo;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	@Inject
	MemberService service;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		if(session.getAttribute("member") != null) {
			System.out.println("세션에 정보가 존재합니다.");
			session.removeAttribute("member");
			session.invalidate();
		}
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		HttpSession session = request.getSession();
		ModelMap obj = modelAndView.getModelMap();
		LoginDto dto = (LoginDto)obj.get("loginDto");
		
		String joindate = dto.getJoindate();
		String password = dto.getPassword();

		final String hash = joindate + "/" + password;
		
		final String passwordHash =  service.getPasswordHashByJoindate(joindate);
		dto.setPassword(passwordHash);
		
		MemberVo vo = service.Login(dto);
		
		if (vo != null && BCrypt.checkpw(hash, passwordHash)) {
			session.setAttribute("member", vo);
			
			if(dto.isUseCookie()) {
				Cookie cookie = new Cookie("LoginCookie", String.valueOf(vo.getUsername()));
				cookie.setPath("/");
				cookie.setMaxAge(60 * 60 * 24 * 7);
				response.addCookie(cookie);
				
				System.out.println("Username : " + vo.getUsername());
				System.out.println("Cookie : " + cookie.getValue());
				System.out.println("쿠키생성 완료");
			}
		} else { modelAndView.addObject("message", "로그인에 실패 하셨습니다."); modelAndView.setViewName("/member/login"); }
	}
	
}
