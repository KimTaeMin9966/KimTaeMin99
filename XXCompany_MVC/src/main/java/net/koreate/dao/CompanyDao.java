package net.koreate.dao;

import java.util.List;
import java.util.Map;

import net.koreate.vo.BoardVo;
import net.koreate.vo.Criteria;

public interface CompanyDao {

	List<BoardVo> notificationsGetMethod(Map<String, Object> params); // Since - 2019/03/28, Content - 공지사항 보기

	void writeSubmitPostMethod(BoardVo bdvo); // Since - 2018/03/28, Content - 게시글 작성 요청

	int notificationsCount(Criteria cri); // Since - 2019/03/28, Content - 공지글 갯수 가져오기

	void updateCnt(int bno); // Since - 2019/03/28, Content - 해당 게시물 번호로 가져와 게시글 조회수 증가

	BoardVo notificationsReadPageGetMethod(int bno); // Since - 2019/03/28, Content - 해당 게시물 번호로 가져와 게시글 읽기2

	BoardVo notificationsEditPageGetMethod(int bno); // Since - 2019/03/28, Content - 해당 게시물 번호로 가져와 게시글 수정

	void notificationsEditPagePostMethod(BoardVo vo); // Since - 2019/03/28, Content - 공지사항 내용 수정

	void notificationsDeletePageGetMethod(int bno); // Since - 2019/03/28, Content - 공지사항 내용 삭제

}
