<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <%@ include file="/WEB-INF/views/inc/header.jsp" %>
    <body>
        <%@ include file="/WEB-INF/views/inc/gnb.jsp" %>
        <div class="container-fluid">
            <div class="row-fluid">
                <%@ include file="/WEB-INF/views/inc/lnb.jsp" %>
                <!--/span-->
                <div class="span9" id="content">
                    <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">알람이력</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
  									<table class="table table-hover">
						              <thead>
						                <tr>
						                  <th>순번</th>
						                  <th>디바이스 ID</th>
						                  <th>알람코드</th>
						                  <th>알람내용</th>
						                  <th>등록날짜</th>
						                </tr>
						              </thead>
						              <tbody>
						              	<c:forEach var="list" items="${list}" varStatus="i">
							              	<tr>
	                                            <td>${paging.totalCount - ((paging.pageNo-1) * paging.pageSize) - i.index}</td>
	                                            <td>${list.deviceId}</td>
	                                            <td>${list.alarmCd}</td>
	                                            <td>${list.alarmMsg}</td>
	                                            <td>${list.createDt}</td>
	                                        </tr>
								        </c:forEach>
						                
						              </tbody>
                                    </table>
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
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                </div>
            </div>
            <hr>
        </div>
        <script>
        function goPage(page){
        	location.href='/alarmList?page=' + page;
        }
        </script>
    </body>
</html>