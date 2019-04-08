package net.koreate.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller // Spring Framework V2.5
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
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
	
	@RequestMapping(value = "/", method = RequestMethod.GET) // Spring Framework V2.5
	public String home(Locale locale, HttpSession session) { // Since - 2019/03/26, Content - 메인홈페이지 화면 호출
		logger.info("Welcome home! The client locale is {}.", locale);
		session.setAttribute("language", locale);
		session.setAttribute("homePage_title", "(주)태성전자");
		return "home";
	}
	
}
