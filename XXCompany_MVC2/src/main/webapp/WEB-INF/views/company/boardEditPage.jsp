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
		
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<form role="form" method="post" action="/company/boardEditPage">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">게시물 읽기</h3>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<div class="form-group">
										<label>제목</label>
										<input name="title" type="text" class="form-control" value="${board.title}" >
									</div>
									<div class="form-group">
										<label>내용</label>
										<textarea name="content" class="form-control" rows="3" >${board.content}</textarea>
									</div>
									<input type="hidden" name="bno" value="${board.bno}">
								</div>
								<!-- /.box-body -->
								<div class="box-footer">
									<button type="submit" class="btn btn-default">게시물 수정</button>
									<button type="button" onclick="history.go(-1)" class="btn btn-warning">취소</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</section>
		</div>
<%@ include file="../include/footer.jsp"%>