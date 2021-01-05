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
							<div class="muted pull-left">내항 여객선 항로 위해요소 데이터</div>
						</div>
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
        </script>
</body>
</html>