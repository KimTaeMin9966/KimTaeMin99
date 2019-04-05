<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>(주)태성전자</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	
    <link rel="shortcut icon" href="/resources/dist/img/favicon.ico">
    
	<!-- jQuery 3 -->
	<script charset="utf-8" src="/resources/bower_components/jquery/dist/jquery.min.js?version=2"></script>
	<!-- Bootstrap 3.3.7 -->
	<script charset="utf-8" src="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js?version=2"></script>
	<!-- FastClick -->
	<script charset="utf-8" src="/resources/bower_components/fastclick/lib/fastclick.js?version=2"></script>
	<!-- AdminLTE App -->
	<script charset="utf-8" src="/resources/dist/js/adminlte.min.js?version=2"></script>
	<!-- Sparkline -->
	<script charset="utf-8" src="/resources/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js?version=2"></script>
	<!-- jvectormap  -->
	<script charset="utf-8" src="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js?version=2"></script>
	<script charset="utf-8" src="/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js?version=2"></script>
	<!-- SlimScroll -->
	<script charset="utf-8" src="/resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js?version=2"></script>
	<!-- AdminLTE for demo purposes -->
	<script charset="utf-8" src="/resources/dist/js/demo.js?version=2"></script>
	
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css?version=2">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="/resources/bower_components/font-awesome/css/font-awesome.min.css?version=2">
	<!-- Ionicons -->
	<link rel="stylesheet" href="/resources/bower_components/Ionicons/css/ionicons.min.css?version=2">
	<!-- jvectormap -->
	<link rel="stylesheet" href="/resources/bower_components/jvectormap/jquery-jvectormap.css?version=2">
	<!-- Theme style -->
	<link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css?version=2">
	<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="/resources/dist/css/skins/_all-skins.min.css?version=2">
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	<!-- Google Font -->
	<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<header class="main-header">
			<!-- Logo -->
			<a href="/" class="logo"><!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>태</b>성전자</span><!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>(주)태</b>성전자<span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
					<span class="sr-only">Toggle navigation</span>
				</a>
				<!-- Navbar Right Menu -->
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->
						<li class="dropdown messages-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="fa fa-envelope-o"></i><span class="label label-success">4</span>
							</a>
							<ul class="dropdown-menu">
								<li class="header">You have 4 messages</li>
								<li><!-- inner menu: contains the actual data -->
									<ul class="menu">
										<li><!-- start message -->
											<a href="#">
												<div class="pull-left">
													<img src="/resources/dist/img/user2-160x160.jpg" class="img-circle"alt="User Image">
												</div>
												<h4>Support Team <small><i class="fa fa-clock-o"></i> 5 mins</small></h4>
												<p>Why not buy a new awesome theme?</p>
											</a>
										</li><!-- end message -->
										<li>
											<a href="#">
												<div class="pull-left">
													<img src="/resources/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
												</div>
												<h4>AdminLTE Design Team <small><i class="fa fa-clock-o"></i> 2 hours</small></h4>
												<p>Why not buy a new awesome theme?</p>
											</a>
										</li>
										<li>
											<a href="#">
												<div class="pull-left">
													<img src="/resources/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
												</div>
												<h4>Developers <small><i class="fa fa-clock-o"></i> Today</small> </h4>
												<p>Why not buy a new awesome theme?</p>
											</a>
										</li>
										<li>
											<a href="#">
												<div class="pull-left">
													<img src="/resources/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
												</div>
												<h4>Sales Department <small><i class="fa fa-clock-o"></i> Yesterday</small></h4>
												<p>Why not buy a new awesome theme?</p>
											</a>
										</li>
										<li>
											<a href="#">
												<div class="pull-left">
													<img src="/resources/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
												</div>
												<h4>Reviewers <small><i class="fa fa-clock-o"></i> 2 days</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
											</a>
										</li>
									</ul>
								</li>
								<li class="footer"><a href="#">See All Messages</a></li>
							</ul>
						</li>
						<!-- Notifications: style can be found in dropdown.less -->
						<li class="dropdown notifications-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="fa fa-bell-o"></i>
								<span class="label label-warning">10</span>
							</a>
							<ul class="dropdown-menu">
								<li class="header">You have 10 notifications</li>
								<li><!-- inner menu: contains the actual data -->
									<ul class="menu">
										<li><a href="#"><i class="fa fa-users text-aqua"></i> 5 new members joined today</a></li>
										<li>
											<a href="#">
												<i class="fa fa-warning text-yellow"></i>
												 Very long description here that may not fit into the page and may cause design problems
											</a>
										</li>
										<li><a href="#"><i class="fa fa-users text-red"></i> 5 new members joined </a></li>
										<li><a href="#"><i class="fa fa-shopping-cart text-green"></i> 25 sales made </a></li>
										<li><a href="#"><i class="fa fa-user text-red"></i> You changed your username</a></li>
									</ul>
								</li>
								<li class="footer"><a href="#">View all</a></li>
							</ul>
						</li>
						<!-- Tasks: style can be found in dropdown.less -->
						<li class="dropdown tasks-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="fa fa-flag-o"></i><span class="label label-danger">9</span>
							</a>
							<ul class="dropdown-menu">
								<li class="header">You have 9 tasks</li>
								<li><!-- inner menu: contains the actual data -->
									<ul class="menu">
										<li><!-- Task item -->
											<a href="#">
												<h3>Design some buttons <small class="pull-right">20%</small></h3>
												<div class="progress xs">
													<div class="progress-bar progress-bar-aqua" style="width: 20%"
														role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">20% Complete</span>
													</div>
												</div>
											</a>
										</li><!-- end task item -->
										<li><!-- Task item -->
											<a href="#">
												<h3>Create a nice theme <small class="pull-right">40%</small></h3>
												<div class="progress xs">
													<div class="progress-bar progress-bar-green" style="width: 40%"
														role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">40% Complete</span>
													</div>
												</div>
											</a>
										</li><!-- end task item -->
										<li><!-- Task item -->
											<a href="#">
												<h3>Some task I need to do <small class="pull-right">60%</small></h3>
												<div class="progress xs">
													<div class="progress-bar progress-bar-red" style="width: 60%"
														role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">60% Complete</span>
													</div>
												</div>
											</a>
										</li><!-- end task item -->
										<li><!-- Task item -->
											<a href="#">
												<h3>Make beautiful transitions <small class="pull-right">80%</small></h3>
												<div class="progress xs">
													<div class="progress-bar progress-bar-yellow" style="width: 80%"
														role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">80% Complete</span>
													</div>
												</div>
											</a>
										</li><!-- end task item -->
									</ul>
								</li>
								<li class="footer"><a href="#">View all tasks</a></li>
							</ul>
						</li>
						<!-- User Account: style can be found in dropdown.less -->
				<c:choose>
					<c:when test="${!empty member}">
						<li class="dropdown user user-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="/resources/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
								<span class="hidden-xs">[${member.auth}] ${member.username}</span>
							</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header">
									<img src="/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
									<p>[${member.auth}] ${member.username} <small>Member since <fmt:formatDate value="${member.regdate}"  pattern="yyyy-MM-dd HH:mm" /></small></p>
								</li>
								<!-- Menu Body -->
								<li class="user-body">
									<div class="row">
								<c:choose>
									<c:when test="${member.username eq '김태민'}">
										<div class="col-xs-4 text-center"><a href="/company/board">총 작업량</a></div>
										<div class="col-xs-4 text-center"><a href="/company/write">글 작성</a></div>
										<div class="col-xs-4 text-center"><a href="/company/board?type=notification">공지사항</a></div>	
									</c:when>
									<c:otherwise>
										<div class="col-xs-4 text-center"><a href="/company/board">총 작업량</a></div>
										<div class="col-xs-4 text-center"><a href="/company/board?type=today">오늘 할 량</a></div>
										<div class="col-xs-4 text-center"><a href="/company/board?type=notification">공지사항</a></div>
									</c:otherwise>
								</c:choose>
									</div><!-- /.row -->
								</li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left"><a href="/member/profiles?username=${member.username}" class="btn btn-default btn-flat">Profile</a></div>
									<div class="pull-right"><a href="/member/logout" class="btn btn-default btn-flat">Sign out</a></div>
								</li>
							</ul>
						</li>
					</c:when>
					<c:otherwise>
						<li class="dropdown user user-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="/resources/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
								<span class="hidden-xs">로그인이 필요</span>
							</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header">
									<img src="/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
									<p>로그인이 필요한 서비스 입니다.</p>
								</li>
								<!-- Menu Body -->
								<li class="user-body">
									<div class="row">
										<div class="col-xs-4 text-center"><a>로그인이 필요</a></div>
										<div class="col-xs-4 text-center"><a>로그인이 필요</a></div>
										<div class="col-xs-4 text-center"><a>로그인이 필요</a></div>
									</div><!-- /.row -->
								</li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left"><a href="/member/register" class="btn btn-default btn-flat">Sign up</a></div>
									<div class="pull-right"><a href="/member/login" class="btn btn-default btn-flat">Sign in</a></div>
								</li>
							</ul>
						</li>
					</c:otherwise>
				</c:choose>
						<!-- Control Sidebar Toggle Button -->
						<li><a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
		<c:choose>
			<c:when test="${!empty member}">
				<div class="user-panel">
					<div class="pull-left image">
						<img src="/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
					</div>
					<div class="pull-left info">
						<p>[${member.auth}] ${member.username}</p>
						<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="user-panel">
					<div class="pull-left image">
						<img src="/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
					</div>
					<div class="pull-left info">
						<p>로그인 필요</p>
						<a href="#"><i class="fa fa-circle text-warning"></i> Offline</a>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
				<!-- search form -->
				<form action="#" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="q" class="form-control" placeholder="Search...">
						<span class="input-group-btn">
							<button type="submit" name="search" id="search-btn" class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
				<!-- /.search form -->
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu" data-widget="tree">
					<li class="header">MAIN NAVIGATION</li>
					<li class="active treeview menu-open">
						<a>
							<i class="fa fa-laptop"></i>
							<span>작업량</span>
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="/company/board"><i class="fa fa-circle-o"></i> 전체 작업량 보러가기</a></li>
							<li><a href="/company/board?type=today"><i class="fa fa-circle-o"></i> 오늘 할당량 보러가기</a></li>
							<li><a href="/company/board?type=notification"><i class="fa fa-circle-o"></i> 공지사항 보러가기</a></li>
						</ul>
					</li>
				<c:if test="${member.auth eq '사장님' or member.auth eq '웹관리자' or member.auth eq '관계자'}">
					<li>
						<a href="/management/home">
							<i class="fa fa-users"></i>
							<span>회원 관리</span>
						</a>
					</li>
				</c:if>
					<li>
						<a href="pages/widgets.html"><i class="fa fa-th"></i>
							<span>Widgets</span>
								<span class="pull-right-container"><small class="label pull-right bg-green">new</small>
							</span>
						</a>
					</li>
					<li class="treeview">
						<a href="#">
							<i class="fa fa-pie-chart"></i>
							<span>Charts</span>
							<span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="pages/charts/chartjs.html"><i class="fa fa-circle-o"></i> ChartJS</a></li>
							<li><a href="pages/charts/morris.html"><i class="fa fa-circle-o"></i> Morris</a></li>
							<li><a href="pages/charts/flot.html"><i class="fa fa-circle-o"></i> Flot</a></li>
							<li><a href="pages/charts/inline.html"><i class="fa fa-circle-o"></i> Inline charts</a></li>
						</ul>
					</li>
					<li class="treeview">
						<a href="#">
							<i class="fa fa-laptop"></i>
							<span>UI Elements</span>
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="pages/UI/general.html"><i class="fa fa-circle-o"></i> General</a></li>
							<li><a href="pages/UI/icons.html"><i class="fa fa-circle-o"></i> Icons</a></li>
							<li><a href="pages/UI/buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>
							<li><a href="pages/UI/sliders.html"><i class="fa fa-circle-o"></i> Sliders</a></li>
							<li><a href="pages/UI/timeline.html"><i class="fa fa-circle-o"></i> Timeline</a></li>
							<li><a href="pages/UI/modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>
						</ul>
					</li>
					<li class="treeview">
						<a href="#">
							<i class="fa fa-edit"></i>
							<span>Forms</span>
							<span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="pages/forms/general.html"><i class="fa fa-circle-o"></i> General Elements</a></li>
							<li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Advanced Elements</a></li>
							<li><a href="pages/forms/editors.html"><i class="fa fa-circle-o"></i> Editors</a></li>
						</ul>
					</li>
					<li class="treeview">
						<a href="#">
							<i class="fa fa-table"></i>
							<span>Tables</span>
								<span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="pages/tables/simple.html"><i class="fa fa-circle-o"></i> Simple tables</a></li>
							<li><a href="pages/tables/data.html"><i class="fa fa-circle-o"></i> Data tables</a></li>
						</ul>
					</li>
					<li>
						<a href="pages/calendar.html">
							<i class="fa fa-calendar"></i>
							<span>Calendar</span>
							<span class="pull-right-container">
								<small class="label pull-right bg-red">3</small>
								<small class="label pull-right bg-blue">17</small>
							</span>
						</a>
					</li>
					<li>
						<a href="pages/mailbox/mailbox.html">
							<i class="fa fa-envelope"></i>
							<span>Mailbox</span>
							<span class="pull-right-container">
								<small class="label pull-right bg-yellow">12</small>
								<small class="label pull-right bg-green">16</small>
								<small class="label pull-right bg-red">5</small>
							</span>
						</a>
					</li>
					<li class="treeview">
						<a href="#">
							<i class="fa fa-folder"></i>
							<span>Examples</span>
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="pages/examples/invoice.html"><i class="fa fa-circle-o"></i> Invoice</a></li>
							<li><a href="pages/examples/profile.html"><i class="fa fa-circle-o"></i> Profile</a></li>
							<li><a href="pages/examples/login.html"><i class="fa fa-circle-o"></i> Login</a></li>
							<li><a href="pages/examples/register.html"><i class="fa fa-circle-o"></i> Register</a></li>
							<li><a href="pages/examples/lockscreen.html"><i class="fa fa-circle-o"></i> Lockscreen</a></li>
							<li><a href="pages/examples/404.html"><i class="fa fa-circle-o"></i> 404 Error</a></li>
							<li><a href="pages/examples/500.html"><i class="fa fa-circle-o"></i> 500 Error</a></li>
							<li><a href="pages/examples/blank.html"><i class="fa fa-circle-o"></i> Blank Page</a></li>
							<li><a href="pages/examples/pace.html"><i class="fa fa-circle-o"></i> Pace Page</a></li>
						</ul>
					</li>
					<li class="treeview">
						<a href="#">
							<i class="fa fa-share"></i>
							<span>Multilevel</span>
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
							<li class="treeview">
								<a href="#"><i class="fa fa-circle-o"></i> Level One
									<span class="pull-right-container">
										<i class="fa fa-angle-left pull-right"></i>
									</span>
								</a>
								<ul class="treeview-menu">
									<li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
									<li class="treeview">
										<a href="#">
											<i class="fa fa-circle-o"></i> Level Two
											<span class="pull-right-container">
												<i class="fa fa-angle-left pull-right"></i>
											</span>
										</a>
										<ul class="treeview-menu">
											<li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
											<li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
										</ul>
									</li>
								</ul>
							</li>
							<li>
								<a href="#"><i class="fa fa-circle-o"></i> Level One</a>
							</li>
						</ul>
					</li>
					<li><a href="//adminlte.io/docs"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
					<li class="header">LABELS</li>
					<li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
					<li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
					<li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>
		