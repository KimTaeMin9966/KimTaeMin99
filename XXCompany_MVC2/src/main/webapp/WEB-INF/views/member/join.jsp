<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>${title} | 회원가입</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	
    <link rel="shortcut icon" href="/resources/dist/img/favicon.ico">
    
	<!-- jQuery 3 -->
	<script charset="utf-8" src="/resources/bower_components/jquery/dist/jquery.min.js?version=2"></script>
	<!-- Bootstrap 3.3.7 -->
	<script charset="utf-8" src="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js?version=2"></script>
	<!-- iCheck -->
	<script charset="utf-8" src="/resources/plugins/iCheck/icheck.min.js?version=2"></script>
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css?version=2">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="/resources/bower_components/font-awesome/css/font-awesome.min.css?version=2">
	<!-- Ionicons -->
	<link rel="stylesheet" href="/resources/bower_components/Ionicons/css/ionicons.min.css?version=2">
	<!-- Theme style -->
	<link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css?version=2">
	<!-- iCheck -->
	<link rel="stylesheet" href="/resources/plugins/iCheck/square/blue.css?version=2">
	<script charset="utf-8" type="text/javascript" src="/resources/dist/js/join.js"></script>
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	<!-- Google Font -->
	<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition register-page">
	<div class="register-box">
		<div class="register-logo">
			<a href="/">${title}</a>
		</div>
		
		<div class="register-box-body">
			<p class="login-box-msg">Register a new membership</p>
			<form id="registerFROM" method="post">
				<input type="hidden" id="${_csrf.parameterName}" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<div class="form-group has-feedback">
					<input type="text" id="userid" name="userid" class="form-control" placeholder="id Enter...">
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
					<input type="button" id="dbCheck" class="btn btn-primary btn-block btn-flat" value="중복체크" />
					<div id="userid_result" class="form-control"></div>
				</div>
				<div class="form-group has-feedback">
					<button type="button" class="btn btn-info" data-toggle="modal" data-target="#modal-info">
						비밀번호 입력 예시
					</button>
				</div>
				<div class="form-group has-feedback">
					<input type="password" id="userpw" name="userpw" class="form-control" placeholder="Password Enter...">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					<div id="userpw_result" class="form-control"></div>
				</div>
				<div class="form-group has-feedback">
					<input type="password" id="userpw2" class="form-control" placeholder="Password Enter...">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					<div id="userpw2_result" class="form-control"></div>
				</div>
				<div class="form-group has-feedback">
					<input type="text" id="userName" name="userName" class="form-control" placeholder="userName Enter...">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					<div id="username_result" class="form-control"></div>
				</div>
				<div class="row">
					<div class="col-xs-4">
						<button id="CLICK" type="button" class="btn btn-primary btn-block btn-flat">Register</button>
					</div>
					<!-- /.col -->
				</div>
			</form>
			<!-- <div class="social-auth-links text-center">
				<p>- OR -</p>
				<a href="#" class="btn btn-block btn-social btn-facebook btn-flat">
					<i class="fa fa-facebook"></i> Sign up using Facebook
				</a>
				<a href="#" class="btn btn-block btn-social btn-google btn-flat">
					<i class="fa fa-google-plus"></i> Sign up using Google+
				</a>
			</div> -->

			<a href="/member/login" class="text-center">I already have a membership</a>
		</div>
		<!-- /.form-box -->
	</div>
	<!-- /.register-box -->
	
	<div class="modal modal-info fade" id="modal-info">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span></button>
					<h4 class="modal-title">비밀번호 입력 예시</h4>
				</div>
				<div class="modal-body">
					<p>대소문자와 숫자가 포함이 되어야됩니다.</p>
					<p>ex) Password12</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline pull-left" data-dismiss="modal">확인</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	
	<script>
		$(function() {
			var message = '${message}';
			
			if (message != null && message != '') { alert(message); }
			
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' /* optional */
			});
			
		});
	</script>
</body>
</html>
