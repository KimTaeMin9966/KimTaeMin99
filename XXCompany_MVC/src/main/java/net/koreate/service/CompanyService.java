package net.koreate.service;

import java.util.List;
import java.util.Map;

import net.koreate.vo.BoardVo;
import net.koreate.vo.Criteria;
import net.koreate.vo.PageMaker;

public interface CompanyService {

	List<BoardVo> notificationsGetMethod(Map<String, Object> params); // Since - 2019/03/28, Content - 공지사항 보기

	void writeSubmitPostMethod(BoardVo bdvo); // Since - 2018/03/28, Content - 게시글 작성 요청

	PageMaker getPageMaker(Criteria cri); // Since - 2019/03/28, Content - 페이지 정보 가져오기

	void updateCnt(int bno); // Since - 2019/03/28, Content - 해당 게시물 번호로 가져와 게시글 조회수 증가

	BoardVo notificationsReadPageGetMethod(int bno); // Since - 2019/03/28, Content - 해당 게시물 번호로 가져와 게시글 읽기2

	BoardVo notificationsEditPageGetMethod(int bno); // Since - 2019/03/28, Content - 해당 게시물 번호로 가져와 게시글 수정

	void notificationsEditPagePostMethod(BoardVo vo); // Since - 2019/03/28, Content - 공지사항 내용 수정

	void notificationsDeletePageGetMethod(int bno); // Since - 2019/03/28, Content - 공지사항 내용 삭제

}
