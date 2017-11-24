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
        <!-- <ol class="breadcrumb">
            <li></li>
            <li class="active">Member Join</li>
        </ol> -->
        <h1 class="page-title"><span class="fw-semi-bold">New Create Account</span></h1>
        <div class="row">
            <div class="col-lg-6" style="width: 100%;">
                <section class="widget">
                    <header>
                        <div class="widget-controls">
                            <a href="#"><i class="glyphicon glyphicon-cog"></i></a>
                            <a href="#"><button type="reset" class="fa fa-refresh"></button></a>
                            <a href="#" data-widgster="close"><i class="glyphicon glyphicon-remove"></i></a>
                        </div>
                    </header>
                    <div class="widget-body">
                        <form class="form-horizontal" role="form">
                            <fieldset>
                                <legend><strong>Horizontal</strong> form</legend>
                                <!-- 아이디 -->
                                <div class="form-group row">
                                    <label for="normal-field" class="col-md-4 form-control-label text-md-right" style="width: 24.333333%" >
                                    	아이디
                                   	</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                    	<div style="margin-bottom: 5px;">
	                                        <div style="width: 100%;">
	                                        	<input type="text" id="normal-field" class="form-control" placeholder="ID">
	                                        </div>
                                        </div>
                                        <div class="widget-body"><!-- ID 중복여부 체크 -->
							                <div class="alert alert-success alert-sm" id="makeId"><!-- 가능 --> 
							                    <span class="fw-semi-bold">사용가능 :</span> 사용하실 수 있는 아이디입니다.
							                </div>
							                <div class="alert alert-warning alert-sm" id="no-makeId"><!-- 불가능 -->
							                    <span class="fw-semi-bold">사용불가 :</span> 이미 사용중인 아이디입니다.
							                </div>
							            </div>
                                    </div>
                                </div>
                                <!-- 패스워드 -->
                                <div class="form-group row">
                                    <label class="col-md-4 control-label text-md-right" for="password-field" style="width: 24.333333%" >패스워드</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                            <input type="password" class="form-control" id="password-field" placeholder="패스워드">
                                        </div>
                                    </div>
                                </div>
                                <!-- 패스워드 재확인 -->
                                <div class="form-group row">
                                    <label class="col-md-4 control-label text-md-right" for="password-field" style="width: 24.333333%" >패스워드 재확인</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                            <input type="password" class="form-control" id="password-field" placeholder="패스워드 재확인">
                                        </div>
                                    </div>
                                </div>
                                <!-- 이름 -->
                                <div class="form-group row">
                                    <label for="prepended-input" class="col-md-4 control-label text-md-right" style="width: 24.333333%" >
                                    	이&nbsp;&nbsp;&nbsp;름
                                   	</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                            <input id="prepended-input" class="form-control" size="16" type="text" placeholder="Username">
                                        </div>
                                    </div>
                                </div>
                                <!-- 닉네임 -->
                                <div class="form-group row">
                                    <label for="normal-field" class="col-md-4 form-control-label text-md-right" style="width: 24.333333%" >
                                    	닉네임
                                   	</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                        <input type="text" id="normal-field" class="form-control" placeholder="Nick Name">
                                    </div>
                                </div>
                                <!-- 이메일 -->
                                <div class="form-group row">
                                    <label for="normal-field" class="col-md-4 form-control-label text-md-right" style="width: 24.333333%" >이메일</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                        <input type="text" id="Email" class="form-control">
                                    </div>
                                </div>
                                <!-- 휴대폰 번호 -->
                                <div class="form-group row">
                                    <label for="normal-field" class="col-md-4 form-control-label text-md-right" style="width: 24.333333%" >전화번호</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                        <input type="text" id="phone" class="form-control">
                                    </div>
                                </div>
                                <!-- 성별 -->
                                <div class="form-group row" style="padding-top: 4px;">
                            	<label for="normal-field" class="col-md-4 form-control-label text-md-right" style="width: 24.333333%" >성별</label>
	                                <div class="row">
                                         <div class="col-md-6">
                                             <div class="radio abc-radio abc-radio-danger" style="padding-top: 7px; margin-bottom: 0px;">
                                                 <input type="radio" name="radio2" id="radio3" value="option1">
                                                 <label for="radio3">남자</label>
                                                 <input type="radio" name="radio2" id="radio3" value="option1"  style="margin-left: 1.1rem">
                                                 <label for="radio3" style="margin-left: 33px;" >여자</label>
                                             </div>
                                         </div>
                                     </div>
                                </div>
                                <!-- 웹사이트 주소 -->
                                <div class="form-group row">
                                    <label for="normal-field" class="col-md-4 form-control-label text-md-right" style="width: 24.333333%" >URL</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                        <input type="text" id="normal-field" class="form-control" placeholder="WEB SITE URL">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="normal-field" class="col-md-4 form-control-label text-md-right" style="width: 24.333333%" >Normal field</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                        <input type="text" id="normal-field" class="form-control" placeholder="May have placeholder">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-4 control-label text-md-right" for="transparent-input" style="width: 24.333333%" >
                                        Append Transparent
                                    </label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                        <div class="input-group input-group-transparent">
                                            <input id="transparent-input" class="form-control" type="text">
                                            <span class="input-group-addon">
                                                <i class="fa fa-camera"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="form-actions">
                                <div class="row">
                                    <div class="col-md-offset-4 col-md-7">
                                        <button type="submit" class="btn btn-primary">Save Changes</button>
                                        <button type="button" class="btn btn-inverse">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </form>
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

