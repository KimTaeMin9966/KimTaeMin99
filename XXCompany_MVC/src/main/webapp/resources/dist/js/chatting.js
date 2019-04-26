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
			var height = ($('#scroll > .direct-chat-msg').height() + 10) * ($('#scroll > .direct-chat-msg').length + 2);
			$('input[name=message]').val('');
			$('#scroll').scrollTop(height);
			$('#chatting').focus();
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
		}
	});
}