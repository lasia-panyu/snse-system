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
    <title>阜新银行微博数据训练系统 - 微博数据</title>
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
            <li><a href="" class="heading">微博数据</a></li>
            <li class="hidden-sm hidden-xs">
              <a href="#" class="selected">微博数据来自${date}</a>
            </li>
          </ul>
          <div class="custom-search hidden-sm hidden-xs">
            <input type="text" class="search-query" placeholder="点击搜索">
            <i class="fa fa-search"></i>
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
                    <div class="title">
                      微博数据
                    </div>
                    <span class="tools">
                      <i class="fa fa-cogs"></i>
                    </span>
                  </div>
                  <div class="widget-body">
                    <table class="table table-responsive table-striped table-bordered table-hover no-margin">
                      
                      <c:if test="${state==0}">
                     <thead> <tr>
                     <th style="width:40%">微博数据</th>
                          <th style="width:10%" class="hidden-xs">姓名</th>
                          <th style="width:15%" class="hidden-xs"> 关注度</th>
                          <th style="width:15%" class="hidden-xs">手机型号</th>
                          <th style="width:10%" class="hidden-xs">状态</th>
                          <th style="width:10%" class="hidden-xs"> 操作</th>
                        </tr></thead>
                      <tbody>
                      <c:forEach var="weibos" items="${weibos}">    
                                            <tr>
                          <td><span class="">${weibos.content}</span></td>
                          <td>${weibos.accountName}</td>
                          <td>赞:${weibos.attitude},转发:${weibos.repost},评论：${weibos.comment}</td>       
                          <td>${weibos.phoneType}</td>
                          <td>
                          <c:if test="${weibos.type==1}"><span class="label label-success">已训练</span></c:if>   
                          <c:if test="${weibos.type==0}"><span class="label label-warning">未训练</span></c:if> 
                          </td>
                          <td class="hidden-xs"> <div class="btn-group">
                              <button data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle">  操作 <span class="caret"></span>
                              </button>
                              <ul class="dropdown-menu pull-right">
                                <li>
                                  <a href="/snse/weibo/detail/${weibos.id}/${weibos.date}/${weibos.accountId}/${weibos.content}">修改训练</a>
                                </li>
                                <li>
                                  <a href="#">删除</a>
                                </li>
                              </ul>
                            </div>
                          </td>
                        </tr> 
                        </c:forEach>
                        </tbody>
                        </c:if >

                      <c:if test="${state==1}">
                         <thead>
                        <tr><th style="width:40%"> 微博</th>
                        <th style="width:20%" class="hidden-xs"> 分词词典</th>              
                        <th style="width:30%" class="hidden-xs">分词状态</th>
                        <th style="width:5%" class="hidden-xs">状态</th>
                        <th style="width:10%" class="hidden-xs">操作</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach var="weibos" items="${weibos}">  
                                                                 <tr>
                          <td>=${weibos.content}</span></td>
                          <td>${weibos.classify}</td>
                          <td>${weibos.word}</td>       
                          <td>
                          <c:if test="${weibos.emontion=='0'}"><span class="label label-info">正向</span></c:if>   
                          <c:if test="${weibos.emontion=='1'}"><span class="label label-danger">负向</span></c:if> 
                          </td>
                          <td class="hidden-xs"> <div class="btn-group">
                              <button data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle">  操作 <span class="caret"></span>
                              </button>
                              <ul class="dropdown-menu pull-right">
                                <li>
                                  <a href="/snse/weibo/detail/${weibos.id}/${weibos.date}/${weibos.accountId}/${weibos.content}">修改训练</a>
                                </li>
                                <li>
                                  <a href="#">删除</a>
                                </li>
                              </ul>
                            </div>
                          </td>
                        </tr>  
                        </c:forEach>
                        </tbody>
                      </c:if >
                    </table>
                 </div>
                
            

                  <div class="widget-body" align="right">               
                    <c:if test="${page<3}">      
                    <button type="button" class="btn btn-default" onclick="javascript:window.location.href='/snse/weibo/list/${date}/${pstate}/1'">1</button>
                    <button type="button" class="btn btn-default" onclick="javascript:window.location.href='/snse/weibo/list/${date}/${pstate}/2'">2</button>
                    <button type="button" class="btn btn-default" onclick="javascript:window.location.href='/snse/weibo/list/${date}/${pstate}/3'">3</button>                               
                    </c:if>
                    <c:if test="${page==3}">      
                    <button type="button" class="btn btn-default" onclick="javascript:window.location.href='/snse/weibo/list/${date}/${pstate}/2'">2</button>
                    <button type="button" class="btn btn-default" onclick="javascript:window.location.href='/snse/weibo/list/${date}/${pstate}/3'">3</button>
                    <button type="button" class="btn btn-default" onclick="javascript:window.location.href='/snse/weibo/list/${date}/${pstate}/4'">4</button>  
                    </c:if> 
                    <c:if test="${page+2>=totalpage && page>3 }">      
                    <button type="button" class="btn btn-default" onclick="javascript:window.location.href='/snse/weibo/list/${date}/${pstate}/${totalpage-2}'">${totalpage-2}</button>
                    <button type="button" class="btn btn-default" onclick="javascript:window.location.href='/snse/weibo/list/${date}/${pstate}/${totalpage-1}'">${totalpage-1}</button>
                    <button type="button" class="btn btn-default" onclick="javascript:window.location.href='/snse/weibo/list/${date}/${pstate}/${totalpage}'">${totalpage}</button>  
                    </c:if> 
                    <c:if test="${page>3 && page+2<totalpage}">      
                    <button type="button" class="btn btn-default" onclick="javascript:window.location.href='/snse/weibo/list/${date}/${pstate}/${page-1}'">${page+-1}</button>
                    <button type="button" class="btn btn-default" onclick="javascript:window.location.href='/snse/weibo/list/${date}/${pstate}/${page}'">${page}</button>
                    <button type="button" class="btn btn-default" onclick="javascript:window.location.href='/snse/weibo/list/${date}/${pstate}/${page+1}'">${page+1}</button>  
                    </c:if> 
                                                       共${totalpage}页
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
              <table class="table table-condensed table-striped table-bordered table-hover no-margin">
                <thead>
                  <tr>
                    <th style="width:10%">
                      
                    </th>
                    <th style="width:70%">
                                                               类型
                    </th>
                    <th style="width:20%">
                                                               状态
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      1
                    </td>
                    <td>
                      <span class="name">
                       <a href="/snse/weibo/list/${date}/0/1/">正向微博</a>
                      </span>
                    </td>
                    <td>
                      <span class="label label-info">
                                                                        正向
                      </span>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      2
                    </td>
                    <td>
                      <span class="name">
                        <a href="/snse/weibo/list/${date}/1/1/">负向微博</a>
                      </span>
                    </td>
                    <td>
                      <span class="label label-danger">
                                                                          负向
                      </span>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      3
                    </td>
                    <td>
                      <span class="name">
                          <a href="/snse/weibo/list/${date}/2/1/">未训练微博</a>
                      </span>
                    </td>
                    <td>
                      <span class="label label-warning">
                                                               未训练
                      </span>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      4
                    </td>
                    <td>
                      <span class="name">
                        <a href="/snse/weibo/list/${date}/3/1/">已训练微博</a>
                      </span>
                    </td>
                    <td>
                      <span class="label label-success">
                                                                        已训练
                      </span>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            
            <hr class="hr-stylish-1">
            
            <div class="wrapper">
              <div class="btn-toolbar no-margin">
                <div class="btn-group">
                  <a href="#" class="btn btn-success">
                    <i class="fa fa-headphones">
                    </i>
                  </a>
                  <a href="#" class="btn btn-warning">
                    <i class="fa fa-thumbs-down">
                    </i>
                  </a>
                  <a href="#" class="btn btn-danger">
                    <i class="fa fa-signal">
                    </i>
                  </a>
                  <a href="#" class="btn btn-info">
                    <i class="fa fa-share">
                    </i>
                  </a>
                </div>
                <div class="btn-group">
                  <a href="#" class="btn btn-default">
                    <i class="fa fa-leaf"></i>
                  </a>
                </div>
              </div>
            </div>
            
            <hr class="hr-stylish-1">
            
            <div class="wrapper">
           
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
    <script src="/snse/resources/js/jquery.dataTables.js"></script>

    <!-- Custom JS -->
    <script src="/snse/resources/js/menu.js"></script>
    
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

      //Data Tables
      $(document).ready(function () {
        $('#data-table').dataTable({
          "sPaginationType": "full_numbers"
        });
      });

    </script>

  </body>
</html>