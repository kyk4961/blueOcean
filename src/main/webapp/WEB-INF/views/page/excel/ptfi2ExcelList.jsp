<%@ page language="java" contentType="application/vnd.ms-excel; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	
	response.setHeader("Content-Disposition", "attachment; filename=" + new String(("검사대상일반선정보").getBytes("KSC5601"),"8859_1") + ".xls");
	response.setHeader("Content-Description", "JSP Generated Data"); 
	response.setContentType("application/vnd.ms-excel;charset=UTF-8");

%><!DOCTYPE html>
<html>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
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
												<td>${i.index+1}</td>
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
						
					</div>
					<!-- /block -->
				</div>
			</div>
		</div>
		<hr>
	</div>
	
</body>
</html>