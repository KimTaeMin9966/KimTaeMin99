package net.koreate.service;

import java.util.List;
import java.util.Map;

import net.koreate.vo.BoardVo;
import net.koreate.vo.CommentsVo;
import net.koreate.vo.Criteria;
import net.koreate.vo.PageMaker;

public interface CompanyService {
	
	PageMaker getPageMaker(Criteria cri);
	List<BoardVo> boardGetMethod(Map<String, Object> params);
	void updateCnt(int bno);
	BoardVo boardReadPageGetMethod(int bno);
	List<CommentsVo> commentsReadGetMethod(int bno);
	BoardVo boardEditPageGetMethod(int bno);
	void boardEditPagePostMethod(BoardVo vo);
	void boardDeletePageGetMethod(int bno);
	void writePostMethod(BoardVo vo);
	void writeCommentPostMethod(CommentsVo vo);
	CommentsVo CommentEditGetMethod(int cno);
	void CommentEditPostMethod(CommentsVo vo);
	
}
