<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>    

<html>
<head>
<tiles:insertAttribute name="header"/>
</head>

<body>
<!-- sidebar 영역 -->
<tiles:insertAttribute name="sidebar"/>

<!-- 상단바 영역 -->
<tiles:insertAttribute name="topbar"/>

<!-- 채팅창 -->
<tiles:insertAttribute name="chatbar"/>

<!-- main 실제 콘텐츠 영역 -->
<tiles:insertAttribute name="main"/>

<!-- JavaScript영역(페이지마다 조금씩 다름) -->
<tiles:insertAttribute name="jsAria"/>

</body>
</html>







