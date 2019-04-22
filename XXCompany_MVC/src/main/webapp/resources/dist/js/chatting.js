/**
 * 
 */

function ChattingSend(url, action) {
	var datas = {
			writer: $('input[name=writer]').val(),
			chat: $('input[name=message]').val()
	}
	$.ajax({
		type : action,
		url : url,
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : action
		},
		dataType : "text",
		data : JSON.stringify(datas),
		success : function(result) {
			window.location.reload();
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
		}
	});
}