<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <%@ include file="/WEB-INF/views/inc/header.jsp" %>
  <body id="login">
    <div class="container">
      <form class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" class="input-block-level" id="id" placeholder="id" maxlength="50">
        <input type="password" class="input-block-level" id="pwd" placeholder="Password" maxlength="50">
        <button class="btn btn-large btn-primary" id="loginBtn">Sign in</button>
      </form>
    </div>
  </body>
  <script>
	$(function(){
		
		$("#pwd").keydown(function(key) {
            if (key.keyCode == 13) {
                $('#loginBtn').trigger('click');
            }
        });
		
		$('#loginBtn').click(function(e){
			e.preventDefault();
			if($('#id').val() == ''){
				swal('아이디를 입력해주세요.');
				return;
			}
	  		
	  		if($('#pwd').val() == ''){
	  			swal('비밀번호를 입력해주세요.');
	  			return;
	  		}
	  		
	  		$.ajax({
	  			url: '/loginProc',
	  			data:{
	  				id: $('#id').val()
	  				, pwd: $('#pwd').val()
	  			},
	  			method: 'POST',
	  			success: function(result){
	  				if(result.rtnCd == '200'){
	  					location.href = result.rtnObj.url;
	  				} else {
	  					swal('로그인정보가 올바르지 않습니다.');
	  		  			return;
	  				}
	  				
	  			}
	  		})
		});
  });
  </script>
</html>