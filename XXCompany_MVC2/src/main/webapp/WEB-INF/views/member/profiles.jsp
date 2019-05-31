<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>User Profile</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">profiles</a></li>
					<li class="active">[${profile.auth}] ${profile.username} profile</li>
				</ol>
			</section>
		
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-4">
						<!-- Profile Image -->
						<div class="box box-primary">
							<div class="box-body box-profile">
								<img class="profile-user-img img-responsive img-circle" src="/resources/dist/img/user4-128x128.jpg" alt="User profile picture">
								<h3 class="profile-username text-center">[${profile.auth}] ${profile.username}</h3>
								<p class="text-muted text-center"><fmt:formatDate value="${profile.regdate}" pattern="yyyy-MM-dd HH:mm" /></p>
								<ul class="list-group list-group-unbordered">
									<li class="list-group-item"><b>내가 작성한 게시글 수</b><a class="pull-right"><fmt:formatNumber value="${profile.boradConut}" pattern="#,###.##" /></a></li>
									<li class="list-group-item"><b>내가 작성한 덧글 수</b><a class="pull-right"><fmt:formatNumber value="${profile.commentConut}" pattern="#,###.##" /></a></li>
									<li class="list-group-item"><b>내가 작업한 총량</b><a class="pull-right"><fmt:formatNumber value="${profile.deliveryCount}" pattern="#,###.##" /></a></li>
								</ul>
								<a href="#" class="btn btn-primary btn-block"><b>메일 발송</b></a>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
					<!-- /.col -->
					<div class="col-md-4"></div>
				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
<%@ include file="../include/footer.jsp"%>