<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp"%>
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

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-lg-3"></div>
			<div class="col-lg-6">
				<!-- DIRECT CHAT -->
				<div class="box box-warning direct-chat direct-chat-warning">
					<div class="box-header with-border">
						<h3 class="box-title">${homePage_title}</h3>
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool" data-toggle="tooltip" title="" data-widget="chat-pane-toggle" data-original-title="Contacts">
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
						<div class="direct-chat-messages">
							<!-- Message. Default to the left -->
							<div class="direct-chat-msg">
								<div class="direct-chat-info clearfix">
									<span class="direct-chat-name pull-left">Alexander Pierce</span>
									<span class="direct-chat-timestamp pull-right">23 Jan 2:00 pm</span>
								</div>
								<!-- /.direct-chat-info -->
								<img class="direct-chat-img" src="/resources/dist/img/user1-128x128.jpg" alt="message user image">
								<!-- /.direct-chat-img -->
								<div class="direct-chat-text">
									Is this template really for free? That's unbelievable!
								</div>
								<!-- /.direct-chat-text -->
							</div>
							<!-- /.direct-chat-msg -->

							<!-- Message to the right -->
							<div class="direct-chat-msg right">
								<div class="direct-chat-info clearfix">
									<span class="direct-chat-name pull-right">Sarah Bullock</span>
									<span class="direct-chat-timestamp pull-left">23 Jan 2:05 pm</span>
								</div>
								<!-- /.direct-chat-info -->
								<img class="direct-chat-img" src="/resources/dist/img/user3-128x128.jpg" alt="message user image">
								<!-- /.direct-chat-img -->
								<div class="direct-chat-text">You better believe it!</div>
								<!-- /.direct-chat-text -->
							</div>
							<!-- /.direct-chat-msg -->

							<!-- Message. Default to the left -->
							<div class="direct-chat-msg">
								<div class="direct-chat-info clearfix">
									<span class="direct-chat-name pull-left">Alexander Pierce</span>
									<span class="direct-chat-timestamp pull-right">23 Jan 5:37 pm</span>
								</div>
								<!-- /.direct-chat-info -->
								<img class="direct-chat-img" src="/resources/dist/img/user1-128x128.jpg" alt="message user image">
								<!-- /.direct-chat-img -->
								<div class="direct-chat-text">
									Working with AdminLTE on a great new app! Wanna join?
								</div>
								<!-- /.direct-chat-text -->
							</div>
							<!-- /.direct-chat-msg -->

							<!-- Message to the right -->
							<div class="direct-chat-msg right">
								<div class="direct-chat-info clearfix">
									<span class="direct-chat-name pull-right">Sarah Bullock</span>
									<span class="direct-chat-timestamp pull-left">23 Jan 6:10 pm</span>
								</div>
								<!-- /.direct-chat-info -->
								<img class="direct-chat-img" src="/resources/dist/img/user3-128x128.jpg" alt="message user image">
								<!-- /.direct-chat-img -->
								<div class="direct-chat-text">I would love to.</div>
								<!-- /.direct-chat-text -->
							</div>
							<!-- /.direct-chat-msg -->
						</div>
						<!--/.direct-chat-messages-->

						<!-- Contacts are loaded here -->
						<div class="direct-chat-contacts">
							<ul class="contacts-list">
								<li>
									<a href="#">
										<img class="contacts-list-img" src="/resources/dist/img/user1-128x128.jpg" alt="User Image">
										<div class="contacts-list-info">
											<span class="contacts-list-name"> Count Dracula
												<small class="contacts-list-date pull-right">2/28/2015</small>
											</span>
											<span class="contacts-list-msg">How have you been? I was...</span>
										</div> <!-- /.contacts-list-info -->
									</a>
								</li>
								<!-- End Contact Item -->
								<li>
									<a href="#">
										<img class="contacts-list-img" src="/resources/dist/img/user1-128x128.jpg" alt="User Image">
										<div class="contacts-list-info">
											<span class="contacts-list-name"> Count Dracula
												<small class="contacts-list-date pull-right">2/28/2015</small>
											</span>
											<span class="contacts-list-msg">How have you been? I was...</span>
										</div> <!-- /.contacts-list-info -->
									</a>
								</li>
								<!-- End Contact Item -->
								<li>
									<a href="#">
										<img class="contacts-list-img" src="/resources/dist/img/user1-128x128.jpg" alt="User Image">
										<div class="contacts-list-info">
											<span class="contacts-list-name"> Count Dracula
												<small class="contacts-list-date pull-right">2/28/2015</small>
											</span>
											<span class="contacts-list-msg">How have you been? I was...</span>
										</div> <!-- /.contacts-list-info -->
									</a>
								</li>
								<!-- End Contact Item -->
								<li>
									<a href="#">
										<img class="contacts-list-img" src="/resources/dist/img/user1-128x128.jpg" alt="User Image">
										<div class="contacts-list-info">
											<span class="contacts-list-name"> Count Dracula
												<small class="contacts-list-date pull-right">2/28/2015</small>
											</span>
											<span class="contacts-list-msg">How have you been? I was...</span>
										</div> <!-- /.contacts-list-info -->
									</a>
								</li>
								<!-- End Contact Item -->
								<li>
									<a href="#">
										<img class="contacts-list-img" src="/resources/dist/img/user1-128x128.jpg" alt="User Image">
										<div class="contacts-list-info">
											<span class="contacts-list-name"> Count Dracula
												<small class="contacts-list-date pull-right">2/28/2015</small>
											</span>
											<span class="contacts-list-msg">How have you been? I was...</span>
										</div> <!-- /.contacts-list-info -->
									</a>
								</li>
								<!-- End Contact Item -->
							</ul>
							<!-- /.contatcts-list -->
						</div>
						<!-- /.direct-chat-pane -->
					</div>
					<!-- /.box-body -->
					<div class="box-footer">
						<form action="#" method="post">
							<div class="input-group">
								<input type="text" name="message" placeholder="Type Message ..." class="form-control">
								<span class="input-group-btn">
									<button type="button" class="btn btn-warning btn-flat">Send</button>
								</span>
							</div>
						</form>
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
<%@ include file="include/footer.jsp"%>