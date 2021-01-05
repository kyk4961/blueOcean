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
			<%@ include file="/WEB-INF/views/inc/lnb.jsp"%>
			<!--/span-->
			<div class="span10" id="content">
				<div class="row-fluid">
					<!-- block -->
					<div class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left">어선 측정 데이터</div>
						</div>
						<div class="block-content collapse in" style="overflow-x: scroll;">
							<div class="" style="width: max-content;">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>순번</th>
											<th>신청구분</th>
											<th>선적항</th>
											<th>선박종류</th>
											<th>선질</th>
											<th>조선지</th>
											<th>진수일</th>
											<th>총톤수</th>
											<th>Lt</th>
											<th>Bt</th>
											<th>Dm</th>
											<th>Ds</th>
											<th>C</th>
											<th>LOA</th>
											<th>폐위장소의합계용적</th>
											<th>상갑판아래의용적</th>
											<th>상갑판위합계용적</th>
											<th>제외장소합계용적</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${paging.totalCount - ((paging.pageNo-1) * paging.pageSize) - i.index}</td>
												<td>${list.APPL_GUBUN}</td>
												<td>${list.REG_PORT}</td>
												<td>${list.SHIP_GUBUN}</td>
												<td>${list.NATURE}</td>
												<td>${list.SBUILDER_ADD}</td>
												<td>${list.LAUNCH_DATE}</td>
												<td>${list.GROSS_TONNAGE}</td>
												<td>${list.MEASURED_LEN}</td>
												<td>${list.MEASURED_BREAD}</td>
												<td>${list.MEASURED_DPTM}</td>
												<td>${list.MEASURED_DPTS}</td>
												<td>${list.MEASURED_CTR}</td>
												<td>${list.MEASURE_LEN}</td>
												<td>${list.TOT_BULK}</td>
												<td>${list.TOT_DN_BULK}</td>
												<td>${list.TOT_UP_BULK}</td>
												<td>${list.EXPT_TOT_BULK}</td>
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
        	location.href='/fmdList?page=' + page;
        }
        </script>
</body>
</html>