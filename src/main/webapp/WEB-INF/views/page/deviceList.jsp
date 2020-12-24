<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <div class="muted pull-left">디바이스 목록</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                	<div class="btn-group">
                                		<button class="btn" id="btnDelete">선택 삭제</button>
									</div>
									
  									<table class="table table-hover">
						              <thead>
						                <tr>
						                	<th>선택</th>
											<th>순번</th>
											<th>디바이스 ID</th>
											<th>디바이스명칭</th>
											<th>토큰</th>
											<th>알림건수</th>
											<th>등록날짜</th>
						                </tr>
						              </thead>
						              <tbody>
						              	<c:forEach var="list" items="${list}" varStatus="i">
							              	<tr>
							              		<td>
							              			<label class="chk${i.index}">
		                                              <input class="uniform_on" type="checkbox" id="chk${i.index}" name="chk" value="${list.deviceId}">
		                                            </label>
							              		</td>
	                                            <td>${paging.totalCount - ((paging.pageNo-1) * paging.pageSize) - i.index}</td>
	                                            <td>${list.deviceId}</td>
	                                            <td>${list.deviceNm}</td>
	                                            <td>${list.token}</td>
	                                            <td style="text-align:center;">${list.alertCnt}</td>
	                                            <td>${list.createDt}</td>
	                                        </tr>
								        </c:forEach>
						                
						              </tbody>
                                    </table>
                                    <jsp:include page="/WEB-INF/views/inc/paging.jsp" flush="true">
									    <jsp:param name="firstPageNo" value="${paging.firstPageNo}" />
									    <jsp:param name="prevPageNo" value="${paging.prevPageNo}" />
									    <jsp:param name="startPageNo" value="${paging.startPageNo}" />
									    <jsp:param name="pageNo" value="${paging.pageNo}" />
									    <jsp:param name="endPageNo" value="${paging.endPageNo}" />
									    <jsp:param name="nextPageNo" value="${paging.nextPageNo}" />
									    <jsp:param name="finalPageNo" value="${paging.finalPageNo}" />
									</jsp:include>
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