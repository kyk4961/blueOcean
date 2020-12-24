<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="/WEB-INF/views/inc/header.jsp" %>
    <body>
        <%@ include file="/WEB-INF/views/inc/gnb.jsp" %>
        <div class="container-fluid">
            <div class="row-fluid">
                <%@ include file="/WEB-INF/views/inc/lnb.jsp" %>
                <!--/span-->
                <div class="span9" id="content">
                    <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">앱 푸쉬</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
  									<form class="form-horizontal">
                                      <fieldset>
                                        <legend>App push</legend>
                                        <div class="control-group">
                                        	<label class="control-label" for="typeahead">토큰</label>
                                          	<div class="controls">
                                            	<input type="text" class="span6" placeholder="토큰값을 입력하세요." id="token">
                                          	</div>
                                        </div>
                                        <div class="control-group">
                                        	<label class="control-label" for="typeahead">제목</label>
											<div class="controls">
											  <input type="text" class="span6" placeholder="제목을 입력하세요." id="title">
											</div>
                                        </div>
                                        <div class="control-group">
											<label class="control-label" for="textarea2">내용</label>
											<div class="controls">
											  <textarea class="input-xlarge textarea" placeholder="본문내용을 입력하세요." style="width: 810px; height: 200px" id="contents"></textarea>
											</div>
                                        </div>
										<div class="form-actions">
										  <button class="btn btn-primary" id="btnSave">저장</button>
										</div>
                                      </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                </div>
            </div>
            <hr>
        </div>
        <script>
        $(function() {
        	$('#btnSave').click(function(e){
    			e.preventDefault();
    			if($('#title').val() == ''){
    				swal('제목을 입력해주세요.');
    				return;
    			}
    	  		
    	  		if($('#contents').val() == ''){
    	  			swal('본문내용을 입력해주세요.');
    	  			return;
    	  		}
    	  		
    	  		$.ajax({
    	  			url: '/appPushProc',
    	  			data:{
    	  				title: $('#title').val()
    	  				, contents: $('#contents').val()
    	  				, token: $('#token').val()
    	  			},
    	  			method: 'POST',
    	  			success: function(result){
    	  				if(result.rtnCd == '200'){
    	  					swal('성공하였습니다.');
    	  					location.replace();
    	  				} else {
    	  					swal('오류가 발생하였습니다. 다시 시도해주세요.');
    	  		  			return;
    	  				}
    	  				
    	  			}
    	  		})
    		});
        });
        </script>
    </body>
</html>