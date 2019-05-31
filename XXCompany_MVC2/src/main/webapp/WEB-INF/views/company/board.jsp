<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					${title} <small>게시판입니다.</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">작업량</a></li>
					<li class="active">게시판</li>
				</ol>
			</section>
		
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">
									게시판
							<c:choose>
								<c:when test="${type eq 'notification'}">
									<button type="button" onclick="location.href='/company/board'" class="btn btn-default">전체글 보기</button>
								</c:when>
								<c:when test="${type eq 'today'}">
									<button type="button" onclick="location.href='/company/board'" class="btn btn-default">전체글 보기</button>
								</c:when>
							</c:choose>
								</h3>
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
										<th>제목</th>
										<th>작성자</th>
										<th>작성일자</th>
										<th>조회수</th>
									</tr>
								<c:forEach var="board" items="${boards}">
									<tr>
										<td>${board.bno}</td>
										<td>
											<a href="/company/boardRead${pageMaker.makeQuery(pageMaker.cri.page)}&bno=${board.bno}">
												${board.title} [${board.commentCnt}]
											</a>
										</td>
										<td>${board.writer}</td>
										<td>
											<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${board.regdate}" />
										</td>
										<td>
											<span class="badge bg-red">${board.viewcnt}</span>
										</td>
									</tr>
								</c:forEach>
								</table>
							</div>
							<!-- /.box-body -->
							<div class="box-footer clearfix">
							<c:if test="${!empty member}">
								<button type="button" onclick="location.href='/company/write'" class="btn btn-default">게시글 작성</button>
							</c:if>
								<ul class="pagination pagination-sm no-margin pull-right">
						<c:choose>
							<c:when test="${!empty type}">
								<c:if test="${pageMaker.prev}">
									<li>
										<a href="/company/board${pageMaker.makeQuery(pageMaker.startPage - 1)}&type=${type}">&laquo;</a>
									</li>
								</c:if>
								<c:forEach var="i" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
									<li <c:out value="${pageMaker.cri.page == i ?'class=active':''}"/>>
										<a href="/company/board${pageMaker.makeQuery(i)}&type=${type}">${i}</a>
									</li>
								</c:forEach>
								<c:if test="${pageMaker.next}">
									<li>
										<a href="/company/board${pageMaker.makeQuery(pageMaker.endPage + 1)}&type=${type}">&raquo;</a>
									</li>
								</c:if>
							</c:when>
							<c:otherwise>
								<c:if test="${pageMaker.prev}">
									<li>
										<a href="/company/board${pageMaker.makeQuery(pageMaker.startPage - 1)}">&laquo;</a>
									</li>
								</c:if>
								<c:forEach var="i" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
									<li <c:out value="${pageMaker.cri.page == i ?'class=active':''}"/>>
										<a href="/company/board${pageMaker.makeQuery(i)}">${i}</a>
									</li>
								</c:forEach>
								<c:if test="${pageMaker.next}">
									<li>
										<a href="/company/board${pageMaker.makeQuery(pageMaker.endPage + 1)}">&raquo;</a>
									</li>
								</c:if>
							</c:otherwise>
						</c:choose>
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