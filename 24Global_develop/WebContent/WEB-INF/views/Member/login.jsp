<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>

<!DOCTYPE html>
<html>
<head>
    <title>Sing - Login</title>
    <link href="css/application.min.css" rel="stylesheet">
    <!-- as of IE9 cannot parse css files with more that 4K classes separating in two files -->
    <!--[if IE 9]>
        <link href="css/application-ie9-part2.css" rel="stylesheet">
    <![endif]-->
    <link rel="shortcut icon" href="img/favicon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script>
    </script>
</head>
<body class="login-page">

<div class="container">
    <main id="content" class="widget-login-container" role="main">
        <div class="row">
            <div class="col-xl-4 col-md-6 col-xs-10 col-xl-offset-4 col-md-offset-3 col-xs-offset-1">
                <h5 class="widget-login-logo animated fadeInUp">
                    <i class="fa fa-circle text-gray"></i>
                    24Global Story
                    <i class="fa fa-circle text-warning"></i>
                </h5>
                <section class="widget widget-login animated fadeInUp">
                    <header>
                        <h3 style="text-align: center;">Login</h3>
                    </header>
                    <div class="widget-body">
                        <!-- <p class="widget-login-info">
							가입하신 아이디로 로그인  
                        </p> -->
                        <form class="login-form mt-lg">
                            <div class="form-group">
                                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="아이디">
                            </div>
                            <div class="form-group">
                                <input class="form-control" id="pswd" type="text" placeholder="비밀번호">
                            </div>
                            <p class="widget-login-info" style="text-align: right;">
								<a>비밀번호 찾기</a> / <a>아이디 찾기</a> 
	                        </p>
                            <div class="clearfix">
                                <div class="btn-toolbar pull-xs-right"
                                     style="float: none !important; text-align: center;">
                                    <button type="button" class="btn btn-secondary btn-sm" onclick="location.href='checkStatus.do'">회원가입</button>
                                    <a class="btn btn-inverse btn-sm" href="index.html">로그인</a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-md-push-6" style="left: 20%;">
                                    <div class="clearfix">
                                        <div class="abc-checkbox widget-login-info pull-xs-right ml-n-lg">
                                            <input type="checkbox" id="checkbox1" value="1">
                                            <label for="checkbox1">로그인정보 저장 </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </section>
            </div>
        </div>
    </main>
    <footer class="page-footer">
        2017 &copy; 24Global Comunity
    </footer>
</div>
<!-- The Loader. Is shown when pjax happens -->
<div class="loader-wrap hiding hide">
    <i class="fa fa-circle-o-notch fa-spin-fast"></i>
</div>

<!-- common libraries. required for every page-->
<script src="vendor/jquery/dist/jquery.min.js"></script>
<script src="vendor/jquery-pjax/jquery.pjax.js"></script>
<script src="vendor/tether/dist/js/tether.js"></script>
<script src="vendor/bootstrap/js/dist/util.js"></script>
<script src="vendor/bootstrap/js/dist/collapse.js"></script>
<script src="vendor/bootstrap/js/dist/dropdown.js"></script>
<script src="vendor/bootstrap/js/dist/button.js"></script>
<script src="vendor/bootstrap/js/dist/tooltip.js"></script>
<script src="vendor/bootstrap/js/dist/alert.js"></script>
<script src="vendor/slimScroll/jquery.slimscroll.min.js"></script>
<script src="vendor/widgster/widgster.js"></script>

<!-- common app js -->
<script src="js/settings.js"></script>
<script src="js/app.js"></script>

</body>
</html>