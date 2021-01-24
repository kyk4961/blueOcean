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
							<div class="muted pull-left">내항 여객선 운항 데이터</div>
						</div>
						<form action="/excel/upload" method="POST" enctype="multipart/form-data" id="frm">
						   	<input type="hidden" name="excelType" value="ihpnd">
                           	<input type="file" name="file">
					      	<button type="button" onclick="frmSubmit()">전송</button>
					    </form>
					    <div>
					   		<button type="button" onclick="dataclear()">데이터 초기화</button>
					    	<button type="button" onclick="download()">내려받기</button>
					    
						    <form action="/dataClear" method="POST" id="clear">
						    	<input type="hidden" name="excelType" value="ihpnd">
						    </form>
						    <form action="/ihpndExcelList" method="POST" id="download">
						    </form>
					    </div>
					    
						<div class="block-content collapse in" style="overflow-x: scroll;">
							<div class="" style="width: max-content;">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>순번</th>
											<th>관할지사<br>명칭</th>
											<th>항로명칭</th>
											<th>운항여객선<br>순번</th>
											<th>운항여객선<br>명칭</th>
											<th>항해구역</th>
											<th>총톤수</th>
											<th>여객정원</th>
											<th>승무정원</th>
											<th>차량적재대수</th>
											<th>선종</th>
											<th>하계<br>일일운항횟수</th>
											<th>동계<br>일일운항횟수</th>
											<th>속력(노트)</th>
											<th>운항거리(마일)</th>
											<th>소요시간(분)</th>
											<th>기관1개당<br>추진력</th>
											<th>기관개수</th>
											<th>선박건조<br>년</th>
											<th>선박건조<br>월</th>
											<th>선박건조<br>일</th>
											<th>선사명</th>
											<th>여객선사진<br>순번</th>
											<th>여객선사진<br>파일명</th>
											<th>최초출항지<br>명칭</th>
											<th>중간기항지<br>순번</th>
											<th>중간기항지<br>명칭</th>
											<th>중간기항지<br>소요시간</th>
											<th>종점지</th>
											<th>종점지<br>소요시간</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${paging.totalCount - ((paging.pageNo-1) * paging.pageSize) - i.index}</td>
												<td>${list.CMPTNC_BROFFI_CODE}</td>
												<td>${list.RUTE_NM}</td>
												<td>${list.PSNSHP_NO}</td>
												<td>${list.PSNSHP_NM}</td>
												<td>${list.NVGT_ZONE_NM}</td>
												<td>${list.PSNSHP_GT}</td>
												<td>${list.PASNGR_PCAPA_CO}</td>
												<td>${list.LOADING_CREW_CO}</td>
												<td>${list.CAR_LOADNG_ABLTY_CO}</td>
												<td>${list.KDSHIP_NM}</td>
												<td>${list.SMR_NVG_CO}</td>
												<td>${list.WTR_NVG_CO}</td>
												<td>${list.VOYAGE_VE_NOTE}</td>
												<td>${list.RUTE_DSTNC}</td>
												<td>${list.REQRE_TIME}</td>
												<td>${list.MENGN_KW_OUTPT_PER_1SET}</td>
												<td>${list.MENGN_CO}</td>
												<td>${list.CNSTR_YEAR}</td>
												<td>${list.CNSTR_MONTH}</td>
												<td>${list.CNSTR_DAY}</td>
												<td>${list.SHPCPN_NM}</td>
												<td>${list.PSNSHP_PHOTO_NO}</td>
												<td>${list.PSNSHP_PHOTO_NM}</td>
												<td>${list.FRST_OPORT_PRT_NM}</td>
												<td>${list.MID_PORTCL_NO}</td>
												<td>${list.MID_PORTCL_NM}</td>
												<td>${list.MID_PORTCL_REQRE_TIME}</td>
												<td>${list.FNL_PORTCL_NM}</td>
												<td>${list.FNL_PORTCL_REQRE_TIME}</td>
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
        	location.href='/ihpndList?page=' + page;
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