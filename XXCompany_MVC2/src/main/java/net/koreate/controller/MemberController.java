package net.koreate.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.koreate.service.MemberService;
import net.koreate.vo.MemberVo;

@Controller // Spring Framework V2.5
@RequestMapping("/member/*") // Spring Framework V2.5
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	@Inject
	PasswordEncoder passwordEncoder;
	
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
	
	@GetMapping(value = "/join") // Spring Framework V4.3
	public void joinGetMethod() { // Since - 2019/03/26, Content - 회원가입 페이지 호출
		logger.info("joinGetMethod Called!!!");
	}
	
	@PostMapping(value = "/joinIdCheck") // Spring Framework V4.3
	public ResponseEntity<String>joinIdCheckPostMethod(@RequestParam("userid") String userid) { // Since - 0000/00/00, Content - 콘탠츠
		logger.info("joinIdCheckPostMethod Called!!!");
		ResponseEntity<String> entity = null;
		try {
			MemberVo vo = service.joinIdCheck(userid);
			if (vo != null) entity = new ResponseEntity<>("FAIL", HttpStatus.OK);
			else			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);
		}
		catch (Exception e) {
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
		}
		return entity;
	}
	
	@PostMapping(value = "/join") // Spring Framework V4.3
	public String joinPostMethod(MemberVo vo, Model model) { // Since - 2019/03/26, Content - 회원가입을 할때 호출
		logger.info("joinPostMethod Called!!!");
		boolean suss = service.join(vo, passwordEncoder);
		
		if (suss) {
			return "redirect:/member/login";
		} else {
			model.addAttribute("message", "패스워드기 일치하지 않아 회원가입에 실패했습니다.");
			return "/member/register";
		}
	}
	
	@GetMapping(value = "/login")
	public void loginGetMethod(String error, String logout, Model model) {
		logger.info("loginGetMethod Called!!!");
		logger.info("error : " + error);
		logger.info("logout : " + logout);
		
		if (error != null) model.addAttribute("error", "로그인에 실패 하였습니다. 아이디나 비밀번호를 다시 확인 해주세요");
		
		if (logout != null) model.addAttribute("logout", "로그아웃이 성공적으로 이루어 졌습니다.");
	}
	
	@GetMapping(value = "/profiles") // Spring Framework V4.3
	public void profilesGetMethod(@RequestParam("userid") String userid,
			Model model) { // Since - 2019/03/26, Content - 자기자신의 정보를 볼때 호출
		logger.info("profilesGetMethod Called!!! {}", userid);
		MemberVo vo = service.getProfilesByUserId(userid);
		model.addAttribute("profile", vo);
	}
	
	@GetMapping(value = "/logout")
	public void logoutGetMethod() {
		logger.info("logoutGetMethod Called!!!");
	}
	
	@PostMapping(value = "/logout")
	public void logoutPostMethod() {
		logger.info("logoutPostMethod Called!!!");
	}
	
}
