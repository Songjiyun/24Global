<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script>
	var InnerHtml = "";
	var timestamp = "";
	$(document).load(function() {
		
		//페이지 로드 되자마자 call
		CallApi();
		alert("data");

		//페이지 로드 1분 후 call
		setTimeout(ReCall_Api(),60000);
	});

	//페이지 로드 1분후 1분마다 call
	ReCall_Api = setInterval(function() {
		CallApi();
	}, 60000);

	function CallApi() {
		$('#InnerData').empty();

		$.ajax({
			type : 'GET',
			url : 'https://api.bithumb.com/public/ticker/ALL',
			error : function() {
				alert("오류가 발생하였습니다. 관리자에게 문의하시기바랍니다.");
			},
			success : function(GetData) {
				//코인명 가져오기
				$.each(GetData.data, function(coin_name, coin_data) {
					if (coin_name == "date") {
						$('#standard_time').html(
								new Date(coin_data * 1000)
										.format("yyyy-MM-dd hh:mm:ss"));
					} else {
						InnerHtml += "<tr><td>" + coin_name
								+ "</td>";
						//코인 데이터 가져오기
						$.each(coin_data, function(coin_data_key,
								coin_data_value) {
							if (coin_data_key == "closing_price") {
								InnerHtml += "<td>"
										+ numberWithCommas(coin_data_value)
										+ "원" + "</td>";
							}

						});
						InnerHtml += "</tr>";
					}
				});

				$('#InnerData').html(InnerHtml);
				InnerHtml = "";
			}
		})
	}

	Date.prototype.format = function(f) {
		if (!this.valueOf())
			return " ";

		var weekName = [ "일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일" ];
		var d = this;

		return f.replace(/(yyyy|yy|MM|dd|E|hh|mm|ss|a\/p)/gi, function($1) {
			switch ($1) {
			case "yyyy":
				return d.getFullYear();
			case "yy":
				return (d.getFullYear() % 1000).zf(2);
			case "MM":
				return (d.getMonth() + 1).zf(2);
			case "dd":
				return d.getDate().zf(2);
			case "E":
				return weekName[d.getDay()];
			case "HH":
				return d.getHours().zf(2);
			case "hh":
				return ((h = d.getHours() % 12) ? h : 12).zf(2);
			case "mm":
				return d.getMinutes().zf(2);
			case "ss":
				return d.getSeconds().zf(2);
			case "a/p":
				return d.getHours() < 12 ? "오전" : "오후";
			default:
				return $1;
			}
		});
	};

	String.prototype.string = function(len) {
		var s = '', i = 0;
		while (i++ < len) {
			s += this;
		}
		return s;
	};
	String.prototype.zf = function(len) {
		return "0".string(len - this.length) + this;
	};
	Number.prototype.zf = function(len) {
		return this.toString().zf(len);
	};

	//숫자 콤마 찍기
	function numberWithCommas(x) {
		return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
</script>


<div class="content-wrap">
	<!-- main page content. the place to put widgets in. usually consists of .row > .col-lg-* > .widget.  -->
	<main id="content" class="content" role="main">
	
	<h1 class="page-title">
		준비중입니다. <small><small>시세알림</small></small>
	</h1>


	<div class="col-lg-12">
		<section class="widget">
			<header>
				<h5>
					<span class="fw-semi-bold">빗썸 기준</span>
				</h5>
				<div class="widget-controls">
					<a href="#"><i class="glyphicon glyphicon-cog"></i></a> <a
						data-widgster="close" href="#"><i
						class="glyphicon glyphicon-remove"></i></a>
				</div>
			</header>
			<div class="widget-body">
				<table class="table">
					<thead>
						<tr>
							<th class="hidden-sm-down">코인명</th>
							<th>시세</th>
						</tr>
					</thead>
					<tbody id="InnerData">
					</tbody>

				</table>


				<div class="clearfix">
					<div class="pull-xs-right">
						<button class="btn btn-secondary btn-sm">Send to ...</button>
						<div class="btn-group">
							<button class="btn btn-sm btn-inverse dropdown-toggle"
								data-toggle="dropdown">
								&nbsp; Clear &nbsp; <i class="fa fa-caret-down"></i>
							</button>
							<ul class="dropdown-menu dropdown-menu-right">
								<li><a class="dropdown-item" href="#">Clear</a></li>
								<li><a class="dropdown-item" href="#">Move ...</a></li>
								<li><a class="dropdown-item" href="#">Something else
										here</a></li>
								<li class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="#">Separated link</a></li>
							</ul>
						</div>
					</div>
					<p id="standard_time"></p>
				</div>


			</div>
		</section>
	</div>


	<!-- Script 영역 --> </main>
</div>


<!-- The Loader. Is shown when pjax happens -->
<div class="loader-wrap hiding hide">
	<i class="fa fa-circle-o-notch fa-spin-fast"></i>
</div>


