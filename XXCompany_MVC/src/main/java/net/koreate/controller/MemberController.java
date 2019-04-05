package net.koreate.controller;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.WebUtils;

import net.koreate.dto.LoginDto;
import net.koreate.service.MemberService;
import net.koreate.vo.MemberVo;

@Controller // Spring Framework V2.5
@RequestMapping("/member/*") // Spring Framework V2.5
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	/*
	@GetMapping(value = "/") // Spring Framework V4.3
	public void GetMethod() { // Since - 0000/00/00, Content - 콘탠츠
		logger.info("GetMethod Called!!!");
	}

	@PostMapping(value = "/") // Spring Framework V4.3
	public void PostMethod() { // Since - 0000/00/00, Content - 콘탠츠
		logger.info("PostMethod Called!!!");
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET) // Spring Framework V2.5
	public void GetMethod() { // Since - 0000/00/00, Content - 콘탠츠
		logger.info("GetMethod Called!!!");
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST) // Spring Framework V2.5
	public void PostMethod() { // Since - 0000/00/00, Content - 콘탠츠
		logger.info("PostMethod Called!!!");
	}
	*/
	
	@GetMapping(value = "/register") // Spring Framework V4.3
	public void registerGetMethod() { // Since - 2019/03/26, Content - 회원가입 페이지 호출
		logger.info("registerGetMethod Called!!!");
	}
	
	@PostMapping(value = "/registerCheck") // Spring Framework V4.3
	public ResponseEntity<String> registerCheckPostMethod(@RequestBody String username) { // Since - 0000/00/00, Content - 콘탠츠
		logger.info("registerCheckPostMethod Called!!!");
		ResponseEntity<String> entity = null;
		try {
			service.registerCheckPostMethod(username);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}
		catch (Exception e) {
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
		}
		return entity;
	}
	
	@PostMapping(value = "/registerPost") // Spring Framework V4.3
	public String registerPostMethod(MemberVo vo, Model model) { // Since - 2019/03/26, Content - 회원가입을 할때 호출
		logger.info("registerPostMethod Called!!!");
		boolean suss = service.registerPostMethod(vo);
		
		if (suss) {
			return "redirect:/member/login";
		} else {
			model.addAttribute("message", "패스워드기 일치하지 않아 회원가입에 실패했습니다.");
			return "/member/register";
		}
	}
	
	@GetMapping(value = "/login") // Spring Framework V4.3
	public void loginGetMethod() { // Since - 2019/03/26, Content - 로그인 페이지 호출
		logger.info("loginGetMethod Called!!!");
	}
	
	@PostMapping(value = "/loginPost") // Spring Framework V4.3
	public String loginPostMethod(LoginDto dto, Model model) { // Since - 2019/03/26, Content - 로그인을 할때 호출
		logger.info("loginPostMethod Called!!!");
		model.addAttribute("loginDto",dto);
		return "redirect:/";
	}
	
	@GetMapping(value = "/profiles") // Spring Framework V4.3
	public void profilesGetMethod(@RequestParam(value = "username") String username,
			Model model) { // Since - 2019/03/26, Content - 자기자신의 정보를 볼때 호출
		logger.info("profilesGetMethod Called!!! {}", username);
		MemberVo vo = service.profilesGetMethod(username);
		model.addAttribute("member", vo);
	}
	
	@GetMapping(value = "/logout") // Spring Framework V4.3
	public String logoutGetMethod(HttpServletRequest request, HttpSession session,
			HttpServletResponse response) { // Since - 2019/03/28, Content - 로그아웃 요청시 호출
		logger.info("logoutGetMethod Called!!!");
		Object obj = session.getAttribute("member");
		
		if(obj != null) {
			session.removeAttribute("member");
			session.invalidate();
			
			Cookie loginCookie = WebUtils.getCookie(request, "LoginCookie");
			if(loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
			}
		}
		return "redirect:/";
	}
	
}
