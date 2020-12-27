<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<br />
<div class="container">
	<div>
		<p>글번호 : <span id="id"><i>${board.id }</i></span></p>
		<p>작성자 : <span><i>${board.user.username }</i></span></p>
	</div>
	<br/>
	<div class="form-group">
		<label for="title">Title</label>
		<h3>${board.title }</h3>
	</div>
	<hr/>
	<div class="form-group">
		<label for="content">Content</label>
		<div>${board.content }</div>
	</div>
	<div>
		<button class="btn btn-secondary" onclick="history.go(-1)">돌아가기</button>
		<c:if test="${board.user.id == principal.user.id }">
			<a href="/board/${board.id }/updateForm" class="btn btn-warning">수정 </a>
		    <button id="btn-delete" class="btn btn-danger">삭제</button>
	    </c:if>
	</div>
</div>
<br />

<script>
	$('.summernote').summernote({
		tabsize : 2,
		height : 300
	});
</script>
<script src="/js/board.js"></script>
<%@ include file="/WEB-INF/views/layout/footer.jsp"%>


