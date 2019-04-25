package net.koreate.controller;

import java.util.List;

import javax.inject.Inject;
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

import net.koreate.service.ChattingService;
import net.koreate.vo.ChattingVo;

@Controller
@RequestMapping("/chatting/*")
public class ChattingController {
	
	private static final Logger logger = LoggerFactory.getLogger(ChattingController.class);
	
	@Inject
	ChattingService service;
	
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
	
	@GetMapping(value = "/home") // Spring Framework V4.3
	public void ChattingHomeGetMethod(HttpSession session, Model model) {
		logger.info("ChattingHomeGetMethod Called!!!");
		List<ChattingVo> chattings = service.ChattingHomeGetMethod();
		model.addAttribute("chattings", chattings);
		model.addAttribute("member", session.getAttribute("member"));
	}
	
	@PostMapping(value = "/send") // Spring Framework V4.3
	public ResponseEntity<String> sendPostMethod(@RequestBody ChattingVo vo) {
		logger.info("sendPostMethod Called!!!");
		ResponseEntity<String> entity = null;
		try {
			if (vo.getChat().contains("<script>")) {
				entity = new ResponseEntity<>("FAIL", HttpStatus.INTERNAL_SERVER_ERROR);
				return entity;
			}
			service.sendPostMethod(vo);
			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);
		}
		catch (Exception e) { entity = new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); }
		return entity;
	}
	
}
