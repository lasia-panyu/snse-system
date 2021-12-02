<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + "." + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title>阜新银行微博数据训练系统 - 训练日历</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Blue Moon - Responsive Admin Dashboard" />
<meta name="keywords"
	content="Notifications, Admin, Dashboard, Bootstrap3, Sass, transform, CSS3, HTML5, Web design, UI Design, Responsive Dashboard, Responsive Admin, Admin Theme, Best Admin UI, Bootstrap Theme, Wrapbootstrap, Bootstrap, bootstrap.gallery" />
<meta name="author" content="Bootstrap Gallery" />
<link rel="shortcut icon" href="/snse/resources/img/favicon.ico">
<link href="/snse/resources/css/bootstrap-reset.css" rel="stylesheet">
<!--external css-->
<link href="/snse/resources/assets/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link
	href="/snse/resources/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
	rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="/snse/resources/css/style.css" rel="stylesheet">
<link href="/snse/resources/css/style-responsive.css" rel="stylesheet" />

<link href="/snse/resources/css/bootstrap.min.css" rel="stylesheet">

<link href="/snse/resources/css/new.css" rel="stylesheet">
<!-- Important. For Theming change primary-color variable in main.css  -->

<link href="/snse/resources/css/fullcalendar.css" rel="stylesheet">
<link href="/snse/resources/fonts/font-awesome.min.css" rel="stylesheet">


<!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="/snse/resources/js/html5shiv.js"></script>
      <script src="/snse/resources/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<!-- Header Start -->
	<header>
	<img  class="logo" src="/snse/resources/img/fxbank.jpg" />
		<div class="pull-right">
			<ul id="mini-nav" class="clearfix">
				<li class="list-box hidden-xs"><a href="#" data-toggle="modal"
					data-target="#modalMd"> <span class="text-white">Code</span> <i
						class="fa fa-code"></i>
				</a> <!-- Modal -->
					<div class="modal fade" id="modalMd" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel5" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title text-danger" id="myModalLabel5">Coding
										Style</h4>
								</div>
								<div class="modal-body">
									<img src="/snse/resources/img/documentation.png"
										alt="Esquare Admin">
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">
										<i class="fa fa-times"></i> Close
									</button>
								</div>
							</div>
						</div>
					</div></li>
				<li class="list-box dropdown"><a id="drop5" href="#"
					role="button" class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-film"></i>
				</a> <span class="info-label info-bg">9+</span>
					<ul class="dropdown-menu stats-widget clearfix">
						<li>
							<h5 class="text-success">$37895</h5>
							<p>
								Revenue <span class="text-success">+2%</span>
							</p>
							<div class="progress progress-mini">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">40% Complete (success)</span>
								</div>
							</div>
						</li>
						<li>
							<h5 class="text-warning">47,892</h5>
							<p>
								Downloads <span class="text-warning">+39%</span>
							</p>
							<div class="progress progress-mini">
								<div class="progress-bar progress-bar-warning"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">40% Complete (warning)</span>
								</div>
							</div>
						</li>
						<li>
							<h5 class="text-danger">28214</h5>
							<p>
								Uploads <span class="text-danger">-7%</span>
							</p>
							<div class="progress progress-mini">
								<div class="progress-bar progress-bar-danger" role="progressbar"
									aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
									style="width: 40%">
									<span class="sr-only">40% Complete (danger)</span>
								</div>
							</div>
						</li>
					</ul></li>
				<li class="list-box dropdown"><a id="drop5" href="#"
					role="button" class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-calendar"></i>
				</a> <span class="info-label success-bg">6</span>
					<ul class="dropdown-menu server-activity">
						<li>
							<p>
								<i class="fa fa-flag text-info"></i> Pending request<span
									class="time">3 hrs</span>
							</p>
						</li>
						<li>
							<p>
								<i class="fa fa-fire text-warning"></i> Server Crashed<span
									class="time">3mins</span>
							</p>
						</li>
						<li>
							<p>
								<i class="fa fa-user text-success"></i> 3 New users<span
									class="time">1 min</span>
							</p>
						</li>
						<li>
							<p>
								<i class="fa fa-bell text-danger"></i>9 pending requests<span
									class="time">5 min</span>
							</p>
						</li>
						<li>
							<p>
								<i class="fa fa-plane text-info"></i> Performance<span
									class="time">25 min</span>
							</p>
						</li>
						<li>
							<p>
								<i class="fa fa-envelope text-warning"></i>12 new emails<span
									class="time">25 min</span>
							</p>
						</li>
						<li>
							<p>
								<i class="fa fa-cog icon-spin text-success"></i> Location
								settings<span class="time">4 hrs</span>
							</p>
						</li>
					</ul></li>
				<li class="list-box user-profile"><a id="drop7" href="#"
					role="button" class="dropdown-toggle user-avtar"
					data-toggle="dropdown"> <img
						src="/snse/resources/img/user5.png" alt="Bluemoon User">
				</a>
					<ul class="dropdown-menu server-activity">
						<li>
							<p>
								<i class="fa fa-cog text-info"></i> Account Settings
							</p>
						</li>
						<li>
							<p>
								<i class="fa fa-fire text-warning"></i> Payment Details
							</p>
						</li>
						<li>
							<div class="demo-btn-group clearfix">
								<a href="#" data-original-title="" title=""> <i
									class="fa fa-facebook fa-lg icon-rounded info-bg"></i>
								</a> <a href="#" data-original-title="" title=""> <i
									class="fa fa-twitter fa-lg icon-rounded twitter-bg"></i>
								</a> <a href="#" data-original-title="" title=""> <i
									class="fa fa-linkedin fa-lg icon-rounded linkedin-bg"></i>
								</a> <a href="#" data-original-title="" title=""> <i
									class="fa fa-pinterest fa-lg icon-rounded danger-bg"></i>
								</a> <a href="#" data-original-title="" title=""> <i
									class="fa fa-google-plus fa-lg icon-rounded success-bg"></i>
								</a>
							</div>
						</li>
						<li>
							<div class="demo-btn-group clearfix">
								<button href="#" class="btn btn-danger">Logout</button>
							</div>
						</li>
					</ul></li>
			</ul>
		</div>
	</header>
	<!-- Header End -->

	<!-- Main Container start -->
	<div class="dashboard-container">

		<div class="container">
			<!-- Top Nav Start -->
			 <div id='cssmenu'>
			          <ul>
            <li>
              <a href='index.html'>
                <i class="fa fa-dashboard"></i>
                主页
              </a>
            </li>
            <li>
              <a href="/snse//">
                <i class="fa fa-align-justify"></i>
                数据记录
              </a>
            </li>
            <li class=''>
              <a href='#'><i class="fa fa-bar-chart-o"></i>图表</a>
            </li>
            <li class=''>
              <a href='#'><i class="fa fa-flask"></i>实验</a>
            </li>
            <li class=''>
              <a href='#'><i class="fa fa-dashboard"></i>账户</a>
            </li>
            <li class=''>
              <a href='/snse/weibo/list/${date}/0/1'><i class="fa fa-table"></i>微博数据</a>
            </li>
            <li>
              <a href="media.html">
                <i class="fa fa-picture-o"></i>
                照片
              </a>
            </li>
            <li class="active hidden-sm">
              <a href="/snse/calendar/">
                <i class="fa fa-calendar"></i>
                日历
              </a>
            </li>
            <li class="hidden-sm">
              <a href="typography.html">
                <i class="fa fa-font"></i>
                其他
              </a>
            </li>
          </ul>
        </div>
			<!-- Top Nav End -->

			<!-- Sub Nav End -->
			<div class="sub-nav hidden-sm hidden-xs">
				<ul>
					<li><a href="" class="heading">Calendar</a></li>
				</ul>
				<div class="custom-search hidden-sm hidden-xs">
					<input type="text" class="search-query"
						placeholder="Search here ..."> <i class="fa fa-search"></i>
				</div>
			</div>
			<!-- Sub Nav End -->

			<!-- Dashboard Wrapper Start -->
			<div class="dashboard-wrapper">

				<!-- Left Sidebar Start -->
				<div class="left-sidebar">

					<!-- Row Start -->
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="widget">
								<div class="widget-header">
									<div class="title">训练日历</div>
									<span class="tools"> <i class="fa fa-cogs"></i>
									</span>
								</div>
								<div class="widget-body">
									<div id="calendar" class="has-toolbar"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- Row End -->

				</div>
				<!-- Left Sidebar End -->

				<!-- Right Sidebar Start -->
				<div class="right-sidebar">
					<div class="wrapper">
						<div id='external-events'>
							<div class='external-event btn btn-lg btn-block btn-info label-primary '>训练完成</div>
							<div class='external-event btn btn-lg btn-block btn-info label-success'>未完成训练</div>
							<div class='external-event btn btn-lg btn-block btn-info label-info'>借助算法训练</div>
							<div class='external-event btn btn-lg btn-block btn-info label-inverse'>工资日</div>
							<div class='external-event btn btn-lg btn-block btn-info label-warning'>训练</div>
							<div class='external-event btn btn-lg btn-block btn-info label-danger'>测试</div>
							<div class='external-event btn btn-lg btn-block btn-info label-default'>未编辑</div>			
							<button class="btn btn-lg btn-block btn-info" type="button">更新日历</button>
							<button class="btn btn-lg btn-block btn-warning" type="button">未编辑</button>
							<button class="btn btn-lg btn-block btn-success" type="button">未编辑</button>
							<p class="border-top drp-rmv">
							<input type='checkbox' id='drop-remove' /> remove after drop
							</p>
						</div>

					</div>
				</div>

				<!-- Right Sidebar End -->

			</div>
			<!-- Dashboard Wrapper End -->

			<footer>
			  <p>阜新银行微博训练系统- 信息科技部潘宇 2016-17</p>
			</footer>

		</div>
	</div>
	<!-- Main Container end -->

	<script src="/snse/resources/js/jquery.js"></script>
	<script src="/snse/resources/js/bootstrap.min.js"></script>
	<script src="/snse/resources/js/jquery.scrollUp.js"></script>

	<!-- Calendar JS -->
	<script src='/snse/resources/js/fullcalendar/jquery-ui.custom.min.js'></script>
	<script src='/snse/resources/js/fullcalendar/fullcalendar.min.js'></script>
	<!--common script for all pages-->
	<script src="/snse/resources/js/common-scripts.js"></script>

	<!--script for this page only-->

	<!-- Custom JS -->
	<script src="/snse/resources/js/menu.js"></script>

	<script type="text/javascript">
		//ScrollUp
		$(function() {
			$.scrollUp({
				scrollName : 'scrollUp', // Element ID
				topDistance : '300', // Distance from top before showing element (px)
				topSpeed : 300, // Speed back to top (ms)
				animation : 'fade', // Fade, slide, none
				animationInSpeed : 400, // Animation in speed (ms)
				animationOutSpeed : 400, // Animation out speed (ms)
				scrollText : 'Top', // Text for element
				activeOverlay : false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
			});

			/* initialize the external events
			 -----------------------------------------------------------------*/

			$('#external-events div.external-event').each(function() {
				var eventObject = {title : $(this).text()};
				$(this).data('eventObject', eventObject);
				$(this).draggable({
					zIndex : 999,
					revert : true, 
					revertDuration : 0

				});
			});

			/* initialize the calendar
			 -----------------------------------------------------------------*/
			$('#calendar')
					.fullCalendar(
							{
								header : {
									left : 'prev,next today',
									center : 'title',
									right : 'month,basicWeek,basicDay'
								},
								monthNames : [ "一月", "二月", "三月", "四月", "五月",
										"六月", "七月", "八月", "九月", "十月", "十一月",
										"十二月" ],
								dayNames : [ "周日", "周一", "周二", "周三", "周四",
										"周五", "周六" ],
								dayNamesShort : [ "周日", "周一", "周二", "周三", "周四",
										"周五", "周六" ],
								today : [ "今天" ],
								 buttonText:{
								     prev:     '上一月',
								     next:     '下一月',
								     today:    '今天',
								     month:    '月',
								     week:     '周',
								     day:      '日'
								     },
								currentTimezone : 'Asia/Beijing',
								editable : true,
								droppable : true,
								selectable : true,
								selectHelper : true,
								drop : function(date,allDay) { // this function is called when something is dropped
									var originalEventObject = $(this).data('eventObject');
								    var snstitle=originalEventObject.title;
									var copiedEventObject = $.extend({},originalEventObject);
									// assign it the date that was reported
									copiedEventObject.start = date;
									copiedEventObject.allDay = allDay;
									copiedEventObject.title = snstitle;  
									$('#calendar').fullCalendar('renderEvent',
											copiedEventObject, true);
									// is the "remove after drop" checkbox checked?
									if ($('#drop-remove').is(':checked')) {
										// if so, remove the element from the "Draggable Events" list
										$(this).remove();
									}
									$.ajax({
										url : 'addAgents',
										data : {
											date:date,
											snstitle:snstitle
										},
										type : 'post',
										dataType : 'json',
										success : function(data) {
											if (data.msg == "success") {
												alert("修改成功！");
												window.location.reload();
											} else {
												view(data.msg);
											}
										},
										error : function() {
											//$("#modalMd").show();
										}
									});

								},
								select : function(startDate, endDate,allDay, jsEvent, view) { 
									var startD = $.fullCalendar.formatDate(
											startDate, 'yyyy-MM-dd HH:mm:ss');//formatDate 是格式化时间的方法
									var endD = $.fullCalendar.formatDate(
											endDate, 'yyyy-MM-dd HH:mm:ss');
									//TODO      添加选中某元素时需要进行操作的方法，比如：添加会议、备注等事项
								},
								eventClick : function(event) { //点击事项的方法
								},
								events : function(start, end, callback) {
									var a = new Date();
									var fstart = $.fullCalendar.formatDate(
											start, "yyyy-MM-dd HH:mm");
									var fend = $.fullCalendar.formatDate(end,
											"yyyy-MM-dd HH:mm");
									$.ajax({
										        url : "findAgents",
												dataType : 'json',
												data : {start:start,end:end},
												success : function(doc) {
													var events = [];
													$(doc).each(function() {
																		var start = this.date+this.day;
																		var snsyear=start.substring(0,4);
																		if(start.substring(4,5)==0)
																			var snsmonth=start.substring(5,6);
																		else
																			var snsmonth=start.substring(4,6);
																		if(start.substring(6,7)==0)
																			var snsday=start.substring(7,8);
																		else
																			var snsday=start.substring(6,8);
																		$(this.event).each(function() {
																							//个人非全天事项  
																							var color = "blue";
																							//alert(this.title);
																							//alert(startdate);
																							events.push({title : this.title,
																										start : new Date(snsyear,snsmonth-1,snsday),
																										color : color,
																										url:'/snse/weibo/list/'+start+'/0/1'
																									});
																						});
																	});
													callback(events);
												},
												error : function(
														XMLHttpRequest,
														textStatus, errorThrown) {
													alert(XMLHttpRequest.status);
													alert(XMLHttpRequest.readyState);
													alert(textStatus);
												}
											});
								},
							});

		});
	</script>

</body>
</html>