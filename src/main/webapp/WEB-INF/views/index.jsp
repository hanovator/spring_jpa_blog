<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<br />
<c:choose>
	<c:when test="${boards.content.size() == 0 }">
		<div class="container">내용이 존재하지 않습니다.</div>
	</c:when>
	<c:otherwise>
		<c:forEach var="board" items="${boards.content }">
			<div class="container">
				<div class="card m-2">
					<div class="card-body">
						<h4 class="card-title">${board.title }</h4>
						<a href="/board/${board.id }" class="btn btn-primary">상세보기</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</c:otherwise>
</c:choose>


<ul class="pagination justify-content-center" id="pagination"></ul>
<br />

<script>

	function searchParam(key) {
		return new URLSearchParams(location.search).get(key);
	};

	$(function() {
		var totalNum = "${totalNum }"
		var pageData = $('#pagination').html();
		var pageNum = searchParam('page') ? (parseInt(searchParam('page'))+1) : 1;
		$('#pagination').twbsPagination('destroy');
		$('#pagination').twbsPagination({
			totalPages : totalNum,
			visiblePages : 10,
			startPage : parseInt(pageNum),
			onPageClick : function(event, page) {
				console.info(page + ' (from options)');
			}
		}).on('page', function(event, page) {
			location.href = "?page=" + (page - 1) + ""
		})
	});
</script>
<%@ include file="/WEB-INF/views/layout/footer.jsp"%>


