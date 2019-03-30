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
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">공지사항</h3>
								<div class="box-tools">
									<div class="input-group input-group-sm" style="width: 150px;">
										<input type="text" name="table_search" class="form-control pull-right" placeholder="Search">
										<div class="input-group-btn">
											<button type="submit" class="btn btn-default">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body table-responsive no-padding">
								<table class="table table-hover">
									<tr>
										<th>ID</th>
										<th>타입</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일자</th>
										<th>조회수</th>
									</tr>
								<c:forEach var="notification" items="${notifications}">
									<tr>
										<td>${notification.bno}</td>
										<td>${notification.types}</td>
										<td>
											<a href="/company/notifications/read${pageMaker.makeQuery(pageMaker.cri.page)}&bno=${notification.bno}&type=notification">
												${notification.title} [${notification.commentCnt}]
											</a>
										</td>
										<td>${boardVo.writer}</td>
										<td>
											<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${notification.regdate}" />
										</td>
										<td>
											<span class="badge bg-red">${notification.viewcnt}</span>
										</td>
									</tr>
								</c:forEach>
								</table>
							</div>
							<!-- /.box-body -->
							<div class="box-footer clearfix">
							<c:if test="${member.username eq '김태민'}">
								<button type="button" onclick="location.href='/company/write'" class="btn btn-default">공지글 작성</button>
							</c:if>
								<ul class="pagination pagination-sm no-margin pull-right">
								<c:if test="${pageMaker.prev}">
									<li>
										<a href="/company/notifications${pageMaker.makeQuery(pageMaker.startPage - 1)}&type=notification">&laquo;</a>
									</li>
								</c:if>
								<c:forEach var="i" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
									<li <c:out value="${pageMaker.cri.page == i ?'class=active':''}"/>>
										<a href="/company/notifications${pageMaker.makeQuery(i)}&type=notification">${i}</a>
									</li>
								</c:forEach>
								<c:if test="${pageMaker.next}">
									<li>
										<a href="/company/notifications${pageMaker.makeQuery(pageMaker.endPage + 1)}&type=notification">&raquo;</a>
									</li>
								</c:if>
								</ul>
							</div>
							<!-- /.box -->
						</div>
						<!-- /.box -->
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
<%@ include file="../include/footer.jsp"%>