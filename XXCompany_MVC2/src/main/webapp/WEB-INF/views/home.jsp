<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>${title} <small>홈페이지에 오시걸 환영합니다.</small></h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">${title}</li>
				</ol>
			</section>
			
			<script type="text/javascript">
				var message = '${error}';
				if (message != null && message != '') {
					alert(message);
				}
			</script>
			
			<%
				String error = (String) session.getAttribute("error");
				if (error != null) {
					session.removeAttribute("error");
				}
			%>
			
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">${title} <small>홈페이지에 오시걸 환영합니다.</small></h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body no-padding">
								
							</div>
							<!-- /.box-body -->
							<div class="box-footer">
								
							</div>
							<!-- /.box-footer -->
						</div>
						<!-- /.box -->
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
<%@ include file="include/footer.jsp" %>