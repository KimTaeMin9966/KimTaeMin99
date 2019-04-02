package net.koreate.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.koreate.service.CompanyService;
import net.koreate.vo.BoardVo;
import net.koreate.vo.CommentsVo;
import net.koreate.vo.Criteria;
import net.koreate.vo.PageMaker;

@Controller
@RequestMapping("/company/*")
public class CompanyContoller {

	private static final Logger logger = LoggerFactory.getLogger(CompanyContoller.class);
	
	@Inject
	CompanyService service;
	
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

	@GetMapping(value = "/all") // Spring Framework V4.3
	public void allGetMethod() { // Since - 2019/03/28, Content - 지금까지 해온 작업량 보기
		logger.info("allGetMethod Called!!!");
	}
	
	@GetMapping(value = "/today") // Spring Framework V4.3
	public void todayGetMethod() { // Since - 2019/03/28, Content - 오늘 해야될 작업량 보기
		logger.info("todayGetMethod Called!!!");
	}
	
	@GetMapping(value = "/notifications") // Spring Framework V4.3
	public void notificationsGetMethod(@RequestParam(value = "type") String type, @ModelAttribute("cri") Criteria cri,
			HttpSession session, Model model) { // Since - 2019/03/28, Content - 공지사항 보기
		logger.info("notificationsGetMethod Called!!!");
		Map<String, Object> params = new HashMap<>();
		params.put("types", type);
		params.put("cri", cri);
		List<BoardVo> notifications = service.notificationsGetMethod(params);
		model.addAttribute("notifications", notifications);
		model.addAttribute("member", session.getAttribute("member"));
		
		PageMaker pageMaker = service.getPageMaker(cri); // Since - 2019/03/28, Content - 페이지 정보 가져오기
		model.addAttribute(pageMaker);
	}
	
	@GetMapping(value = "/notifications/read") // Spring Framework V4.3
	public String notificationsReadGetMethod(@RequestParam(value = "bno") int bno, @ModelAttribute("cri") Criteria cri,
			RedirectAttributes rttr) { // Since - 2019/03/28, Content - 해당 게시물 번호로 가져와 게시글 읽기
		logger.info("notificationsReadGetMethod Called!!!");
		service.updateCnt(bno); // Since - 2019/03/28, Content - 해당 게시물 번호로 가져와 게시글 조회수 증가
		
		rttr.addAttribute("bno", bno);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("type", "notification");
		return "redirect:/company/notificationsReadPage";
	}
	
	@GetMapping(value = "/company/notificationsReadPage") // Spring Framework V4.3
	public void notificationsReadPageGetMethod(@RequestParam(value = "bno") int bno, @ModelAttribute("cri") Criteria cri,
			Model model) { // Since - 2019/03/28, Content - 해당 게시물 번호로 가져와 게시글 읽기2
		logger.info("notificationsReadPageGetMethod Called!!!");
		BoardVo notification = service.notificationsReadPageGetMethod(bno);
		List<CommentsVo> comments = service.commentsReadPageGetMethod(bno); // Since - 2019/04/02, Content - 해당 게시물 번호로 가져와 덧글 목록 가져오기
		model.addAttribute("notification", notification);
		model.addAttribute("comments", comments);
	}
	
	@GetMapping(value = "/company/notificationsEditPage") // Spring Framework V4.3
	public void notificationsEditPageGetMethod(@RequestParam(value = "bno") int bno, @ModelAttribute("cri") Criteria cri,
			Model model) { // Since - 2019/03/28, Content - 공지사항 내용 수정
		logger.info("notificationsEditPageGetMethod Called!!!");
		BoardVo vo = service.notificationsEditPageGetMethod(bno);
		model.addAttribute("notification", vo);
	}
	
	@PostMapping(value = "/company/notificationsEditPage") // Spring Framework V4.3
	public String notificationsEditPagePostMethod(BoardVo vo, RedirectAttributes rttr,
			@ModelAttribute("cri") Criteria cri) { // Since - 2019/03/28, Content - 공지사항 내용 수정
		logger.info("notificationsEditPagePostMethod Called!!!");
		service.notificationsEditPagePostMethod(vo);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		return "redirect:/company/notifications?type=notification";
	}
	
	@GetMapping(value = "/company/notificationsDeletePage") // Spring Framework V4.3
	public String notificationsDeletePageGetMethod(@RequestParam(value = "bno") int bno, RedirectAttributes rttr,
			@ModelAttribute("cri") Criteria cri) { // Since - 2019/03/28, Content - 공지사항 내용 삭제
		logger.info("notificationsDeletePageGetMethod Called!!!");
		service.notificationsDeletePageGetMethod(bno);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		return "redirect:/company/notifications?type=notification";
	}
	
	@GetMapping(value = "/write") // Spring Framework V4.3
	public void writeGetMethod(HttpSession session, Model model) { // Since - 2019/03/28, Content - 게시글 작성
		logger.info("writeGetMethod Called!!!");
		model.addAttribute("member", session.getAttribute("member"));
	}
	
	@PostMapping(value = "/writeSubmit") // Spring Framework V4.3
	public String writeSubmitPostMethod(BoardVo bdvo) { // Since - 2018/03/28, Content - 게시글 작성 요청
		logger.info("writeSubmitPostMethod Called!!!");
		service.writeSubmitPostMethod(bdvo);
		return "redirect:/company/notifications?type=notification";
	}
	
	@PostMapping(value = "/writeCommentSubmit") // Spring Framework V4.3
	public ResponseEntity<String> writeCommentSubmitPostMethod(@RequestBody CommentsVo vo) { // Since - 2019/04/02, Content - 덧글 작성 요청
		logger.info("writeCommentSubmitPostMethod Called!!!");
		ResponseEntity<String> entity = null;
		try {
			service.writeCommentSubmitPostMethod(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}
		catch (Exception e) { entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST); }
		return entity;
	}
	
	@PostMapping(value = "/writeCommentEdit") // Spring Framework V4.3
	public ResponseEntity<String> writeCommentEditPostMethod(@RequestBody CommentsVo vo) { // Since - 2019/04/02, Content - 덧글 수정 요청
		logger.info("writeCommentEditPostMethod Called!!!");
		ResponseEntity<String> entity = null;
		try {
			service.writeCommentEditPostMethod(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}
		catch (Exception e) { entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST); }
		return entity;
	}
	
	@GetMapping(value = "/CommentEdit/{cno}") // Spring Framework V4.3
	public ResponseEntity<CommentsVo> CommentEditGetMethod(@PathVariable("cno") int cno, Model model) { // Since - 2019/04/02, Content - 덧글 수정창 요청
		logger.info("CommentEditGetMethod Called!!!");
		ResponseEntity<CommentsVo> entity = null;
		try {
			CommentsVo COMMENT = service.CommentEditGetMethod(cno);
			entity = new ResponseEntity<CommentsVo>(COMMENT, HttpStatus.OK);
		}
		catch (Exception e) { entity = new ResponseEntity<CommentsVo>(HttpStatus.BAD_REQUEST); }
		return entity;
	}
}
