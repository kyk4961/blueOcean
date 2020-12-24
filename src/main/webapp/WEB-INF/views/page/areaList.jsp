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
                                <div class="muted pull-left">위험지역 목록</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                	<div class="btn-group">
                                		<button class="btn btn-success" id="btnSample">샘플 다운로드</button>
									</div>
									<div class="btn-group">
                                		<button class="btn btn-success" id="btnUpload">엑셀 업로드</button>
										<input type="file" id="excelFile" onchange="excelExport(event)" style="display:none;"/>
									</div>
									<div class="btn-group">
                                		<button class="btn" id="btnDelete">선택 삭제</button>
									</div>
									<div>
										<span>일괄업로드시 최대 1000개까지 가능합니다.</span>
									</div>
  									<table class="table table-hover">
						              <thead>
						                <tr>
						                	<th>선택</th>
											<th>순번</th>
											<th>지역명</th>
											<th>위도</th>
											<th>경도</th>
											<th>퍼센트</th>
											<th>등록날짜</th>
						                </tr>
						              </thead>
						              <tbody>
						                <c:forEach var="list" items="${list}" varStatus="i">
							              	<tr>
							              		<td>
							              			<label class="chk${i.index}">
		                                              <input class="uniform_on" type="checkbox" id="chk${i.index}" name="chk" value="${list.idx}">
		                                            </label>
							              		</td>
	                                            <td>${paging.totalCount - ((paging.pageNo-1) * paging.pageSize) - i.index}</td>
	                                            <td>${list.areaNm}</td>
	                                            <td>${list.lat}</td>
	                                            <td>${list.lng}</td>
	                                            <td>${list.percent}</td>
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
        	location.href='/areaList?page=' + page;
        }
        function excelExport(event){
        	var input = event.target;
    	    var reader = new FileReader();
    	    reader.onload = function(){
    	        var fileData = reader.result;
    	        var wb = XLSX.read(fileData, {type : 'binary'});
    	        wb.SheetNames.forEach(function(sheetName){
    		        var rowObj = XLSX.utils.sheet_to_json(wb.Sheets[sheetName]);
    		        var latStr = '';
    		        var lngStr = '';
    		        
    		        if(rowObj.length > 1000){
    		        	swal('최대 등록건수는 1000개 입니다.');
    		        	return;
    		        }
    		        
    		        for(var i=0; i<rowObj.length; i++){
    		        	latStr = latStr + rowObj[i].LAT + '|';
    		        	lngStr = lngStr + rowObj[i].LNG + '|';
    		        	percStr = percStr + rowObj[i].PERCENT + '|';
    		        }
    		        latStr = latStr.substring(0, latStr.length - 1);
    		        lngStr = lngStr.substring(0, lngStr.length - 1);
    		        percStr = percStr.substring(0, percStr.length - 1);
    		    	
    		        $.ajax({
    		  			url: '/areaRegProc',
    		  			data:{
    		  				lat: latStr
    		  				, lng: lngStr
    		  				, percent: percStr
    		  			},
    		  			method: 'POST',
    		  			success: function(result){
    		  				if(result.rtnCd == '200'){
    		  					swal('등록성공.').then(function(){
    		  						$("#excelFile").val("");
    		  						location.reload();
    		  					});
    		  					
    		  				} else {
    		  					swal('오류가 발생하였습니다. 다시 시도해주세요.');
    		  				}
    		  				
    		  			}
    		  		})
    	        })
    	    };
    	    reader.readAsBinaryString(input.files[0]);
        }
        $(function(){

        	$('#btnSample').click(function(e){
        		e.preventDefault();
        		location.href="/excelDown";
        	});
        	
        	$('#btnUpload').click(function(e){
        		e.preventDefault();
        		$('#excelFile').trigger('click');
        	});
        	
        	
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
    		  			url: '/areaDelProc',
    		  			data:{
    		  				idArray: idArray
    		  			},
    		  			method: 'POST',
    		  			success: function(result){
    		  				if(result.rtnCd == '200'){
    		  					swal('삭제되었습니다.');
    		  					location.replace();
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
        	
        });
        </script>
    </body>
</html>