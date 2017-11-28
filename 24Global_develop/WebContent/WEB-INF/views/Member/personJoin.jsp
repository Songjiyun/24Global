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
                            	style="width: 17rem; height: 66px;" id="person">개인</button>
                            <button type="button" class="btn btn-secondary btn-lg mb-xs"
                            style="width: 17rem; height: 66px;" id="company">기업</button>
                        </p>
                    </div>
                    <!-- 개인 / 기업별 회원가입 -->
                    <script type="text/javascript">
                    $('#person').click(function () {
						$('#makeAccountform').show();
					});
                    </script>
                    <div class="widget-body" id="makeAccountform">
                        <form class="form-horizontal" role="form" id="join">
                            <fieldset>
                                <legend>
                                	<strong>기업 회원가입<input type="text" value="기업 회원가입"></strong>
                               	</legend>
                                <!-- 아이디 -->
                                <div class="form-group row">
                                    <label for="normal-field" class="col-md-4 form-control-label text-md-right" style="width: 24.333333%" >
                                    	아이디 (*)
                                   	</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                    	<div style="margin-bottom: 5px;">
	                                        <div style="width: 100%;">
	                                        	<input type="text" id="normal-field" class="form-control" name="u_id">
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
							            <!-- ID 중복여부체크 -->
							            <script type="text/javascript">
							            	$('#makeId').hide();
							            	$('#no-makeId').hide();
							            	
							            	$('[name=u_id]').keyup(function () {
							            		var testinput = $('[name=u_id]').val();
							            		$.ajax({
								                    type : "POST",
								                    data : { 
								                       "u_id"  : $('[name="u_id"]').val(),
								                    },
								                    url : "./checkId.do",
								                    success : function(data) {
								                    	var confirm = data;
								                    	if(confirm == 'okay'){
								                    		$('#makeId').show();
								                    		$('#no-makeId').hide();
								                    	}else {
								                    		$('#no-makeId').show();
								                    		$('#makeId').hide();
								                    	}
								                    },
								                    error : function(status, error) {
								                       alert("통신불가");
								                    }
								                 });
											});
							            </script>
                                    </div>
                                </div>
                                <!-- 패스워드 -->
                                <div class="form-group row">
                                    <label class="col-md-4 control-label text-md-right" for="password-field" style="width: 24.333333%" >패스워드 (*)</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                            <input type="password" class="form-control" id="password-field" name="u_pw" placeholder="패스워드">
                                        </div>
                                    </div>
                                </div>
                                <!-- 패스워드 재확인 -->
                                <div class="form-group row">
                                    <label class="col-md-4 control-label text-md-right" for="password-field" style="width: 24.333333%" >패스워드 재확인 (*)</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                            <input type="password" class="form-control" id="passwordtype" placeholder="패스워드 재확인" name="replayconfirmPassword">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row" id="dialogForPassword">
                                	<input type="text" readonly style="border: 0px; width:74.333333%; float: right;" name="passwordmessage">
                                </div>
                                <!-- 패스워드 일치여부 -->
                                <script type="text/javascript">
                                	$('#dialogForPassword').hide();
                                	var confirmpassword = "";
                                	$('[name=u_pw]').focusout(function () {
                                		confirmpassword = $('[name=u_pw]').val();
                                	});
                                	$('[name=replayconfirmPassword]').keyup(function () {
                                		var replayconfirmPassword = $('[name=replayconfirmPassword]').val();
                                		if(confirmpassword != replayconfirmPassword){
                                			$('#dialogForPassword').show();
                                			$('[name=passwordmessage]').val('일치하지 않습니다.');
                                		}else{
                                			$('#dialogForPassword').show();
                                			$('[name=passwordmessage]').val('일치합니다.');
                                		}
                                	});
                                </script>
                                <!-- 이름 -->
                                <div class="form-group row">
                                    <label for="prepended-input" class="col-md-4 control-label text-md-right" style="width: 24.333333%" >
                                    	이&nbsp;&nbsp;&nbsp;름 (*)
                                   	</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                            <input id="prepended-input" class="form-control" size="16" type="text" name="u_name">
                                        </div>
                                    </div>
                                </div>
                                <!-- 성별 -->
                                <div class="form-group row" style="padding-top: 4px;">
                            	<label for="normal-field" class="col-md-4 form-control-label text-md-right" style="width: 24.333333%" >성별</label>
	                                <div class="row">
                                         <div class="col-md-6">
                                             <div class="radio abc-radio abc-radio-danger" style="padding-top: 7px; margin-bottom: 0px;">
                                                 <input type="radio" name="u_gender" id="radio3" value="남자">
                                                 <label for="radio3">남자</label>
                                                 <input type="radio" name="u_gender" id="radio3" value="여자"  style="margin-left: 1.1rem">
                                                 <label for="radio3" style="margin-left: 33px;" >여자</label>
                                             </div>
                                         </div>
                                     </div>
                                </div>
                                <!-- 닉네임 -->
                                <div class="form-group row">
                                    <label for="normal-field" class="col-md-4 form-control-label text-md-right" style="width: 24.333333%" >
                                    	닉네임 (*)
                                   	</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                        <input type="text" id="normal-field" class="form-control" placeholder="Nick Name" name="u_nickname">
                                    </div>
                                </div>
                                <!-- 이메일 -->
                                <div class="form-group row">
                                    <label for="normal-field" class="col-md-4 form-control-label text-md-right" style="width: 24.333333%" >이메일</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                        <input type="text" id="Email" class="form-control" name="u_email">
                                    </div>
                                </div>
                                <!-- 휴대폰 번호 -->
                                <div class="form-group row">
                                    <label for="normal-field" class="col-md-4 form-control-label text-md-right" style="width: 24.333333%" >전화번호</label>
                                    <div class="col-md-7" style="width: 67.333333%">
                                        <input type="text" id="phone" class="form-control" name="u_phone">
                                    </div>
                                </div>
                            </fieldset>
                            <div class="form-actions">
                                <div class="row">
                                    <div class="col-md-offset-4 col-md-7">
                                        <button class="btn btn-primary" id="confirmjoin">회원가입</button>
                                        <button type="reset" class="btn btn-inverse">취소</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <!-- 폼 빈칸 -->
                        <script type="text/javascript">
                        $('#confirmjoin').click(function () {
	                        formCheck();
						});
						function formCheck() {
							$.each(["u_id", "u_pw", "u_name", "u_nickname", "u_phone"], function( i, joinObject ){
								var joinObjects = $('[name='+joinObject+']').val();
								if(joinObjects == ""){
									$('[name='+joinObject+']').focus();
								};
	                       	});
						};
                        </script>
                    </div>
                    <!-- 기업 / 개인 -->
                    <script type="text/javascript">
                    	$('#makeAccountform').hide();
                    </script>
                </section>
            </div>
        </div>
    </main>
</div>

<!-- The Loader. Is shown when pjax happens -->
<div class="loader-wrap hiding hide">
    <i class="fa fa-circle-o-notch fa-spin-fast"></i>
</div>

