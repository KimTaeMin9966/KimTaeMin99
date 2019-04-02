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
					<li><a href="#">Examples</a></li>
					<li class="active">User profile</li>
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
								<h3 class="profile-username text-center">${member.username}</h3>
								<p class="text-muted text-center"><fmt:formatDate value="${member.regdate}" pattern="yyyy-MM-dd HH:mm" /></p>
								<ul class="list-group list-group-unbordered">
									<li class="list-group-item"><b>Followers</b><a class="pull-right">1,322</a></li>
									<li class="list-group-item"><b>Following</b><a class="pull-right">543</a></li>
									<li class="list-group-item"><b>Friends</b><a class="pull-right">13,287</a></li>
								</ul>
								<a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>
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