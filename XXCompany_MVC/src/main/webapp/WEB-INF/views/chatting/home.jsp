<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>${homePage_title} <small>채팅방에 오시걸 환영합니다.</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">채팅방</li>
				</ol>
			</section>
			
			<!-- chatting -->
			<script charset="utf-8" src="/resources/dist/js/chatting.js?version=2"></script>
			
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-lg-3"></div>
					<div class="col-lg-6">
						<!-- DIRECT CHAT -->
						<div class="box box-primary direct-chat direct-chat-info">
							<div class="box-header with-border">
								<h3 class="box-title">${homePage_title} <small>15초마다 새로 고침됩니다.</small></h3>
								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
									<button type="button" class="btn btn-box-tool" data-toggle="tooltip" title="New Message"
										data-widget="chat-pane-toggle" data-original-title="Contacts">
										<i class="fa fa-comments"></i>
									</button>
									<button type="button" class="btn btn-box-tool" data-widget="remove">
										<i class="fa fa-times"></i>
									</button>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<!-- Conversations are loaded here -->
								<div id="scroll" class="direct-chat-messages">
						<c:forEach var="chatting" items="${chattings}">
							<c:choose>
								<c:when test="${chatting.writer eq member.username}">
									<!-- Message to the right -->
									<div class="direct-chat-msg right">
										<div class="direct-chat-info clearfix">
											<span class="direct-chat-name pull-right">${chatting.writer}</span>
											<span class="direct-chat-timestamp pull-left">
												<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${chatting.regdate}" />
											</span>
										</div>
										<!-- /.direct-chat-info -->
										<img class="direct-chat-img" src="/resources/dist/img/user3-128x128.jpg"
											alt="message user image">
										<!-- /.direct-chat-img -->
										<div class="direct-chat-text">
											${chatting.chat}
										</div>
										<!-- /.direct-chat-text -->
									</div>
									<!-- /.direct-chat-msg -->
								</c:when>
								<c:otherwise>
									<!-- Message. Default to the left -->
									<div class="direct-chat-msg">
										<div class="direct-chat-info clearfix">
											<span class="direct-chat-name pull-left">${chatting.writer}</span>
											<span class="direct-chat-timestamp pull-right">
												<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${chatting.regdate}" />
											</span>
										</div>
										<!-- /.direct-chat-info -->
										<img class="direct-chat-img" src="/resources/dist/img/user1-128x128.jpg"
											alt="message user image">
										<!-- /.direct-chat-img -->
										<div class="direct-chat-text">
											${chatting.chat}
										</div>
										<!-- /.direct-chat-text -->
									</div>
									<!-- /.direct-chat-msg -->
								</c:otherwise>
							</c:choose>
						</c:forEach>
								</div>
								<!--/.direct-chat-messages-->
								
								<!-- Contacts are loaded here -->
								<div class="direct-chat-contacts">
									<ul class="contacts-list">
									<c:forEach var="chatting" items="${chattings}">
										<li>
											<a>
												<img class="contacts-list-img" src="/resources/dist/img/user1-128x128.jpg"
													alt="User Image">
												<div class="contacts-list-info">
													<span class="contacts-list-name"> ${chatting.writer}
														<small class="contacts-list-date pull-right">
															<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${chatting.regdate}" />
														</small>
													</span>
													<span class="contacts-list-msg">${chatting.chat}</span>
												</div> <!-- /.contacts-list-info -->
											</a>
										</li>
										<!-- End Contact Item -->
									</c:forEach>
									</ul>
									<!-- /.contatcts-list -->
								</div>
								<!-- /.direct-chat-pane -->
							</div>
							<!-- /.box-body -->
							<div class="box-footer">
								<div class="input-group">
									<input type="hidden" name="writer" class="form-control" value="${member.username}">
									<input id="chatting" type="text" name="message" placeholder="Type Message ..." class="form-control">
									<span class="input-group-btn">
										<button type="button" onclick="ChattingSend('/chatting/send', 'post');"
											class="btn btn-warning btn-flat">Send</button>
									</span>
								</div>
							</div>
							<!-- /.box-footer-->
						</div>
						<!--/.direct-chat -->
					</div>
					<div class="col-lg-3"></div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<script type="text/javascript" id="chatting_loading_script">
			$(document).ready(function() {
				var height = ($('#scroll > .direct-chat-msg').height() + 10) * ($('#scroll > .direct-chat-msg').length + 2);
				$('#scroll').stop().animate({scrollTop: height});
				$('#chatting').focus();
				setInterval(function() {
					$('.box-body').load('/chatting/home .direct-chat-messages', function() {
						height = ($('#scroll > .direct-chat-msg').height() + 10) * ($('#scroll > .direct-chat-msg').length + 2);
						$('#scroll').scrollTop(height);
						$('#chatting').focus();
					});
				}, 15000);
			});
		</script>
<%@ include file="../include/footer.jsp"%>