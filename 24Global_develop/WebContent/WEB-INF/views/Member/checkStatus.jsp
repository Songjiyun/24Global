<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<fmt:requestEncoding value="utf-8"/>

<div class="content-wrap">
    <!-- main page content. the place to put widgets in. usually consists of .row > .col-lg-* > .widget.  -->
    <main id="content" class="content" role="main">
        <h1 class="page-title"><span class="fw-semi-bold">New Create Account</span></h1>
        <div class="row">
            <div class="col-lg-6" style="width: 100%;">
                <section class="widget">
                    <div class="widget-body">
                        <p class="mb-xs" style="text-align: center;">
                            <button type="button" class="btn btn-primary btn-lg mb-xs"
                            	style="width: 17rem; height: 66px;" onclick="location.href='personJoin.do'">개인</button>
                            <button type="button" class="btn btn-secondary btn-lg mb-xs"
                            style="width: 17rem; height: 66px;" onclick="location.href='companyJoin.do'">기업</button>
                        </p>
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

