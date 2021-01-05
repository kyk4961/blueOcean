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
							<div class="muted pull-left">내항 여객선 주요 항로 기상 데이터</div>
						</div>
						<div class="block-content collapse in" style="overflow-x: scroll;">
							<div class="" style="width: max-content;">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>순번</th>
											<th>항로명칭</th>
											<th>기상정보순번</th>
											<th>시각</th>
											<th>기상측정<br>위도
											</th>
											<th>기상측정<br>경도
											</th>
											<th>풍향</th>
											<th>풍속</th>
											<th>파고</th>
											<th>풍속<br>통제기준
											</th>
											<th>파고<br>통제기준
											</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${paging.totalCount - ((paging.pageNo-1) * paging.pageSize) - i.index}</td>
												<td>${list.RUTE_NM}</td>
												<td>${list.WR_INFO_NO}</td>
												<td>${list.WR_OBSV_TM}</td>
												<td>${list.WR_OBSV_LAT}</td>
												<td>${list.WR_OBSV_LONG}</td>
												<td>${list.WIND_DIR}</td>
												<td>${list.WIND_SPD}</td>
												<td>${list.WVHGT}</td>
												<td>${list.RST_WIND_SPD}</td>
												<td>${list.RST_WVHGT}</td>
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
        	location.href='/ihpmrwdList?page=' + page;
        }
        </script>
</body>
</html>