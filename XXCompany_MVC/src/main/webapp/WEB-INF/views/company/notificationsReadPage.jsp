<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					(주)태성전자 <small>공지 사항입니다.</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">작업량</a></li>
					<li><a href="#">공지사항</a></li>
					<li class="active">${notification.bno}번 게시물</li>
				</ol>
			</section>
			
			<!-- Sample -->
			<script charset="utf-8" src="${pageContext.request.contextPath}/resources/dist/js/Sample.js?version=1"></script>
			
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<form role="form" method="post" action="/company/writeSubmit">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">게시물 읽기</h3>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<div class="form-group">
										<label>제목</label>
										<input name="title" type="text" class="form-control" value="${notification.title}" readonly>
									</div>
									<div class="form-group">
										<label>내용</label>
										<textarea name="content" class="form-control" rows="3" readonly>${notification.content}</textarea>
									</div>
								</div>
								<!-- /.box-body -->
								<div class="box-footer">
									<button type="button" onclick="location.href='/company/notifications?type=notification'" class="btn btn-default">목록으로 가기</button>
									<button type="button" onclick="location.href='/company/notificationsEditPage?type=notification&bno=${notification.bno}'" class="btn btn-warning">게시글 수정</button>
									<button type="button" onclick="location.href='/company/notificationsDeletePage?type=notification&bno=${notification.bno}'" class="btn btn-danger">게시글 삭제</button>
								</div>
							</div>
						</form>
						<ul class="timeline">
						    <!-- timeline time label -->
						    <li class="time-label">
						        <span class="bg-red">
						            10 Feb. 2014
						        </span>
						    </li>
						    <!-- /.timeline-label -->
						
						    <!-- timeline item -->
						    <li>
						        <!-- timeline icon -->
						        <i class="fa fa-envelope bg-blue"></i>
						        <div class="timeline-item">
						            <span class="time"><i class="fa fa-clock-o"></i> 12:05</span>
						
						            <h3 class="timeline-header"><a target="_blank" href="/member/profiles?username=${notification.writer}">${notification.writer}</a> 님의 프로필</h3>
						
						            <div class="timeline-body">
						                ...
						                Content goes here
						            </div>
						
						            <div class="timeline-footer">
						                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modal-info">
											댓글 수정
										</button>
						            </div>
						        </div>
						    </li>
						    <!-- END timeline item -->
						</ul>
					</div>
				</div>
				<div class="modal modal-info fade" id="modal-info">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">×</span></button>
								<h4 class="modal-title">댓들 수정</h4>
							</div>
							<div class="modal-body">
								<p>One fine body…</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-outline">Save changes</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
					<!-- /.modal-dialog -->
				</div>
			</section>
		</div>
<%@ include file="../include/footer.jsp"%>