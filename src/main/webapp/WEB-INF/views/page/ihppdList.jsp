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
							<div class="muted pull-left">내항 여객선 기항지 데이터</div>
						</div>
						<form action="/excel/upload" method="POST" enctype="multipart/form-data" id="frm">
						   	<input type="hidden" name="excelType" value="ihppd">
                           	<input type="file" name="file">
					      	<button type="button" onclick="frmSubmit()">전송</button>
					    </form>
					    <div>
					    	<button type="button" onclick="dataclear()">데이터 초기화</button>
					    	<button type="button" onclick="download()">내려받기</button>
						    <form action="/dataClear" method="POST" id="clear">
						    	<input type="hidden" name="excelType" value="ihppd">
						    </form>
						    <form action="/ihppdExcelList" method="POST" id="download">
						    </form>
					    </div>
					    
					    
						<div class="block-content collapse in" style="overflow-x: scroll;">
							<div class="" style="width: max-content;">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>순번</th>
											<th>항로명칭</th>
											<th>기항지<br>순번
											</th>
											<th>기항지명</th>
											<th>기항지<br>접안시설순번
											</th>
											<th>접안시설사진</th>
											<th>접안시설구분</th>
											<th>접안시설규모<br>길이
											</th>
											<th>접안시설규모<br>너비
											</th>
											<th>접안시설규모<br>높이
											</th>
											<th>접안선수방위</th>
											<th>거주구분</th>
											<th>거주인구</th>
											<th>편의시설<br>사진파일명
											</th>
											<th>편의시설<br>구분
											</th>
											<th>편의시설<br>수용인원
											</th>
											<th>매표소유무</th>
											<th>개관일</th>
											<th>기항여객선<br>순번
											</th>
											<th>기항여객선<br>명칭
											</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${paging.totalCount - ((paging.pageNo-1) * paging.pageSize) - i.index}</td>
												<td>${list.RUTE_NM}</td>
												<td>${list.PORTCL_NO}</td>
												<td>${list.PORTCL_NM}</td>
												<td>${list.PORTCL_BERTH_NO}</td>
												<td>${list.PORTCL_BERTH_PHOTO}</td>
												<td>${list.PORTCL_BERTH_KND}</td>
												<td>${list.BERTH_LT}</td>
												<td>${list.BERTH_BT}</td>
												<td>${list.BERTH_HG}</td>
												<td>${list.BERTH_HDG}</td>
												<td>${list.RESIDE_AT}</td>
												<td>${list.RESIDE_POPLTN_CO}</td>
												<td>${list.CNVNC_FCLTY_PHOTO}</td>
												<td>${list.CNVNC_FCLTY_KND}</td>
												<td>${list.CNVNC_FCLTY_NMPR_CO}</td>
												<td>${list.BKOFF_AT}</td>
												<td>${list.OP_DATE}</td>
												<td>${list.SLNETR_PSNSHP_NO}</td>
												<td>${list.SLNETR_PSNSHP_NM}</td>
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
        	location.href='/ihppdList?page=' + page;
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