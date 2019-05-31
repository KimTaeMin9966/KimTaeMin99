<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					${homePage_title} <small>관리홈페이지에 오시걸 환영합니다.</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">${homePage_title} 관리 페이지</li>
				</ol>
			</section>
		
			<!-- DataTables -->
			<link rel="stylesheet" href="/resources/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css?version=2">
			<!-- DataTables -->
			<script charset="utf-8" src="/resources/bower_components/datatables.net/js/jquery.dataTables.min.js?version=2"></script>
			<script charset="utf-8" src="/resources/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js?version=2"></script>
			
			<script charset="utf-8" src="/resources/dist/js/ManagementAjax.js?version=2"></script>
			
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">Data Table With Full Features</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="example1" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th style="width: 10%">권한</th>
											<th style="width: 15%">이름</th>
											<th style="width: 13%">입사일</th>
											<th style="width: 23%">오늘 작업량</th>
											<th style="width: 15%">기타</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="member" items="${members}">
										<tr>
											<td>
												<form role="form" id="authority_${member.userno}">
													<input type="hidden" id="userno" value="${member.userno}">
													<select class="form-control">
														<option <c:out value="${member.auth == '사장' ? 'selected' : ''}"/> value="사장">사장님</option>
														<option <c:out value="${member.auth == '관계자' ? 'selected' : ''}"/> value="관계자">관계자</option>
														<option <c:out value="${member.auth == '웹관리자' ? 'selected' : ''}"/> value="웹관리자">웹관리자</option>
														<option <c:out value="${member.auth == '직원' ? 'selected' : ''}"/> value="직원">직원</option>
														<option <c:out value="${member.auth == '부업' ? 'selected' : ''}"/> value="부업">부업</option>
													</select>
												</form>
											</td>
											<td>[${member.auth}] ${member.username}</td>
											<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${member.regdate}"/></td>
											<td>
												<div class="progress progress-xs progress-striped active">
													<div class="progress-bar progress-bar-success" style="width: 90%"></div>
												</div>
											</td>
											<td>
												<button onclick="authoritySave('/management/authoritySave', 'post', '${member.userno}')" class="btn btn-primary">권한저장</button>
												<button onclick="infoShow('/management/info?userID=${member.userno}', 'post')"  class="btn btn-danger" data-toggle="modal" data-target="#modal-danger">
													정보보기
												</button>
												<button onclick="infoDelete('/management/delete?userID=${member.userno}', 'post')" class="btn btn-primary">정보삭제</button>
											</td>
										</tr>
									</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>권한</th>
											<th>이름</th>
											<th>입사일</th>
											<th>오늘 작업량</th>
											<th>기타</th>
										</tr>
									</tfoot>
								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
				<div class="modal modal-danger fade" id="modal-danger">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title">회원 정보 보기</h4>
							</div>
							<div class="modal-body">
								<p>권한 : <label id="modelAuth"></label></p>
								<p>이름 : <label id="modelAsername"></label></p>
								<p>입사일 : <label id="modelJoindate"></label></p>
								<p>작업량 : <label id="modelWorkload"></label></p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<!-- page script -->
		<script>
			$(function() {
			    $('#example1').DataTable();
			});
		</script>
<%@ include file="../include/footer.jsp"%>