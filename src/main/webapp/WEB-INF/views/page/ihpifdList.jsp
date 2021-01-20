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
			            <a href="/ihpndList"><i class="icon-chevron-right"></i>내항 여객선 운항 데이터</a>
			        </li>
			        <li>
			            <a href="/ihprd1List"><i class="icon-chevron-right"></i>내항 여객선 항로 조류 데이터</a>
			        </li>
			        <li>
			            <a href="/ihprd2List"><i class="icon-chevron-right"></i>내항 여객선 항로 조석 데이터</a>
			        </li>
			        <li>
			            <a href="/ihprd3List"><i class="icon-chevron-right"></i>내항 여객선 항로 통항선박 데이터</a>
			        </li>
			        <li>
			            <a href="/ihpifdList"><i class="icon-chevron-right"></i>내항 여객선 항로 위해요소 데이터</a>
			        </li>
			        <li>
			            <a href="/ihppdList"><i class="icon-chevron-right"></i>내항 여객선 기항지 데이터</a>
			        </li>
			        <li>
			            <a href="/ihpmncdList"><i class="icon-chevron-right"></i>내항 여객선 월별 운항통제 데이터</a>
			        </li>
			    </ul>
			</div>
			<!--/span-->
			<div class="span10" id="content">
				<div class="row-fluid">
					<!-- block -->
					<div class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left">내항 여객선 항로 위해요소 데이터</div>
						</div>
						<form action="/excel/upload" method="POST" enctype="multipart/form-data" id="frm">
						   	<input type="hidden" name="excelType" value="ihpifd">
                           	<input type="file" name="file">
					      	<button type="button" onclick="frmSubmit()">전송</button>
					    </form>
					    <form action="/dataClear" method="POST" id="clear">
					    	<input type="hidden" name="excelType" value="ihpifd">
					    	<button type="button" onclick="dataclear()">데이터 초기화</button>
					    </form>
					    <form action="/ihpifdExcelList" method="POST" id="download">
					    	<button type="button" onclick="download()">내려받기</button>
					    </form>
					    
					    
						<div class="block-content collapse in" style="overflow-x: scroll;">
							<div class="" style="width: max-content;">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>순번</th>
											<th>항로명칭</th>
											<th>위해요소<br>순번
											</th>
											<th>위해요소<br>종류
											</th>
											<th>위해요소<br>위도
											</th>
											<th>위해요소<br>경도
											</th>
											<th>위해요소<br>위치상세
											</th>
											<th>위해요소<br>내용
											</th>
											<th>위해요소<br>사진파일명
											</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${paging.totalCount - ((paging.pageNo-1) * paging.pageSize) - i.index}</td>
												<td>${list.RUTE_NM}</td>
												<td>${list.RISK_FCTR_NO}</td>
												<td>${list.RISK_FCTR_KND_CODE}</td>
												<td>${list.RISK_FCTR_LAT}</td>
												<td>${list.RISK_FCTR_LONG}</td>
												<td>${list.RISK_FCTR_POSC_DTL}</td>
												<td>${list.RISK_FCTR_CN}</td>
												<td>${list.RISK_FCTR_PHOTO}</td>
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
        	location.href='/ihpifdList?page=' + page;
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