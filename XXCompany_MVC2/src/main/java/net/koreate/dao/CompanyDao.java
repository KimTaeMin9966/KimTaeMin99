package net.koreate.dao;

import java.util.List;
import java.util.Map;

import net.koreate.vo.BoardVo;
import net.koreate.vo.CommentsVo;
import net.koreate.vo.Criteria;

public interface CompanyDao {
	
	int boardsCount(Criteria cri);
	List<BoardVo> boardGetMethod(Criteria cri);
	List<BoardVo> boardTypeGetMethod(Map<String, Object> params);
	void updateCnt(int bno);
	BoardVo boardReadPageGetMethod(int bno);
	List<CommentsVo> commentsReadGetMethod(int bno);
	BoardVo boardEditPageGetMethod(int bno);
	void boardEditPagePostMethod(BoardVo vo);
	void boardDeletePageGetMethod(int bno);
	int getCommentCnt(int bno);
	void writePostMethod(BoardVo vo);
	void writeCommentPostMethod(CommentsVo vo);
	CommentsVo CommentEditGetMethod(int cno);
	void CommentEditPostMethod(CommentsVo vo);
	void updateBoardCount(BoardVo vo);
	void updateCommentCount(CommentsVo vo);
	
}
