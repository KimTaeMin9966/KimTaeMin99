package net.koreate.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

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
	public void orderGetMethod(@ModelAttribute("cri") Criteria cri, HttpSession session, Model model) {
		logger.info("orderGetMethod Called!!!");
		List<OrderVo> orders = service.orderGetMethod();
		PageMaker pageMaker = service.getPageMaker(cri);
		model.addAttribute(pageMaker);
		model.addAttribute("member", session.getAttribute("member"));
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
	
	@GetMapping(value = "/materials") // Spring Framework V4.3
	public void materialsGetMethod(@ModelAttribute("cri") Criteria cri, HttpSession session, Model model) {
		logger.info("materialsGetMethod Called!!!");
		List<OrderVo> materials = service.materialsGetMethod();
		PageMaker pageMaker = service.getPageMaker(cri);
		model.addAttribute(pageMaker);
		model.addAttribute("member", session.getAttribute("member"));
		model.addAttribute("materials", materials);
	}
	
	@GetMapping(value = "/materialsWrite") // Spring Framework V4.3
	public void materialsWriteGetMethod() {
		logger.info("materialsWriteGetMethod Called!!!");
	}
	
	@PostMapping(value = "/materialsWrite") // Spring Framework V4.3
	public String materialsWritePostMethod(OrderVo vo) {
		logger.info("materialsWritePostMethod Called!!!");
		service.materialsWritePostMethod(vo);
		return "redirect:/working/materials";
	}
	
	@GetMapping(value = "/wearing") // Spring Framework V4.3
	public void wearingGetMethod(@ModelAttribute("cri") Criteria cri, HttpSession session, Model model) {
		logger.info("wearingGetMethod Called!!!");
		List<OrderVo> wearings = service.wearingGetMethod();
		PageMaker pageMaker = service.getPageMaker(cri);
		model.addAttribute(pageMaker);
		model.addAttribute("member", session.getAttribute("member"));
		model.addAttribute("wearings", wearings);
	}
	
	@GetMapping(value = "/wearingWrite") // Spring Framework V4.3
	public void wearingWriteGetMethod() {
		logger.info("wearingWriteGetMethod Called!!!");
	}
	
	@PostMapping(value = "/wearingWrite") // Spring Framework V4.3
	public String wearingWritePostMethod(OrderVo vo) {
		logger.info("wearingWritePostMethod Called!!!");
		service.wearingWritePostMethod(vo);
		return "redirect:/working/wearing";
	}
	
	@GetMapping(value = "/release") // Spring Framework V4.3
	public void releaseGetMethod(@ModelAttribute("cri") Criteria cri, HttpSession session, Model model) {
		logger.info("releaseGetMethod Called!!!");
		List<OrderVo> releases = service.releaseGetMethod();
		PageMaker pageMaker = service.getPageMaker(cri);
		model.addAttribute(pageMaker);
		model.addAttribute("member", session.getAttribute("member"));
		model.addAttribute("releases", releases);
	}
	
	@GetMapping(value = "/releaseWrite") // Spring Framework V4.3
	public void releaseWriteGetMethod() {
		logger.info("releaseWriteGetMethod Called!!!");
	}
	
	@PostMapping(value = "/releaseWrite") // Spring Framework V4.3
	public String releaseWritePostMethod(OrderVo vo) {
		logger.info("releaseWritePostMethod Called!!!");
		service.releaseWritePostMethod(vo);
		return "redirect:/working/release";
	}
	
}
