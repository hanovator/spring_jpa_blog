let index = {
		
		init: function(){
			let _this = this
			
			$("#btn-save").on("click", ()=>{
				this.save();
			})
			
			$("#btn-update").on("click", ()=>{
				this.update();
			})
		},

		save: function(){
			let data = {
					username: $("#username").val(),
					password: $("#password").val(),
					email: $("#email").val()
			};
			
			$.ajax({
				type: "post",
				url: "/auth/joinProc",
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				dataType: "json"
			}).done(function(resp){
				console.log('res -- ', resp)
				if(resp.status == 200){
					alert("회원가입 완료");			
					location.href="/";		
				} else {
					alert("회원가입 실패");			
				}							
			}).fail(function(e){		
				alert("nono")
				alert(JSON.stringify(e));
			});
		},
		
		update: function(){
			let data = {
					id: $("#id").val(),
					username: $("#username").val(),
					password: $("#password").val(),
					email: $("#email").val()
			};
			
			$.ajax({
				type: "PUT",
				url: "/user",
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				dataType: "json"
			}).done(function(resp){
				console.log('res -- ', resp)
				alert("회원수정 완료");				
				location.href="/";				
			}).fail(function(e){		
				alert("nono")
				alert(JSON.stringify(e));
			});
		}
}

index.init();