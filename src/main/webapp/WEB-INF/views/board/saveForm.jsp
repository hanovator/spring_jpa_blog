<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<br />
<div class="container">
	<form>
		<div class="form-group">
			<label for="title">Title</label> 
			<input type="text" class="form-control" id="title" placeholder="Enter title" name="title" required />
		</div>
		<div class="form-group">
			<label for="content">Content</label>
			<textarea class="form-control summernote" rows="5" id="content" name="content"></textarea>
		</div>		
	</form>
	<button class="btn btn-primary btn-save" id="btn-save"">글쓰기 완료</button>
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


