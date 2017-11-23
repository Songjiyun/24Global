<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://apis.daum.net/search/web"></script>
<fmt:requestEncoding value="utf-8"/>

<div class="content-wrap">
    <!-- main page content. the place to put widgets in. usually consists of .row > .col-lg-* > .widget.  -->
    <main id="content" class="content" role="main">
        <h1 class="page-title">Dashboard <small><small>The Lucky One</small></small></h1>
        <div class="row" style="background-color: white; width: 100%; margin: auto; margin-bottom: 24px; height: 202px; text-align: center;">
        	뉴스 정보를 보여줄 영역
        	<div class="form-group row">
				<label for="search-input">Search type input</label>
                <div class="input-group">
                    <input type="search" class="form-control" id="coin">
                    <span class="input-group-btn">
                        <button type="button" class="btn btn-secondary" id="search">Search</button>
                    </span>
                </div>
			</div>
        	<h2>블로그 검색페이지</h2>
    검색어 입력 : <input type="text" name="search" size="40"/>
    <input type="button" value="검색"/><br/>
    <h4>검색결과</h4>
    <div id="searchResult"></div> 
        	ㅇㅇㅇㅇ <input type="file" value="파일업로드">
        </div>
        
        <!-- AJAX 영역 -->
		<script>
			$('#search').click(function () {
				alert($('#coin').val());
				$.ajax({
			        type : "GET",
			       // dataType : "json",
			        data : { 
			           "q✽"  : $('[name="coin"]').val(),
			           "result" : 5,
			           "advance" : y,
			           "pageno" : 1
			          // "output" : json
			        },
			        url : "https://openapi.naver.com/v1/search/news.json",
			        success : function(data) {
			        	alert("통신가능");
			        },
			        error : function(xhr, status, error) {
			           alert("통신불가");
			        }
				});
			});
		</script><!-- -->
		<!-- <script>
		    $(document).ready(function(){
		        $(":button").click(function(){
		            $.ajax({
		                url: "https://apis.daum.net/search",
		                type: "get",
		                data: {
		                    apikey: "Your API Key",
		                    q:'알고리즘',
		                    result: 5,
		                    output: "json"
		                },
		                dataType: "jsonp",
		                success: function(data){
		                	alert("success");
		                	alert("data : " data);
		                },
		                error: function(){
		                    alert('error'); 
		                }
		            });
		        });
		    });
		    function callback(data){
		        var itemList = data.channel.item;
		        for(var i=0; i<itemList.length; i++){
		            var item = itemList[i];
		            var title = item.title;
		            var link = item.link;
		            var desc = item.description;
		
		            $('#searchResult').append('<hr/>');
		            $('#searchResult').append("<a href='" + link + "'>" + title + "</a>");
		            $('#searchResult').append("<br/>");
		            $('#searchResult').append(desc + '<br/>')
		            $('#searchResult').append('<hr/>');    
		        }
		    }
		</script> -->   
        <!-- AJAX 영역 -->
        
        <div class="row">
            <div class="col-lg-4">
                <section class="widget">
                    <!-- .widget>header is generally a place for widget title and widget controls. see .widget in _base.scss -->
                    <header>
                        <h6>
                            USERBASE GROWTH
                        </h6>
                        <div class="widget-controls">
                            <a href="#"><i class="glyphicon glyphicon-cog"></i></a>
                            <a href="#" data-widgster="close"><i class="glyphicon glyphicon-remove"></i></a>
                        </div>
                    </header>
                    <div class="widget-body">
                        <div class="stats-row">
                            <div class="stat-item">
                                <h6 class="name fs-sm">Overall Growth</h6>
                                <p class="value">76.38%</p>
                            </div>
                            <div class="stat-item">
                                <h6 class="name fs-sm">Montly</h6>
                                <p class="value">10.38%</p>
                            </div>
                            <div class="stat-item">
                                <h6 class="name fs-sm">24h</h6>
                                <p class="value">3.38%</p>
                            </div>
                        </div>
                        <div class="bg-gray-lighter progress-bar">
                            <progress class="progress progress-xs progress-success" value="100" max="100" style="width: 60%"></progress>
                        </div>
                        <p>
                            <small><span class="circle bg-warning"><i class="glyphicon glyphicon-chevron-up"></i></span></small>
                            <span class="fw-semi-bold">17% higher</span>
                            than last month</p>
                    </div>
                </section>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <section class="widget">
                    <header>
                        <h6><span class="label label-danger">New</span> Messages</h6>
                        <div class="widget-controls">
                            <a href="#"><i class="fa fa-refresh"></i></a>
                            <a href="#" data-widgster="close"><i class="glyphicon glyphicon-remove"></i></a>
                        </div>
                    </header>
                    <div class="widget-body no-padding">
                        <div class="list-group list-group-lg">
                            <a class="list-group-item" href="#">
                                <span class="thumb-sm pull-xs-left mr">
                                    <img class="img-circle" src="demo/img/people/a2.jpg" alt="...">
                                    <i class="status status-bottom bg-success"></i>
                                </span>
                                <h6 class="no-margin">Chris Gray</h6>
                                <p class="help-block text-ellipsis no-margin">Hey! What's up? So many times since we</p>
                            </a>
                            <a class="list-group-item" href="#">
                                <span class="thumb-sm pull-xs-left mr">
                                    <img class="img-circle" src="demo/img/people/a4.jpg" alt="...">
                                    <i class="status status-bottom bg-success"></i>
                                </span>
                                <h6 class="no-margin">Jamey Brownlow</h6>
                                <p class="help-block text-ellipsis no-margin">Good news coming tonight. Seems they agreed to proceed</p>
                            </a>
                            <a class="list-group-item" href="#">
                                <span class="thumb-sm pull-xs-left mr">
                                    <img class="img-circle" src="demo/img/people/a1.jpg" alt="...">
                                    <i class="status status-bottom bg-warning"></i>
                                </span>
                                <h6 class="no-margin">Livia Walsh</h6>
                                <p class="help-block text-ellipsis no-margin">Check my latest email plz!</p>
                            </a>
                            <a class="list-group-item" href="#">
                                <span class="thumb-sm pull-xs-left mr">
                                    <img class="img-circle" src="demo/img/people/a5.jpg" alt="...">
                                    <i class="status status-bottom bg-danger"></i>
                                </span>
                                <h6 class="no-margin">Jaron Fitzroy</h6>
                                <p class="help-block text-ellipsis no-margin">What about summer break?</p>
                            </a>
                        </div>
                    </div>
                    <footer class="bg-body-light mt">
                        <input type="search" class="form-control form-control-sm" placeholder="Search">
                    </footer>
                </section>
            </div>
            <div class="col-lg-4">
                <section class="widget">
                    <header>
                        <h6>
                            Market <span class="fw-semi-bold">Stats</span>
                        </h6>
                        <div class="widget-controls">
                            <a href="#" data-widgster="close"><i class="glyphicon glyphicon-remove"></i></a>
                        </div>
                    </header>
                    <div class="widget-body">
                        <h3>$720 Earned</h3>
                        <p class="text-muted mb mt-sm">
                            Target <span class="fw-semi-bold">$820</span> day earnings
                            is <span class="fw-semi-bold">96%</span> reached.
                        </p>
                    </div>
                    <div class="widget-table-overflow">
                        <table class="table table-striped table-sm">
                            <thead class="no-bd">
                            <tr>
                                <th>
                                    <div class="abc-checkbox">
                                        <input id="checkbox210" type="checkbox" data-check-all="">
                                        <label for="checkbox210"></label>
                                    </div>
                                </th>
                                <th></th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <div class="abc-checkbox">
                                        <input id="checkbox212" type="checkbox">
                                        <label for="checkbox212"></label>
                                    </div>
                                </td>
                                <td>HP Core i7</td>
                                <td class="text-xs-right fw-semi-bold">$346.1</td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="abc-checkbox">
                                        <input id="checkbox214" type="checkbox">
                                        <label for="checkbox214"></label>
                                    </div>
                                </td>
                                <td>Air Pro</td>
                                <td class="text-xs-right fw-semi-bold">$533.1</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="widget-body mt-xlg">
                        <div id="rickshaw" class="chart-overflow-bottom"></div>
                    </div>
                </section>
            </div>
            <div class="col-lg-4">
                <section class="widget">
                    <header>
                        <h6>Calendar</h6>
                        <div class="widget-controls">
                            <a href="#"><i class="glyphicon glyphicon-cog"></i></a>
                            <a href="#" data-widgster="close"><i class="glyphicon glyphicon-remove"></i></a>
                        </div>
                    </header>
                    <div class="widget-body no-padding">
                        <div id="events-calendar" class="bg-primary-light"></div>
                        <div class="list-group">
                            <a href="#" class="list-group-item text-ellipsis">
                                <span class="label-pill label-warning pull-xs-right">6:45</span>
                                Weed out the flower bed
                            </a>
                            <a href="#" class="list-group-item text-ellipsis">
                                <span class="label-pill label-success pull-xs-right">9:41</span>
                                Stop world water pollution
                            </a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </main>
</div>

<!-- The Loader. Is shown when pjax happens -->
<div class="loader-wrap hiding hide">
    <i class="fa fa-circle-o-notch fa-spin-fast"></i>
</div>
