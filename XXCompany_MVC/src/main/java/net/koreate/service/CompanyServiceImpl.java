package net.koreate.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.dao.CompanyDao;
import net.koreate.vo.BoardVo;
import net.koreate.vo.CommentsVo;
import net.koreate.vo.Criteria;
import net.koreate.vo.PageMaker;

@Service
public class CompanyServiceImpl implements CompanyService {
	
	@Inject
	CompanyDao dao;

	@Override
	public List<BoardVo> boardGetMethod(Map<String, Object> params) {
		// TODO Auto-generated method stub
		String type = (String) params.get("type");
		if (type == null) {
			Criteria cri = (Criteria) params.get("cri");
			List<BoardVo> list =  dao.boardGetMethod(cri);
			for(BoardVo vo : list) vo.setCommentCnt(dao.getCommentCnt(vo.getBno()));
			return list;
		} else {
			List<BoardVo> list =  dao.boardTypeGetMethod(params);
			for(BoardVo vo : list) vo.setCommentCnt(dao.getCommentCnt(vo.getBno()));
			return list;
		}
	}
	
	@Override
	public PageMaker getPageMaker(Criteria cri) {
		// TODO Auto-generated method stub
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		int cnt = dao.boardsCount(cri);
		pageMaker.setTotalCount(cnt);
		return pageMaker;
	}

	@Override
	public void updateCnt(int bno) {
		// TODO Auto-generated method stub
		dao.updateCnt(bno);
	}

	@Override
	public BoardVo boardReadPageGetMethod(int bno) {
		// TODO Auto-generated method stub
		return dao.boardReadPageGetMethod(bno);
	}

	@Override
	public List<CommentsVo> commentsReadGetMethod(int bno) {
		// TODO Auto-generated method stub
		return dao.commentsReadGetMethod(bno);
	}

	@Override
	public BoardVo boardEditPageGetMethod(int bno) {
		// TODO Auto-generated method stub
		return dao.boardEditPageGetMethod(bno);
	}

	@Override
	public void boardEditPagePostMethod(BoardVo vo) {
		// TODO Auto-generated method stub
		dao.boardEditPagePostMethod(vo);
	}

	@Override
	public void boardDeletePageGetMethod(int bno) {
		// TODO Auto-generated method stub
		dao.boardDeletePageGetMethod(bno);
	}

	@Override
	public void writePostMethod(BoardVo vo) {
		// TODO Auto-generated method stub
		dao.writePostMethod(vo);
	}

	@Override
	public void writeCommentPostMethod(CommentsVo vo) {
		// TODO Auto-generated method stub
		dao.writeCommentPostMethod(vo);
	}

	@Override
	public CommentsVo CommentEditGetMethod(int cno) {
		// TODO Auto-generated method stub
		return dao.CommentEditGetMethod(cno);
	}

	@Override
	public void CommentEditPostMethod(CommentsVo vo) {
		// TODO Auto-generated method stub
		dao.CommentEditPostMethod(vo);
	}
}
