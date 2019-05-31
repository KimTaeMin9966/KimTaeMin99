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
					<li class="active">출고 관리</li>
				</ol>
			</section>
			
			<script type="text/javascript">
				var message = '${error}';
				if (message != null && message != '') {
					alert(message);
				}
			</script>
			
			<c:remove var="error"/>
			
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">
									출고 관리
									<a href="/working/releaseWrite" type="button" class="btn btn-default">출고 관리 글 쓰기</a>
								</h3>
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
							<!-- /.box-header -->
							<div class="box-body table-responsive no-padding">
								<table class="table table-hover">
									<thead>
										<tr>
											<th style="width: 6%">글번호</th>
											<th style="width: 5.5%">작성자</th>
											<th style="width: 6%">긴급도</th>
											<th style="width: 16%">출고일</th>
											<th style="width: 50%">재료명 / 갯수</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="release" items="${releases}">
										<tr>
											<td>${release.ono}</td>
											<td>${release.writer}</td>
											<td>${release.urgency}</td>
											<td>${release.delivery}</td>
											<td>${release.content}</td>
										</tr>
									</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>글번호</th>
											<th>작성자</th>
											<th>긴급도</th>
											<th>출고일</th>
											<th>재료명 / 갯수</th>
										</tr>
									</tfoot>
								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
<%@ include file="../include/footer.jsp"%>