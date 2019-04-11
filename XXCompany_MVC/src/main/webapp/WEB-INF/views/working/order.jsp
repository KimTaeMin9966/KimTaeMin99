<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>작업 일지</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">작업 관리</a></li>
					<li class="active">작업 일지</li>
				</ol>
			</section>
			
			<!-- fullCalendar -->
			<link rel="stylesheet" href="/resources/bower_components/fullcalendar/dist/fullcalendar.min.css">
			<link rel="stylesheet" href="/resources/bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print">
			
			<!-- fullCalendar -->
			<script charset="utf-8" src="/resources/bower_components/moment/moment.js?version=2"></script>
			<script charset="utf-8" src="/resources/bower_components/fullcalendar/dist/fullcalendar.min.js?version=2"></script>
			
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-lg-2">
						<div class="box box-solid">
							<div class="box-header with-border">
								<h4 class="box-title">Draggable Events</h4>
							</div>
							<div class="box-body">
								<!-- the events -->
								<div id="external-events">
									<div class="external-event bg-green">Lunch</div>
									<div class="external-event bg-yellow">Go home</div>
									<div class="external-event bg-aqua">Do homework</div>
									<div class="external-event bg-light-blue">Work on UI design</div>
									<div class="external-event bg-red">Sleep tight</div>
									<div class="checkbox">
										<label for="drop-remove">
											<input type="checkbox" id="drop-remove">
											remove after drop
										</label>
									</div>
								</div>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /. box -->
					</div>
					<div class="col-lg-8">
						<div class="box box-primary">
							<div class="box-body no-padding">
								<!-- THE CALENDAR -->
								<div id="calendar"></div>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /. box -->
					</div>
					<!-- /.col -->
					<div class="col-lg-2">
						<div class="box box-solid">
							<div class="box-header with-border">
								<h3 class="box-title">Create Event</h3>
							</div>
							<div class="box-body">
								<div class="btn-group" style="width: 100%; margin-bottom: 10px;">
								<!--<button type="button" id="color-chooser-btn" class="btn btn-info btn-block dropdown-toggle" data-toggle="dropdown">Color <span class="caret"></span></button>-->
									<ul class="fc-color-picker" id="color-chooser">
										<li><a class="text-aqua" href="#"><i class="fa fa-square"></i></a></li>
										<li><a class="text-blue" href="#"><i class="fa fa-square"></i></a></li>
										<li><a class="text-light-blue" href="#"><i class="fa fa-square"></i></a></li>
										<li><a class="text-teal" href="#"><i class="fa fa-square"></i></a></li>
										<li><a class="text-yellow" href="#"><i class="fa fa-square"></i></a></li>
										<li><a class="text-orange" href="#"><i class="fa fa-square"></i></a></li>
										<li><a class="text-green" href="#"><i class="fa fa-square"></i></a></li>
										<li><a class="text-lime" href="#"><i class="fa fa-square"></i></a></li>
										<li><a class="text-red" href="#"><i class="fa fa-square"></i></a></li>
										<li><a class="text-purple" href="#"><i class="fa fa-square"></i></a></li>
										<li><a class="text-fuchsia" href="#"><i class="fa fa-square"></i></a></li>
										<li><a class="text-muted" href="#"><i class="fa fa-square"></i></a></li>
										<li><a class="text-navy" href="#"><i class="fa fa-square"></i></a></li>
									</ul>
								</div>
								<!-- /btn-group -->
								<div class="input-group">
									<input id="new-event" type="text" class="form-control" placeholder="Event Title">
									<div class="input-group-btn">
										<button id="add-new-event" type="button" class="btn btn-primary btn-flat">Add</button>
									</div>
									<!-- /btn-group -->
								</div>
								<!-- /input-group -->
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<!-- Page specific script -->
		<script charset="utf-8" src="/resources/dist/js/page.specific.js?version=1"></script>
<%@ include file="../include/footer.jsp"%>