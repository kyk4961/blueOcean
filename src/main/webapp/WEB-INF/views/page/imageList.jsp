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
			    </ul>
			</div>
			<!--/span-->
			<div class="span10" id="content">
				<div class="row-fluid">
					<!-- block -->
					<div class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left">이미지업로드</div>
						</div>
						<form action="/image/upload" method="POST" enctype="multipart/form-data" id="frm">
							<input type="hidden" name="excelType" value="stpd">
                           	<input type="file" name="file" multiple="multiple">
					      	<button type="button" onclick="frmSubmit()">전송</button>
					    </form>
						<div class="block-content collapse in" style="overflow-x: scroll;">
							<div class="" style="width: max-content;">
								<table class="table table-hover">
									<%-- <thead>
										<tr>
											<th>순번</th>
											<th>조회명</th>
											<th>검사지사</th>
											<th>접수일자</th>
											<th>수량</th>
											<th>단위</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${paging.totalCount - ((paging.pageNo-1) * paging.pageSize) - i.index}</td>
												<td>${list.FEE_GB}</td>
												<td>${list.OFFICE_GUBUN}</td>
												<td>${list.ACCT_DATE}</td>
												<td>${list.MANU_QTY}</td>
												<td>${list.MANUF_UNIT}</td>
											</tr>
										</c:forEach>

									</tbody> --%>
								</table>
							</div>
						</div>
						<%-- <jsp:include page="/WEB-INF/views/inc/paging.jsp" flush="true">
							<jsp:param name="firstPageNo" value="${paging.firstPageNo}" />
							<jsp:param name="prevPageNo" value="${paging.prevPageNo}" />
							<jsp:param name="startPageNo" value="${paging.startPageNo}" />
							<jsp:param name="pageNo" value="${paging.pageNo}" />
							<jsp:param name="endPageNo" value="${paging.endPageNo}" />
							<jsp:param name="nextPageNo" value="${paging.nextPageNo}" />
							<jsp:param name="finalPageNo" value="${paging.finalPageNo}" />
						</jsp:include> --%>
					</div>
					<!-- /block -->
				</div>
			</div>
		</div>
		<hr>
	</div>
	<script>
        function goPage(page){
        	location.href='/stpdList?page=' + page;
        }
        
        function frmSubmit() {
        	if(confirm('업로드 하시겠습니까?')){
        		$('#frm').submit();
        	}
        }
        </script>
</body>
</html>