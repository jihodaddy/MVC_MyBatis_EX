/**
 * gearNoCheck.js
 */
 
 $(document	).ready(function(){
	$('#gearNoCheckBtn').on('click', function(){
		
		event.preventDefault();
		
		$.ajax({
				type:"post",
				url:"gearNoCheck",
				data:{"gearNo": $('#gearNo').val()},  /* 컨트롤러에서 받을 때 : gearNo로 받음*/
				dataType:'text',
				success:function(result){
				if(result == "no_use"){
					alert("사용할 수 없는 번호입니다.");
				}else{
				    alert("사용 가능한 번호입니다.");
			 }
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
			
			
		}); //ajax
		
		
	}) // 중복확인 버튼 이벤트
	
}); //전체