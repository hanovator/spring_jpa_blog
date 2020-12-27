<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<br />
<div class="container">
	<form>
		<input type="hidden" id="id" value="${board.id} }">
		<div class="form-group">
			<label for="title">Title</label> 
			<input type="text" value="${board.title }" class="form-control" id="title" placeholder="Enter title" name="title" required />
		</div>
		<div class="form-group">
			<label for="content">Content</label>
			<textarea class="form-control summernote" rows="5" id="content" name="content">${board.content }</textarea>
		</div>		
	</form>
	<button class="btn btn-primary btn-save" id="btn-update"">글쓰기 수정</button>
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


