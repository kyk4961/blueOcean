<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <%@ include file="/WEB-INF/views/inc/header.jsp" %>
    <body>
        <div class="navbar navbar-fixed-top">
		    <div class="navbar-inner">
		        <div class="container-fluid">
		            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span class="icon-bar"></span>
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
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span3" id="sidebar">
				    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
				        <li>
				            <a href="">검사대상정보<i class="icon-chevron-right"></i></a>
				        </li>
				        <li>
				            <a href="">신청내역<i class="icon-chevron-right"></i></a>
				        </li>
				        <li>
				            <a href="">검사내역<i class="icon-chevron-right"></i></a>
				        </li>
				        <li>
				            <a href="">어선데이터<i class="icon-chevron-right"></i></a>
				        </li>
				        
				    </ul>
				</div>
                <!--/span-->
                <div class="span9" id="content">
                    <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left"></div>
                            </div>
                            <div class="block-content collapse in" style="height:500px">
                                <div class="span12">
                                	<table class="table table-hover">
						              <thead>
						                <tr>
						                </tr>
						              </thead>
						              <tbody>
						              </tbody>
                                    </table>
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
        function goPage(page){
        	location.href='/deviceList?page=' + page;
        }
        
        $(function(){
        	
			$('#btnDelete').click(function(e){
        		
        		var chkLen = $('input[name=chk]:checked').length;
                var idArray = '';
                if(chkLen > 0){
                    for(var i=0; i<chkLen; i++){
                        var id = $('input[name=chk]:checked').eq(i).val();
                        idArray = idArray + id + ',';
                    }
                    idArray = idArray.substring(0, idArray.length - 1);
                    
                    $.ajax({
    		  			url: '/deviceDelProc',
    		  			data:{
    		  				idArray: idArray
    		  			},
    		  			method: 'POST',
    		  			success: function(result){
    		  				if(result.rtnCd == '200'){
    		  					swal('삭제되었습니다.').then(function(){
    		  						location.reload();	
    		  					});
    		  					
    		  				} else {
    		  					swal('오류가 발생하였습니다. 다시 시도해주세요.');
    		  				}
    		  				
    		  			}
    		  		})
                    
                    
                } else {
                    alert('삭제할 항목를 선택해주세요.');
                    return;
                }
        	});
        })
        </script>
    </body>
</html>