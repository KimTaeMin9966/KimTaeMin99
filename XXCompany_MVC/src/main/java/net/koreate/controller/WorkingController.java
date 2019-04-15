package net.koreate.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.koreate.service.WorkingService;
import net.koreate.vo.Criteria;
import net.koreate.vo.OrderVo;
import net.koreate.vo.PageMaker;

@Controller
@RequestMapping("/working/*")
public class WorkingController {

	private static final Logger logger = LoggerFactory.getLogger(WorkingController.class);
	
	@Inject
	WorkingService service;

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
	
	@GetMapping(value = "/order") // Spring Framework V4.3
	public void orderGetMethod(@ModelAttribute("cri") Criteria cri, Model model) {
		logger.info("orderGetMethod Called!!!");
		List<OrderVo> orders = service.orderGetMethod();
		PageMaker pageMaker = service.getPageMaker(cri);
		model.addAttribute(pageMaker);
		model.addAttribute("orders", orders);
	}
	
	@GetMapping(value = "/orderWrite") // Spring Framework V4.3
	public void orderWriteGetMethod() {
		logger.info("orderWriteGetMethod Called!!!");
	}
	
	@PostMapping(value = "/orderWrite") // Spring Framework V4.3
	public String orderWritePostMethod(OrderVo vo) {
		logger.info("orderWritePostMethod Called!!!");
		service.orderWritePostMethod(vo);
		return "redirect:/working/order";
	}
	
}
