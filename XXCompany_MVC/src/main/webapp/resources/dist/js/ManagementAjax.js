/**
 * 
 */

function authoritySave(url, action, userno) {
	var target = {
			auth: $('#authority_' + userno + ' > select').val(),
			userno: userno
	}

	$.ajax({
		type : action,
		url : url,
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : action
		},
		dataType : "text",
		data : JSON.stringify(target),
		success : function(result) {
			alert('저장완료');
			window.location.reload();
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
		}
	});
}

function infoShow(url, action) {
	$.ajax({
		type : action,
		url : url,
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : action
		},
		dataType : "json",
		success : function(result) {
			$('#modelAuth').text(result.auth);
			$('#modelAsername').text(result.username);
			$('#modelJoindate').text(result.joindate);
			$('#modelWorkload').text(null);
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
		}
	});
}

function infoDelete(url, action) {
	$.ajax({
		type : action,
		url : url,
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : action
		},
		dataType : "text",
		success : function(result) {
			alert('삭제완료');
			window.location.reload();
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
		}
	});
}