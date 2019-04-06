<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>400 Error Page</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">오류</a></li>
					<li class="active">400 error</li>
				</ol>
			</section>
			
			<!-- Main content -->
			<section class="content">
				<div class="error-page">
					<h2 class="headline text-red">400</h2>
					<div class="error-content">
						<h3><i class="fa fa-warning text-red"></i> Oh, no! There's no request for an address.</h3>
						<p>
							We will work on fixing that right away. Meanwhile, you may
							<a href="javascript:history.go(-1);">return to dashboard</a> or try using the search form.
						</p>
						
						<form class="search-form">
							<div class="input-group">
								<input type="text" name="search" class="form-control" placeholder="Search">
								<div class="input-group-btn">
									<button type="submit" name="submit" class="btn btn-danger btn-flat">
										<i class="fa fa-search"></i>
									</button>
								</div>
							</div>
							<!-- /.input-group -->
						</form>
					</div>
				</div>
				<!-- /.error-page -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
<%@ include file="../include/footer.jsp"%>