<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<br />
<div class="container">
	<div>
		<button class="btn btn-secondary" onclick="history.go(-1)">돌아가기</button>
		<c:if test="${board.user.id == principal.user.id }">
			<a href="/board/${board.id }/updateForm" class="btn btn-warning">수정 </a>
			<button id="btn-delete" class="btn btn-danger">삭제</button>
		</c:if>
	</div>
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
		<div class="card">
			<form>
				<input type="hidden" id="boardId" value="${board.id }"/>
				<div class="card-body">
					<div class="card-body">
						<textarea class="form-control" row="1" id="replyContent"></textarea>
					</div>
				</div>
				<div class="card-footer">
					<div class="card-footer">
						<button type="button" class="btn btn-primary" id="btn-reply-save">등록</button>
					</div>
				</div>
			</form>
		</div>
		<br/>
		<div class="card">
			<div class="card-header">댓글 리스트 ${principal.user.username }</div>
			<ul id="reply-box" class="list-group">
				<c:forEach var="reply" items="${board.replys }">
					<li id="reply-${reply.id}" class="list-group-item d-flex justify-content-between">
						<div>${reply.content }</div>
						<div class="d-flex">
							<div class="font-italic">${reply.user.username } &nbsp;</div>
							<c:if test="${principal.user.username == reply.user.username}">
								<button onclick="index.replyDelete(${board.id}, ${reply.id })" class="badge">삭제</button>
							</c:if>
						</diV>
					</li>
				</c:forEach>
			</ul>
		</div>
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


