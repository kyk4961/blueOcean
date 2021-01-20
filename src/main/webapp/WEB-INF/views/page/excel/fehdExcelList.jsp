<%@ page language="java" contentType="application/vnd.ms-excel; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

	response.setHeader("Content-Disposition", "attachment; filename=" + new String(("어선기관마력데이터").getBytes("KSC5601"),"8859_1") + ".xls");
	response.setHeader("Content-Description", "JSP Generated Data"); 
	response.setContentType("application/vnd.ms-excel;charset=UTF-8");

%>
<!DOCTYPE html>
<html>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<!--/span-->
			<div class="span10" id="content">
				<div class="row-fluid">
					<!-- block -->
					<div class="block">
						<div class="block-content collapse in" style="overflow-x: scroll;">
							<div class="" style="width: max-content;">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>순번</th>
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
												<td>${i.index+1}</td>
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
					</div>
					<!-- /block -->
				</div>
			</div>
		</div>
		<hr>
	</div>
	
</body>
</html>