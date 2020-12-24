<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <%@ include file="/WEB-INF/views/inc/header.jsp" %>
  <body id="login">
    
  </body>
  <script>
	$(function(){
		swal('로그인 후 이용해주세요.').then(function(){
			location.href='/login';
		});
	});
  </script>
</html>