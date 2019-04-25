<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					${homePage_title} <small>출고 관리입니다.</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">작업 관리</a></li>
					<li><a href="#">출고 관리</a></li>
					<li class="active">글쓰기</li>
				</ol>
			</section>
		
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<form role="form" method="post">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">게시물 작성</h3>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<input type="hidden" value="release" name="type">
									<input type="hidden" value="${member.username}" name="writer">
									<div class="form-group">
										<label>출고일</label>
										<input name="out_day" type="text" class="form-control" placeholder="출고일 Enter ...">
									</div>
									<div class="form-group">
										<label>자재명</label>
										<input name="content" type="text" class="form-control" placeholder="자재명 Enter ...">
									</div>
									<div class="form-group">
										<label>갯수</label>
										<input name="counting" type="text" class="form-control" placeholder="갯수 Enter ...">
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