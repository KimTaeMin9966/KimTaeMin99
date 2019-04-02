package net.koreate.dao;

import java.util.List;
import java.util.Map;

import net.koreate.vo.BoardVo;
import net.koreate.vo.CommentsVo;
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

	void writeCommentSubmitPostMethod(CommentsVo vo); // Since - 2019/04/02, Content - 덧글 작성 요청

	List<CommentsVo> commentsReadPageGetMethod(int bno); // Since - 2019/04/02, Content - 해당 게시물 번호로 가져와 덧글 목록 가져오기

	void writeCommentEditPostMethod(CommentsVo vo); // Since - 2019/04/02, Content - 덧글 수정 요청

	CommentsVo CommentEditGetMethod(int cno); // Since - 2019/04/02, Content - 덧글 수정창 요청

}
