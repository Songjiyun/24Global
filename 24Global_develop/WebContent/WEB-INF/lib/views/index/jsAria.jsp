<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<fmt:requestEncoding value="utf-8"/>

<!-- common libraries. required for every page-->
<script src="${pageContext.request.contextPath }/vendor/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/vendor/jquery-pjax/jquery.pjax.js"></script>
<script src="${pageContext.request.contextPath }/vendor/tether/dist/js/tether.js"></script>
<script src="${pageContext.request.contextPath }/vendor/bootstrap/js/dist/util.js"></script>
<script src="${pageContext.request.contextPath }/vendor/bootstrap/js/dist/collapse.js"></script>
<script src="${pageContext.request.contextPath }/vendor/bootstrap/js/dist/dropdown.js"></script>
<script src="${pageContext.request.contextPath }/vendor/bootstrap/js/dist/button.js"></script>
<script src="${pageContext.request.contextPath }/vendor/bootstrap/js/dist/tooltip.js"></script>
<script src="${pageContext.request.contextPath }/vendor/bootstrap/js/dist/alert.js"></script>
<script src="${pageContext.request.contextPath }/vendor/slimScroll/jquery.slimscroll.js"></script>
<script src="${pageContext.request.contextPath }/vendor/slimScroll/jquery.slimscroll.min.js"></script>
<script src="${pageContext.request.contextPath }/vendor/widgster/widgster.js"></script>
<script src="${pageContext.request.contextPath }/vendor/pace.js/pace.js" data-pace-options='{ "target": ".content-wrap", "ghostTime": 1000 }'></script>
<script src="${pageContext.request.contextPath }/vendor/jquery-touchswipe/jquery.touchSwipe.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap-fix/button.js"></script>

<!-- common app js -->
<script src="${pageContext.request.contextPath }/js/settings.js"></script>
<script src="${pageContext.request.contextPath }/js/app.js"></script>

<!-- page specific libs -->
<script id="test" src="${pageContext.request.contextPath }/vendor/underscore/underscore.js"></script>
<script src="${pageContext.request.contextPath }/vendor/jquery.sparkline/index.js"></script>
<script src="${pageContext.request.contextPath }/vendor/jquery.sparkline/index.js"></script>
<script src="${pageContext.request.contextPath }/vendor/d3/d3.min.js"></script>
<script src="${pageContext.request.contextPath }/vendor/rickshaw/rickshaw.min.js"></script>
<script src="${pageContext.request.contextPath }/vendor/raphael/raphael-min.js"></script>
<script src="${pageContext.request.contextPath }/vendor/jQuery-Mapael/js/jquery.mapael.js"></script>
<script src="${pageContext.request.contextPath }/vendor/jQuery-Mapael/js/maps/usa_states.js"></script>
<script src="${pageContext.request.contextPath }/vendor/jQuery-Mapael/js/maps/world_countries.js"></script>
<script src="${pageContext.request.contextPath }/vendor/bootstrap/js/dist/popover.js"></script>
<script src="${pageContext.request.contextPath }/vendor/bootstrap_calendar/bootstrap_calendar/js/bootstrap_calendar.min.js"></script>
<script src="${pageContext.request.contextPath }/vendor/jquery-animateNumber/jquery.animateNumber.min.js"></script>

<!-- page specific js -->
<script src="${pageContext.request.contextPath }/js/index.js"></script>