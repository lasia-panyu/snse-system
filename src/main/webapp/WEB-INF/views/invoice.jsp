<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + "." + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
  <head>
    <title>阜新银行微博数据训练系统 - 微博训练</title>
    <meta charset="UTF-8" />
    <link rel="shortcut icon" href="/snse/resources/img/favicon.ico">
    
    <link href="/snse/resources/css/bootstrap.min.css" rel="stylesheet">

    <link href="/snse/resources/css/new.css" rel="stylesheet">
    <!-- Important. For Theming change primary-color variable in main.css  -->

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
      <a href="index.html" class="logo">
        <img src="/snse/resources/img/fxbank.jpg" alt="Logo"/>
      </a>
      <div class="pull-right">
        <ul id="mini-nav" class="clearfix">
          <li class="list-box hidden-xs">
            <a href="#" data-toggle="modal" data-target="#modalMd">
              <span class="text-white">Code</span> <i class="fa fa-code"></i>
            </a>
            <!-- Modal -->
            <div class="modal fade" id="modalMd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel5" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title text-danger" id="myModalLabel5">Coding Style </h4>
                  </div>
                  <div class="modal-body">
                    <img src="/snse/resources/img/documentation.png" alt="Esquare Admin">
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li class="list-box dropdown">
            <a id="drop5" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-film"></i>
            </a>
            <span class="info-label info-bg">9+</span>
            <ul class="dropdown-menu stats-widget clearfix">
              <li>
                <h5 class="text-success">$37895</h5>
                <p>Revenue <span class="text-success">+2%</span></p>
                <div class="progress progress-mini">
                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                    <span class="sr-only">40% Complete (success)</span>
                  </div>
                </div>
              </li>
              <li>
                <h5 class="text-warning">47,892</h5>
                <p>Downloads <span class="text-warning">+39%</span></p>
                <div class="progress progress-mini">
                  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                    <span class="sr-only">40% Complete (warning)</span>
                  </div>
                </div>
              </li>
              <li>
                <h5 class="text-danger">28214</h5>
                <p>Uploads <span class="text-danger">-7%</span></p>
                <div class="progress progress-mini">
                  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                    <span class="sr-only">40% Complete (danger)</span>
                  </div>
                </div>
              </li>
            </ul>
          </li>
          <li class="list-box dropdown">
            <a id="drop5" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-calendar"></i>
            </a>
            <span class="info-label success-bg">6</span>
            <ul class="dropdown-menu server-activity">
              <li>
                <p><i class="fa fa-flag text-info"></i> Pending request<span class="time">3 hrs</span></p>
              </li>
              <li>
                <p><i class="fa fa-fire text-warning"></i> Server Crashed<span class="time">3mins</span></p>
              </li>
              <li>
                <p><i class="fa fa-user text-success"></i> 3 New users<span class="time">1 min</span></p>
              </li>
              <li>
                <p><i class="fa fa-bell text-danger"></i>9 pending requests<span class="time">5 min</span></p>
              </li>
              <li>
                <p><i class="fa fa-plane text-info"></i> Performance<span class="time">25 min</span></p>
              </li>
              <li>
                <p><i class="fa fa-envelope text-warning"></i>12 new emails<span class="time">25 min</span></p>
              </li>
              <li>
                <p><i class="fa fa-cog icon-spin text-success"></i> Location settings<span class="time">4 hrs</span></p>
              </li>
            </ul>
          </li>
          <li class="list-box user-profile">
            <a id="drop7" href="#" role="button" class="dropdown-toggle user-avtar" data-toggle="dropdown">
              <img src="/snse/resources/img/user5.png" alt="Bluemoon User">
            </a>
            <ul class="dropdown-menu server-activity">
              <li>
                <p><i class="fa fa-cog text-info"></i> Account Settings</p>
              </li>
              <li>
                <p><i class="fa fa-fire text-warning"></i> Payment Details</p>
              </li>
              <li>
                <div class="demo-btn-group clearfix">
                  <a href="#" data-original-title="" title="">
                    <i class="fa fa-facebook fa-lg icon-rounded info-bg"></i>
                  </a>
                  <a href="#" data-original-title="" title="">
                    <i class="fa fa-twitter fa-lg icon-rounded twitter-bg"></i>
                  </a>
                  <a href="#" data-original-title="" title="">
                    <i class="fa fa-linkedin fa-lg icon-rounded linkedin-bg"></i>
                  </a>
                  <a href="#" data-original-title="" title="">
                    <i class="fa fa-pinterest fa-lg icon-rounded danger-bg"></i>
                  </a>
                  <a href="#" data-original-title="" title="">
                    <i class="fa fa-google-plus fa-lg icon-rounded success-bg"></i>
                  </a>
                </div>
              </li>
              <li>
                <div class="demo-btn-group clearfix">
                  <button href="#" class="btn btn-danger">
                    Logout
                  </button>
                </div>
              </li>
            </ul>
          </li>
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
            <li class='active'>
              <a href='/snse/weibo/list/${date}/0/1'><i class="fa fa-table"></i>微博数据</a>
            </li>
            <li>
              <a href="media.html">
                <i class="fa fa-picture-o"></i>
                照片
              </a>
            </li>
            <li class="hidden-sm">
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
            <li><a href="" class="heading">微博训练</a></li>
            <li class="hidden-sm hidden-xs">
                                                训练数据来自于
              <a href="#" class="selected">
                  ${weiboclassify.accountId}             
              </a>
            </li>
          </ul>
          <div class="custom-search hidden-sm hidden-xs">
            <input type="text" class="search-query" placeholder="点击搜索 ...">
            <i class="fa fa-search"></i>
          </div>
        </div>
        <!-- Sub Nav End -->

        <!-- Dashboard Wrapper Start -->
        <div class="dashboard-wrapper">
          
          <!-- Left Sidebar Start -->
          <div class="left-sidebar">
            
            <!-- Row Start -->
  
            <!-- Row End -->

            <!-- Row Start -->
            <div class="row">
              <div class="col-lg-12 col-md-12">
                <div class="widget no-margin">
                  <div class="widget-header">
                    <div class="title">
                                                                   训练明细
                    </div>
                    <span class="tools">
                      <i class="fa fa-cogs"></i>
                    </span>
                  </div>
                  <div class="widget-body">
                    <div class="invoice">
                      <div class="invoice-head">
                 
                        <div class="invoice-info">
                          <span>
                                                                        微博账号:${weiboclassify.accountId}
                          </span>
                          <br>
                          <span class="date">
                                                                        日期:${weiboclassify.date}
                          </span>
                        </div>
                      </div>
                      <div class="invoice-data-container">
                        <div class="from">
                          <h5>
                                                                            微博内容
                          </h5>
                          <span>
                            ${weiboclassify.content}
                          </span>
                        </div>
                      </div>
                      <div class="table-responsive">
                                            <table class="table table-condensed table-striped table-bordered table-hover no-margin">
                        <thead>
                          <tr>
                            <th style="width:10%">
                                                                            贝叶斯分词                               
                            </th>
                            <th style="width:15%">
                                                                              词频
                            </th>
                            <th style="width:30%" class="hidden-phone">
                              Description
                            </th>
                            <th style="width:10%" class="hidden-phone">
                              Qnty
                            </th>
                            <th style="width:10%" class="hidden-phone">
                              VAT
                            </th>
                            <th style="width:10%" class="hidden-phone">
                              Total
                            </th>
                            <th style="width:15%" class="hidden-phone">
                              Actions
                            </th>
                          </tr>
                        </thead>
                        <tbody>
                           <c:forEach var="nbayes" items="${pbayes}">    
                          <tr>
                            <td>
                              ${nbayes.word}
                            </td>
                            <td>
                              ${nbayes.count}
                            </td>
                            <td class="hidden-phone">
                              Drive synergies rich viral...
                            </td>
                            <td class="hidden-phone">
                              4
                            </td>
                            <td class="hidden-phone">
                              <span class="label label-info">
                                2.24%
                              </span>
                            </td>
                            <td class="hidden-phone">
                              50.00$
                            </td>
                            <td class="hidden-phone">
                              <a href="#" class="btn btn-warning btn-xs">
                                View
                              </a>
                              <a href="#" class="btn btn-info btn-xs">
                                Edit
                              </a>
                            </td>
                          </tr> 
                          </c:forEach>        
                          <c:forEach var="nbayes" items="${nbayes}">    
                          <tr>
                            <td>
                              ${nbayes.word}
                            </td>
                            <td>
                              ${nbayes.count}
                            </td>
                            <td class="hidden-phone">
                              Drive synergies rich viral...
                            </td>
                            <td class="hidden-phone">
                              4
                            </td>
                            <td class="hidden-phone">
                              <span class="label label-info">
                                2.24%
                              </span>
                            </td>
                            <td class="hidden-phone">
                              50.00$
                            </td>
                            <td class="hidden-phone">
                              <a href="#" class="btn btn-warning btn-xs">
                                View
                              </a>
                              <a href="#" class="btn btn-info btn-xs">
                                Edit
                              </a>
                            </td>
                          </tr> 
                          </c:forEach>                       
                        </tbody>
                      </table>
                        <table class="table table-condensed table-striped table-bordered table-hover no-margin">
                          <tbody>
                            <tr>
                              <td class="total" style="width:90%">
                                nstusd中文词典: ${weiboclassify.classify}
                              </td>
                              <td class="hidden-phone">
                               
                              </td>
                            </tr>
                            <tr>
                              <td class="success" style="width:90%">
                                word中文分词:${weiboclassify.word}
                              </td>
                              <td class="hidden-phone">
                                 
                              </td>
                            </tr>
                            <tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                                                    <div class="btn-group btn-group-justified">
                      <div class="btn-group">
                        <button type="button" class="btn btn-info" onclick="javascript:window.location.href='/snse/weibo/calssify/${weiboclassify.id}/1/${weiboclassify.word}'">负类</button>
                      </div>
                      <div class="btn-group">
                        <button type="button" class="btn btn-info" onclick="javascript:window.location.href='/snse/weibo/list/${weiboclassify.date}/1'">返回</button>
                      </div>
                      <div class="btn-group">
                        <button type="button" class="btn btn-info" onclick="javascript:window.location.href='/snse/weibo/calssify/${weiboclassify.id}/0/${weiboclassify.word}'">正类</button>
                      </div>
                    </div>
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
              <div class="list-group no-margin">
                <a href="javascript:;" class="list-group-item">
                  <span class="pull-right">
                    <i class="fa fa-file fa-3x text-info"></i>
                  </span>
                  <h4 class="list-group-item-heading">${aNumber}</h4>
                  <p class="list-group-item-text">当日全部微博</p>
                </a>
                <a href="javascript:;" class="list-group-item">
                  <span class="pull-right">
                    <i class="fa fa-check-square-o fa-3x text-warning"></i>
                  </span>
                  <h4 class="list-group-item-heading">${dNumber}</h4>
                  <p class="list-group-item-text">已训练</p>
                </a>
                <a href="javascript:;" class="list-group-item">
                  <span class="pull-right">
                    <i class="fa fa-square-o fa-3x text-success"></i>
                  </span>
                  <h4 class="list-group-item-heading">${nNumber}</h4>
                  <p class="list-group-item-text">训练中</p>      
                </a>
              </div>
            </div>
            
            <hr>
            
            <div class="wrapper">
              <ul class="month-income">
                <li>
                  <span class="icon-block blue-block">
                    <i class="fa fa-html5 fa-lg"></i>
                  </span>
                  <h5>
                    @srinubasava 
                    <small class="info-fade">
                      Developer
                    </small>
                  </h5>
                  <p>
                    10 minutes ago
                  </p>
                </li>
                <li>
                  <span class="icon-block orange-block">
                    <i class="fa fa-apple fa-lg"></i>
                  </span>
                  <h5>
                    @prempillai 
                    <small class="info-fade">
                      Sr. Developer
                    </small>
                  </h5>
                  <p>
                    28 minutes ago
                  </p>
                </li>
                <li>
                  <span class="icon-block green-block">
                    <i class="fa fa-github fa-lg"></i>
                  </span>
                  <h5>
                    @arjunurs 
                    <small class="info-fade">
                      Developer
                    </small>
                  </h5>
                  <p>
                    14 minutes ago
                  </p>
                </li>
                <li>
                  <span class="icon-block red-block">
                    <i class="fa fa-xing fa-lg"></i>
                  </span>
                  <h5>
                    @gajjugujju 
                    <small class="info-fade">
                      Team Leader
                    </small>
                  </h5>
                  <p>
                    28 minutes ago
                  </p>
                </li>
                <li>
                  <span class="icon-block yellow-block">
                    <i class="fa fa-css3 fa-lg"></i>
                  </span>
                  <h5>
                    @boomer 
                    <small class="info-fade">
                      Business
                    </small>
                  </h5>
                  <p>
                    28 minutes ago
                  </p>
                </li>
              </ul>
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

    <!-- Custom JS -->
    <script src="/snse/resources/js/custom.js"></script>
    
    <script type="text/javascript">
      //ScrollUp
      $(function () {
        $.scrollUp({
          scrollName: 'scrollUp', // Element ID
          topDistance: '300', // Distance from top before showing element (px)
          topSpeed: 300, // Speed back to top (ms)
          animation: 'fade', // Fade, slide, none
          animationInSpeed: 400, // Animation in speed (ms)
          animationOutSpeed: 400, // Animation out speed (ms)
          scrollText: 'Top', // Text for element
          activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
        });
      });

      //Tooltip
      $('a').tooltip('hide');

      //Popover
      $('.popover-pop').popover('hide');

      //Dropdown
      $('.dropdown-toggle').dropdown();

    </script>

  </body>
</html>