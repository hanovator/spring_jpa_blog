<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<br/>
<div class="container">
	<form action="/auth/loginProc" method="post" class="was-validated">
		<div class="form-group">
			<label for="username">Username:</label> <input type="text" class="form-control" id="username" placeholder="Enter username" name="username" required/>
			<div class="valid-feedback">Valid.</div>
			<div class="invalid-feedback">Please fill out this field.</div>
		</div>
		<div class="form-group">
			<label for="password">Password:</label> <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required/>
			<div class="valid-feedback">Valid.</div>
			<div class="invalid-feedback">Please fill out this field.</div>
		</div> 	
<!-- 		<div class="form-group form-check">
			<label class="form-check-label"> <input class="form-check-input" type="checkbox" name="remember" required />Remember me
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Check this checkbox to continue.</div>
			</label>
		</div>		 -->
		<button class="btn btn-primary" id="btn-login"">로그인</button>
		<a href="https://kauth.kakao.com/oauth/authorize?client_id=0cae828dc6e3a4d55550fca2efc9e195&redirect_uri=http://localhost:8000/auth/kakao/callback&response_type=code"><img src="/image/kakao_button.png"/></a>
	</form>
</div>
<br/> 
<script src="/js/user.js"></script>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>


