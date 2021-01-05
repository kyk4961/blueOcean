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
			            <a href="/fmdList"><i class="icon-chevron-right"></i>어선 측정 데이터</a>
			        </li>
			        <li>
			            <a href="/fehdList"><i class="icon-chevron-right"></i>어선 기관 마력 데이터</a>
			        </li>
			        
			    </ul>
			</div>
			<!--/span-->
			<div class="span10" id="content">
				<div class="row-fluid">
					<!-- block -->
					<div class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left">어선 기관 마력 데이터</div>
						</div>
						<form action="/excel/upload" method="POST" enctype="multipart/form-data" id="frm">
							<input type="hidden" name="excelType" value="fehd">
                           	<input type="file" name="file">
					      	<button onclick="frmSubmit()">전송</button>
					    </form>
						
						<div class="block-content collapse in" style="overflow-x: scroll;">
							<div class="" style="width: max-content;">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>주기관<br>종류코드
											</th>
											<th>주기관수</th>
											<th>기관출력</th>
											<th>기관출력</th>
											<th>총톤수</th>
											<th>선박용도</th>
											<th>선박용도구분</th>
											<th>선체재질코드</th>
											<th>진수일자</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${paging.totalCount - ((paging.pageNo-1) * paging.pageSize) - i.index}</td>
												<td>${list.MAIN_KIND}</td>
												<td>${list.MAIN_QTY}</td>
												<td>${list.MCE_KW}</td>
												<td>${list.MCE_PS}</td>
												<td>${list.GROSS_TONNAGE}</td>
												<td>${list.PURPOSE}</td>
												<td>${list.PURPOSE_GU}</td>
												<td>${list.NATURE}</td>
												<td>${list.LAUNCH_DATE}</td>
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
        	location.href='/fehdList?page=' + page;
        }
        
        function frmSubmit() {
        	if(confirm('업로드를 하면 입력된 데이터는 모두 초기화됩니다.\n 업로드 하시겠습니까?')){
        		$('#frm').submit();
        	}
        }
    </script>
</body>
</html>