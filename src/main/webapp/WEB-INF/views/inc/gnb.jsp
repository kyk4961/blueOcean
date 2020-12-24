<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">관리자사이트<span class="icon-bar"></span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
            </a>
            <a class="brand" href="#">관리자사이트</a>
            <div class="nav-collapse collapse">
                <ul class="nav pull-right">
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" onclick="fn_logout();">Logout</a>
                        
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
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