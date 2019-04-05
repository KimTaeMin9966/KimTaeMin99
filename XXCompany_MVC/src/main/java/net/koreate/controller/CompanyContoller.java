package net.koreate.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
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

	@GetMapping(value = "/board") // Spring Framework V4.3
	public void boardGetMethod(@Param("type") String type, @ModelAttribute("cri") Criteria cri, HttpSession session,
			Model model) {
		logger.info("boardGetMethod Called!!!");
		Map<String, Object> params = new HashMap<>();
		params.put("type", type);
		params.put("cri", cri);
		List<BoardVo> list = service.boardGetMethod(params);
		PageMaker pageMaker = service.getPageMaker(cri);
		model.addAttribute(pageMaker);
		model.addAttribute("type", type);
		model.addAttribute("boards", list);
		model.addAttribute("member", session.getAttribute("member"));
	}
	
	@GetMapping(value = "/boardRead") // Spring Framework V4.3
	public String boardReadGetMethod(@RequestParam(value = "bno") int bno, @ModelAttribute("cri") Criteria cri,
			RedirectAttributes rttr) {
		logger.info("boardReadGetMethod Called!!!");
		service.updateCnt(bno);
		
		rttr.addAttribute("bno", bno);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("type", "notification");
		return "redirect:/company/boardReadPage";
	}
	
	@GetMapping(value = "/boardReadPage") // Spring Framework V4.3
	public void boardReadPageGetMethod(@RequestParam(value = "bno") int bno, @ModelAttribute("cri") Criteria cri,
			HttpSession session, Model model) {
		logger.info("boardReadPageGetMethod Called!!!");
		BoardVo board = service.boardReadPageGetMethod(bno);
		List<CommentsVo> comments = service.commentsReadGetMethod(bno);
		model.addAttribute("board", board);
		model.addAttribute("comments", comments);
		model.addAttribute("member", session.getAttribute("member"));
	}
	
	@GetMapping(value = "/boardEditPage") // Spring Framework V4.3
	public void boardEditPageGetMethod(@RequestParam(value = "bno") int bno, @ModelAttribute("cri") Criteria cri,
			Model model) {
		logger.info("boardEditPageGetMethod Called!!!");
		BoardVo vo = service.boardEditPageGetMethod(bno);
		model.addAttribute("board", vo);
	}
	
	@PostMapping(value = "/boardEditPage") // Spring Framework V4.3
	public String boardEditPagePostMethod(BoardVo vo, RedirectAttributes rttr, @ModelAttribute("cri") Criteria cri,
			HttpSession session) {
		logger.info("boardEditPagePostMethod Called!!!");
		service.boardEditPagePostMethod(vo);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("type", session.getAttribute("type"));
		return "redirect:/company/board";
	}
	
	@PostMapping(value = "/boardDeletePage") // Spring Framework V4.3
	public ResponseEntity<String> boardDeletePageGetMethod(@RequestParam(value = "bno") int bno, RedirectAttributes rttr,
			@ModelAttribute("cri") Criteria cri, HttpSession session) {
		logger.info("boardDeletePageGetMethod Called!!!");
		ResponseEntity<String> entity = null;
		try {
			service.boardDeletePageGetMethod(bno);
			
			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("perPageNum", cri.getPerPageNum());
			rttr.addAttribute("type", session.getAttribute("type"));
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}
		catch (Exception e) { entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR); }
		return entity;
	}
	
	@GetMapping(value = "/write") // Spring Framework V4.3
	public void writeGetMethod() {
		logger.info("writeGetMethod Called!!!");
	}
	
	@PostMapping(value = "/write") // Spring Framework V4.3
	public String writePostMethod(BoardVo vo) {
		logger.info("writePostMethod Called!!!");
		service.writePostMethod(vo);
		return "redirect:/company/board";
	}

	@PostMapping(value = "/writeComment") // Spring Framework V4.3
	public ResponseEntity<String> writeCommentPostMethod(@RequestBody CommentsVo vo, @ModelAttribute("cri") Criteria cri,
			RedirectAttributes rttr, HttpSession session) {
		logger.info("writeCommentPostMethod Called!!!");
		ResponseEntity<String> entity = null;
		try {
			service.writeCommentPostMethod(vo);
			
			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("perPageNum", cri.getPerPageNum());
			rttr.addAttribute("type", session.getAttribute("type"));
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}
		catch (Exception e) { entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR); }
		return entity;
	}
	
	@GetMapping(value = "/CommentEdit/{cno}") // Spring Framework V4.3
	public ResponseEntity<CommentsVo> CommentEditGetMethod(@PathVariable("cno") int cno, @ModelAttribute("cri") Criteria cri,
			RedirectAttributes rttr, HttpSession session) {
		logger.info("CommentEditGetMethod Called!!!");
		ResponseEntity<CommentsVo> entity = null;
		try {
			CommentsVo COMMENT = service.CommentEditGetMethod(cno);
			
			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("perPageNum", cri.getPerPageNum());
			rttr.addAttribute("type", session.getAttribute("type"));
			entity = new ResponseEntity<CommentsVo>(COMMENT, HttpStatus.OK);
		}
		catch (Exception e) { entity = new ResponseEntity<CommentsVo>(HttpStatus.BAD_REQUEST); }
		return entity;
	}
	
	@PostMapping(value = "/CommentEdit") // Spring Framework V4.3
	public ResponseEntity<String> CommentEditPostMethod(@RequestBody CommentsVo vo, @ModelAttribute("cri") Criteria cri,
			RedirectAttributes rttr, HttpSession session) {
		logger.info("CommentEditPostMethod Called!!!");
		ResponseEntity<String> entity = null;
		try {
			System.out.println(vo);
			service.CommentEditPostMethod(vo);
			
			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("perPageNum", cri.getPerPageNum());
			rttr.addAttribute("type", session.getAttribute("type"));
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}
		catch (Exception e) { entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR); }
		return entity;
	}
	
}
