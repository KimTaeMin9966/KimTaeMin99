<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					${homePage_title} <small>작업 지시서입니다.</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">작업 관리</a></li>
					<li class="active">출고 관리</li>
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
								<h3 class="box-title">출고 관리</h3>
								<div class="box-tools">
									<ul class="pagination pagination-sm no-margin pull-right">
									<c:if test="${pageMaker.prev}">
										<li>
											<a href="/working/release${pageMaker.makeQuery(pageMaker.startPage - 1)}">&laquo;</a>
										</li>
									</c:if>
									<c:forEach var="i" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
										<li <c:out value="${pageMaker.cri.page == i ?'class=active':''}"/>>
											<a href="/working/release${pageMaker.makeQuery(i)}">${i}</a>
										</li>
									</c:forEach>
									<c:if test="${pageMaker.next}">
										<li>
											<a href="/working/release${pageMaker.makeQuery(pageMaker.endPage + 1)}">&raquo;</a>
										</li>
									</c:if>
									</ul>
								</div>
							</div>
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
<%@ include file="../include/footer.jsp"%>