<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">관리자사이트<span class="icon-bar"></span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
            </a>
            <a class="brand" href="#"></a>
            <div class="nav-collapse collapse">
	            <ul class="nav pull-right">
	                
	            </ul>
	            <ul class="nav">
	                <li class="">
	                    <a href="/ptfiList">검사대상정보</a>
	                </li>
	                <li class="">
	                    <a href="/fprdList">어선검사 신청내역</a>
	                </li>
	                
	                <li class="">
	                    <a href="/stpdList">선박 검사내역</a>
	                </li>
	                
	                <li class="">
	                    <a href="/fmdList">어선데이터</a>
	                </li>
	                
	                <li class="">
	                    <a href="/ihpndList">여객선데이터</a>
	                </li>
	                
	                <li class="">
	                    <a href="/imgList">이미지 데이터</a>
	                </li> 
	            </ul>
	        </div>
        </div>
    </div>
</div>
<style type="text/css">
.table th {
    text-align: center;
    vertical-align: middle !important;
}
</style>
<script>
	function fn_logout() {
		$.ajax({
  			url: '/logoutProc',
  			data:{},
  			method: 'POST',
  			success: function(result){
  				if(result.rtnCd == '200'){
  					swal('로그아웃 되었습니다.').then(function(){
  						location.href = '/login';
  					});
  				} else {
  					swal('오류가 발생했습니다. 다시 시도해주세요.');
  		  			return;
  				}
  				
  			}
  		})
	}
	
</script>