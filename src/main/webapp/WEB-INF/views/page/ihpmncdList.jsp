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
			            <a href="/ihprdList"><i class="icon-chevron-right"></i>내항 여객선 항로 데이터</a>
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
			        <li>
			            <a href="/ihpmrwdList"><i class="icon-chevron-right"></i>내항 여객선 주요 항로 기상 데이터</a>
			        </li>
			    </ul>
			</div>
			<!--/span-->
			<div class="span10" id="content">
				<div class="row-fluid">
					<!-- block -->
					<div class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left">내항 여객선 월별 운항통제 데이터</div>
						</div>
						<form action="/excel/upload" method="POST" enctype="multipart/form-data" id="frm">
						   	<input type="hidden" name="excelType" value="ihpmncd">
                           	<input type="file" name="file">
					      	<button onclick="frmSubmit()">전송</button>
					    </form>
						<div class="block-content collapse in" style="overflow-x: scroll;">
							<div class="" style="width: max-content;">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>순번</th>
											<th>연도</th>
											<th>월</th>
											<th>관할지사<br>명칭
											</th>
											<th>항로<br>순번
											</th>
											<th>항로<br>명칭
											</th>
											<th>통제일수<br>태풍
											</th>
											<th>통제일수<br>풍랑경보
											</th>
											<th>통제일수<br>풍랑주의보
											</th>
											<th>통제일수<br>기상악화
											</th>
											<th>통제일수<br>안개
											</th>
											<th>통제일수<br>기타
											</th>
											<th>휴항일수<br>선박검사
											</th>
											<th>휴항일수<br>선박정비
											</th>
											<th>휴항일수<br>기타
											</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${paging.totalCount - ((paging.pageNo-1) * paging.pageSize) - i.index}</td>
												<td>${list.YYYY}</td>
												<td>${list.MM}</td>
												<td>${list.PASNGR_SAFE_CNTER}</td>
												<td>${list.RUTE_NO}</td>
												<td>${list.RUTE_NM}</td>
												<td>${list.CTRL_TYPHOON}</td>
												<td>${list.CTRL_WDWV_WARN}</td>
												<td>${list.CTRL_WDWV_ADV}</td>
												<td>${list.CRTL_DTRT_WR}</td>
												<td>${list.CTRL_RSTC_VISIBIL}</td>
												<td>${list.CTRL_ETC}</td>
												<td>${list.NNAVI_ISPT}</td>
												<td>${list.NNAVI_IMPRMN}</td>
												<td>${list.NNAVI_ETC}</td>
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
        	location.href='/ihpmncdList?page=' + page;
        }
        
        function frmSubmit() {
        	if(confirm('업로드 하시겠습니까?')){
        		$('#frm').submit();
        	}
        }
        </script>
</body>
</html>