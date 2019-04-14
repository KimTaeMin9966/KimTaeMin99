package net.koreate.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/working/*")
public class WorkingController {

	private static final Logger logger = LoggerFactory.getLogger(WorkingController.class);
	

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
	
	@GetMapping(value = "/day") // Spring Framework V4.3
	public void dayGetMethod() {
		logger.info("dayGetMethod Called!!!");
	}
	
	@GetMapping(value = "/order") // Spring Framework V4.3
	public void orderGetMethod() {
		logger.info("orderGetMethod Called!!!");
	}
	
}
