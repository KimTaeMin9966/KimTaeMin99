<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					${homePage_title} <small>공지 사항입니다.</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">작업량</a></li>
					<li><a href="#">공지사항</a></li>
					<li class="active">${board.bno}번 게시물</li>
				</ol>
			</section>
			
			<!-- Sample -->
			<script charset="utf-8" src="/resources/dist/js/ajax.js?version=3"></script>
			
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-warning">
							<div class="box-header with-border">
								<h3 class="box-title">게시물 읽기</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<div class="form-group">
									<label>제목</label>
									<input name="title" type="text" class="form-control" value="${board.title}" readonly>
								</div>
								<div class="form-group">
									<label>내용</label>
									<textarea name="content" class="form-control" rows="3" readonly>${board.content}</textarea>
								</div>
							</div>
							<!-- /.box-body -->
							<div class="box-footer">
								<button type="button" onclick="BoardPageReturn('/company/board', '${type}')" class="btn btn-default">목록으로 가기</button>
							<c:if test="${board.writer eq member.username}">
								<button type="button" onclick="BoardPageEdit('/company/boardEditPage?bno=${board.bno}', '${type}')" class="btn btn-warning">게시글 수정</button>
								<button type="button" onclick="BoardPageDelete('/company/boardDeletePage?&bno=${board.bno}', 'post', '${type}')" class="btn btn-danger">게시글 삭제</button>
							</c:if>
							</div>
						</div>
						<div class="box box-info">
							<form role="form">
								<input type="hidden" id="CommentBno" value="${board.bno}">
								<div class="box-header with-border">
									<h3 class="box-title">덧글 작성</h3>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<div class="form-group">
										<label>작성자</label>
										<input type="text" id="CommentWriter" readonly value="${member.username}" class="form-control">
									</div>
									<div class="form-group">
										<label>내용</label>
										<input id="CommentComments" type="text" class="form-control">
									</div>
								</div>
								<!-- /.box-body -->
								<div class="box-footer">
									<button type="button" onclick="CommentSubmit('/company/writeComment', 'post');" class="btn btn-success">덧글 작성</button>
								</div>
							</form>
						</div>
						<ul class="timeline">
						<c:forEach var="COMMENT" items="${comments}">
						    <!-- timeline item -->
						    <li>
						        <!-- timeline icon -->
						        <i class="fa fa-commenting-o bg-blue"></i>
						        <div class="timeline-item">
						            <span class="time"><i class="fa fa-clock-o"></i> <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${COMMENT.updatedate}"/></span>
						            <h3 class="timeline-header"><a target="_blank" title="클릭하시면 해당 프로필을 보실수 있습니다." href="/member/profiles?username=${COMMENT.writer}">${COMMENT.writer}</a> 님의 덧글</h3>
						            <div class="timeline-body">
						               ${COMMENT.comments}
						            </div>
						            <div class="timeline-footer">
						            <c:if test="${COMMENT.writer eq board.writer}">
						                <button type="button" onclick="CommentGet('/company/CommentEdit', 'get', '${COMMENT.cno}');" class="btn btn-info" data-toggle="modal" data-target="#modal-info">
											댓글 수정
										</button>
									</c:if>
						            </div>
						        </div>
						    </li>
						    <!-- END timeline item -->
						</c:forEach>
						</ul>
					</div>
				</div>
				<div class="modal modal-info fade" id="modal-info">
					<div class="modal-dialog">
						<div class="modal-content">
							<form role="form">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">×</span></button>
									<h4 class="modal-title">댓들 수정</h4>
								</div>
								<div class="modal-body">
									<input type="hidden" id="modelBno">
									<input type="hidden" id="modelCno">
									<input type="hidden" id="modelWriter">
									<input type="text" style="color: black;" id="modelComments">
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
									<button type="button" onclick="CommentEdit('/company/CommentEdit','post')" class="btn btn-outline">Save changes</button>
								</div>
							</form>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
			</section>
		</div>
<%@ include file="../include/footer.jsp"%>