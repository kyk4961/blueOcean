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
							<div class="muted pull-left">내항 여객선 항로 데이터</div>
						</div>
						<form action="/excel/upload" method="POST" enctype="multipart/form-data" id="frm">
						   	<input type="hidden" name="excelType" value="ihprd">
                           	<input type="file" name="file">
					      	<button onclick="frmSubmit()">전송</button>
					    </form>
						<div class="block-content collapse in" style="overflow-x: scroll;">
							<div class="" style="width: max-content;">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>순번</th>
											<th>관할지사<br>명칭
											</th>
											<th>항로명칭</th>
											<th>항로구간<br>순번
											</th>
											<th>항로구간명</th>
											<th>조류<br>최강창조류<br>(유항)
											</th>
											<th>조류<br>최강창조류<br>(유속)
											</th>
											<th>조류<br>최강낙조류<br>(유항)
											</th>
											<th>조류<br>최강낙조류<br>(유속)
											</th>
											<th>조석기항지<br>순번
											</th>
											<th>조석기항지<br>명칭
											</th>
											<th>조석<br>삭망
											</th>
											<th>조석<br>양현
											</th>
											<th>조석<br>평균항
											</th>
											<th>조석<br>조시차
											</th>
											<th>주요통항선박<br>순번
											</th>
											<th>주요통항선박<br>유형
											</th>
											<th>주요통항선박<br>내용
											</th>
											<th>항로<br>사진파일명
											</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${paging.totalCount - ((paging.pageNo-1) * paging.pageSize) - i.index}</td>
												<td>${list.CMPTNC_BROFFI_CODE}</td>
												<td>${list.RUTE_NM}</td>
												<td>${list.RUTE_SCTN_NO}</td>
												<td>${list.RUTE_SCTN_NM}</td>
												<td>${list.MAX_FLOOD_DIR}</td>
												<td>${list.MAX_FLOOD_RATE}</td>
												<td>${list.MIN_FLOOD_DIR}</td>
												<td>${list.MIN_FLOOD_RATE}</td>
												<td>${list.TIDE_PORTCL_NO}</td>
												<td>${list.TIDE_PORTCL_NM}</td>
												<td>${list.TIDE_SYNDC}</td>
												<td>${list.TIDE_FLQM}</td>
												<td>${list.TIDE_STRD_PORTCL}</td>
												<td>${list.TIDE_TIME_DIFF}</td>
												<td>${list.SAIL_VSL_NO}</td>
												<td>${list.SAIL_VSL_KND}</td>
												<td>${list.SAIL_VSL_CN}</td>
												<td>${list.NVGT_CHRT_PHOTO_NM}</td>
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
        	location.href='/ihprdList?page=' + page;
        }
        
        function frmSubmit() {
        	if(confirm('업로드를 하면 입력된 데이터는 모두 초기화됩니다.\n 업로드 하시겠습니까?')){
        		$('#frm').submit();
        	}
        }
        </script>
</body>
</html>