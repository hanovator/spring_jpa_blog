<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<br />
<div class="container">
	<form class="was-validated">
		<div class="form-group">
			<label for="username">Username:</label> <input type="text" class="form-control" id="username" placeholder="Enter username" name="username" required />
			<div class="valid-feedback">Valid.</div>
			<div class="invalid-feedback">Please fill out this field.</div>
		</div>
		<div class="form-group">
			<label for="password">Password:</label> <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required />
			<div class="valid-feedback">Valid.</div>
			<div class="invalid-feedback">Please fill out this field.</div>
		</div>
		<div class="form-group">
			<label for="email">email:</label> <input type="text" class="form-control" id="email" placeholder="Enter email" name="email" required />
			<div class="valid-feedback">Valid.</div>
			<div class="invalid-feedback">Please fill out this field.</div>
		</div>		
	</form>
	<button id="btn-save" class="btn btn-primary">회원가입</button>
</div>
<br />
<script src="/js/user.js"></script>
<%@ include file="/WEB-INF/views/layout/footer.jsp"%>


