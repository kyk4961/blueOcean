<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/inc/header.jsp"%>
<body>
	<%@ include file="/WEB-INF/views/inc/gnb.jsp"%>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2" id="sidebar">
			    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
			    
			    	<li>
			            <a href="/ptfi1List"><i class="icon-chevron-right"></i>검사 대상 어선 정보</a>
			        </li>
			        
			        <li>
			            <a href="/ptfi2List"><i class="icon-chevron-right"></i>검사 대상 일반선 정보</a>
			        </li>
			    </ul>
			</div>
			<!--/span-->
			<div class="span10" id="content">
				<div class="row-fluid">
					<!-- block -->
					<div class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left">검사 대상 어선 정보</div>
						</div>
						<form action="/excel/upload" method="POST" enctype="multipart/form-data" id="frm">
						   	<input type="hidden" name="excelType" value="ptfi1">
                           	<input type="file" name="file">
					      	<button type="button" onclick="frmSubmit()">전송</button>
					    </form>
					    <div>
					    	<button type="button" onclick="dataclear()">데이터 초기화</button>
					    	<button type="button" onclick="download()">내려받기</button>
						    <form action="/dataClear" method="POST" id="clear">
						    	<input type="hidden" name="excelType" value="ptfi1">
						    </form>
						    <form action="/ptfi1ExcelList" method="POST" id="download">
						    </form>
					    </div>
					    
					    
						<div class="block-content collapse in" style="overflow-x: scroll;">
							<div class="" style="width: max-content;">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>순번</th>
											<th>구분</th>
											<th>총톤수</th>
											<th>길이</th>
											<th>너비</th>
											<th>깊이</th>
											<th>선질</th>
											<th>용도</th>
											<th>세부용도</th>
											<th>선적항</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${paging.totalCount - ((paging.pageNo-1) * paging.pageSize) - i.index}</td>
												<td>${list.SHIP_GUBUN}</td>
												<td>${list.GROSS_TONNAGE}</td>
												<td>${list.REG_LENGTH}</td>
												<td>${list.REG_BREADTH}</td>
												<td>${list.REG_DEPTH}</td>
												<td>${list.NATURE}</td>
												<td>${list.PURPOSE}</td>
												<td>${list.PURPOSE_GU}</td>
												<td>${list.REG_PORT}</td>
											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
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
					<!-- /block -->
				</div>
			</div>
		</div>
		<hr>
	</div>
	<script>
        function goPage(page){
        	location.href='/ptfi1List?page=' + page;
        }
        
        function frmSubmit() {
        	if(confirm('업로드 하시겠습니까?')){
        		$('#frm').submit();
        	}
        }
        
        function dataclear(){
        	if(confirm('데이터를 초기화 하시겠습니까?')){
        		$('#clear').submit();
        	}
        }
        
        function download(){
        	$('#download').submit();
        	
        }
        </script>
</body>
</html>