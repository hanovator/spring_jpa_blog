let index = {
		
		init: function(){
			let _this = this
			
			$("#btn-save").on("click", ()=>{
				this.save();
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
				alert("회원가입 완료");				
				location.href="/";				
			}).fail(function(e){		
				alert("nono")
				alert(JSON.stringify(e));
			});
		}
}

index.init();