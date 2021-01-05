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
							<div class="muted pull-left">검사 대상 어선 정보</div>
						</div>
						<div class="block-content collapse in" style="overflow-x: scroll;">
							<div class="" style="width: max-content;">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>순번</th>
											<th>선박번호</th>
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
												<td>${list.SHIP_NO}</td>
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
        	location.href='/ptfiList?page=' + page;
        }
        </script>
</body>
</html>