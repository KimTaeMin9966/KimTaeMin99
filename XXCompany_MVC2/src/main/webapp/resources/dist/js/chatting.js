/**
 * 
 */

function ChattingSend(url, action) {
	var datas = {
			writer: $('input[name=writer]').val(),
			chat: $('input[name=message]').val()
	}
	if (datas.chat == null || datas.chat == '') {
		alert('공백으로 대화 할수 없습니다');
		return;
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
			$('.box-body').load('/chatting/home .direct-chat-messages', function() {
				$('#scroll').scrollTop(height);
				$('#chatting').focus();
			});
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
		}
	});
}