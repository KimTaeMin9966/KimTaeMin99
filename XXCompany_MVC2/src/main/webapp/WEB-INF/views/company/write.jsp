<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					${title} <small>공지 사항입니다.</small>
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
						<form role="form" method="post" action="/company/write">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">게시물 작성</h3>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<input type="hidden" value="<security:authentication property="principal.username"/>" name="writer">
									<div class="form-group">
										<label>타입</label>
										<select name="types" class="form-control">
											<optgroup label="---">
												<option value="notification">공지</option>
												<option value="today">오늘 할일</option>
												<option value="">잡담</option>
											</optgroup>
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