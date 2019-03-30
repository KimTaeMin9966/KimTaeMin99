package net.koreate.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.dao.CompanyDao;
import net.koreate.vo.BoardVo;
import net.koreate.vo.Criteria;
import net.koreate.vo.PageMaker;

@Service
public class CompanyServiceImpl implements CompanyService {
	
	@Inject
	CompanyDao dao;

	@Override
	public List<BoardVo> notificationsGetMethod(Map<String, Object> params) { // Since - 2019/03/28, Content - 공지사항 보기
		// TODO Auto-generated method stub
		return dao.notificationsGetMethod(params);
	}

	@Override
	public void writeSubmitPostMethod(BoardVo bdvo) { // Since - 2018/03/28, Content - 게시글 작성 요청
		// TODO Auto-generated method stub
		dao.writeSubmitPostMethod(bdvo);
	}

	@Override
	public PageMaker getPageMaker(Criteria cri) { // Since - 2019/03/28, Content - 페이지 정보 가져오기
		// TODO Auto-generated method stub
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		int cnt = dao.notificationsCount(cri); // Since - 2019/03/28, Content - 공지글 갯수 가져오기
		pageMaker.setTotalCount(cnt);
		return pageMaker;
	}

	@Override
	public void updateCnt(int bno) { // Since - 2019/03/28, Content - 해당 게시물 번호로 가져와 게시글 조회수 증가
		// TODO Auto-generated method stub
		dao.updateCnt(bno);
	}

	@Override
	public BoardVo notificationsReadPageGetMethod(int bno) { // Since - 2019/03/28, Content - 해당 게시물 번호로 가져와 게시글 읽기2
		// TODO Auto-generated method stub
		return dao.notificationsReadPageGetMethod(bno);
	}

	@Override
	public BoardVo notificationsEditPageGetMethod(int bno) { // Since - 2019/03/28, Content - 해당 게시물 번호로 가져와 게시글 수정
		// TODO Auto-generated method stub
		return dao.notificationsEditPageGetMethod(bno);
	}

	@Override
	public void notificationsEditPagePostMethod(BoardVo vo) { // Since - 2019/03/28, Content - 공지사항 내용 수정
		// TODO Auto-generated method stub
		dao.notificationsEditPagePostMethod(vo);
	}

	@Override
	public void notificationsDeletePageGetMethod(int bno) { // Since - 2019/03/28, Content - 공지사항 내용 삭제
		// TODO Auto-generated method stub
		dao.notificationsDeletePageGetMethod(bno);
	}

}
