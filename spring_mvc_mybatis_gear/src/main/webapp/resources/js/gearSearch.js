/**
 *  gearSearch.js
 */
 
  $(document).ready(function(){
	$('#gearSearchForm').on('submit', function(){
		
		event.preventDefault();
		
		var formData = $(this).serialize();
		// serialize : 폼에 입력한 값을 쿼리스트링 방식의 데이터로 변환
		// type=prdName&keyword = 노트북
		
		$.ajax({
			type:"post",
			url:"gearSearch",
			data: formData,
			success:function(result){
				$('#searchResultBox').empty();
				$('#searchResultBox').append('<table id="resultTable" border="1" width="600">' +
																'<tr bgcolor="lightgray"><td>장비번호</td><td>장비명</td><td>장비메이커</td>' +
																'<td>카테고리</td>	<td>장비가격</td><td>장비재고</td></tr>');
				if(result == ""){
					$('#resultTable').append('<tr align="center"><td colspan="6">찾는 상품이 없습니다.</td></tr>');
				}else{
					for(let i = 0; i<result.length; i++){
						$('#resultTable').append('<tr><td>' + result[i].gearNo + '</td><td>' +
															result[i].gearName + '</td><td>' +
															result[i].gearMaker + '</td><td>' +
															result[i].gearCtg + '</td><td>' +
															result[i].gearPrice + '</td><td>' +
															result[i].gearQty + '</td></tr>' );

					}
				}
				$('#searchResultbox').append('</table>');
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	});	
});