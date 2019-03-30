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
					<li class="active">공지사항</li>
				</ol>
			</section>
		
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<form role="form" method="post" action="/company/writeSubmit">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">게시물 작성</h3>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
										<div class="form-group">
											<label>타입</label>
											<select name="types" class="form-control">
												<option>---</option>
												<option value="notification">공지</option>
												<option value="">잡담</option>
												<option value="">오늘 할일</option>
											</select>
										</div>
										<div class="form-group">
											<label>제목</label>
											<input name="title" type="text" class="form-control" placeholder="Enter ...">
										</div>
										<div class="form-group">
											<label>내용</label>
											<textarea name="content" class="form-control" rows="3" placeholder="Enter ..."></textarea>
										</div>
										<input type="hidden" value="${member.username}" name="writer">
								</div>
								<!-- /.box-body -->
								<div class="box-footer">
									<button type="reset" class="btn btn-default">다시쓰기</button>
									<button type="submit" class="btn btn-info pull-right">게시글 작성</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</section>
		</div>
<%@ include file="../include/footer.jsp"%>