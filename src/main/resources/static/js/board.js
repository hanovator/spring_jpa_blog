let index = {
		
		init: function(){
			let _this = this
			
			$("#btn-save").on("click", ()=>{
				this.save();
			})
			
			$("#btn-delete").on("click", ()=>{
				this.deleteById();
			})
			
			$("#btn-update").on("click", ()=>{
				this.updateById();
			})
		},

		save: function(){
			let data = {
					title: $("#title").val(),
					content: $("#content").val()
			};
			
			$.ajax({
				type: "post",
				url: "/api/board",
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				dataType: "json"
			}).done(function(resp){
				console.log('res -- ', resp)
				alert("글쓰기 완료");				
				location.href="/";				
			}).fail(function(e){		
				alert("nono")
				alert(JSON.stringify(e));
			});
		},
		
		deleteById: function(){
			let id = $("#id").text()
			
			$.ajax({
				type: "DELETE",
				url: "/api/board/"+id,
				dataType: "json"
			}).done(function(resp){
				console.log('res -- ', resp)
				alert("삭제 완료");				
				location.href="/";				
			}).fail(function(e){		
				alert("nono")
				alert(JSON.stringify(e));
			});
		}, 
		
		updateById: function(){
			let id = $("#id").text()
			
			let data = {
					title: $("#title").val(),
					content: $("#content").val()
			};
			
			$.ajax({
				type: "PUT",
				url: "/api/board/"+id,
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				dataType: "json"
			}).done(function(resp){
				console.log('res -- ', resp)
				alert("수정 완료");				
				location.href="/";				
			}).fail(function(e){		
				alert("nono")
				alert(JSON.stringify(e));
			});
		}, 
}

index.init();