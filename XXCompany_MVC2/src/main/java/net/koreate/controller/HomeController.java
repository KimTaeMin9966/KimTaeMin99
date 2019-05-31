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
	public void GetMethod() {
		logger.info("GetMethod Called!!!");
	}

	@PostMapping(value = "/") // Spring Framework V4.3
	public void PostMethod() {
		logger.info("PostMethod Called!!!");
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET) // Spring Framework V2.5
	public void GetMethod() {
		logger.info("GetMethod Called!!!");
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST) // Spring Framework V2.5
	public void PostMethod() {
		logger.info("PostMethod Called!!!");
	}
	*/
	
	@RequestMapping(value = "/", method = RequestMethod.GET) // Spring Framework V2.5
	public String home(Locale locale, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		session.setAttribute("language", locale);
		session.setAttribute("title", "(주)태성전자");
		return "home";
	}
	
}
