/**
 * Made By KimTaeMin99
 */
function CommentSubmit(url, action) {
	var datas = {
		bno : $("#CommentBno").val(),
		writer : $("#CommentWriter").val(),
		comments : $("#CommentComments").val()
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

function CommentEdit(url, action) {
	var datas = {
		bno : $("#modelBno").val(),
		cno : $("#modelCno").val(),
		writer : $("#modelWriter").val(),
		comments : $("#modelComments").val()
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

function CommentGet(url, action, cno) {
	$.ajax({
		type : action,
		url : url + '/' + cno,
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : action
		},
		dataType : "JSON",
		success : function(result) {
			$("#modelBno").val(result.bno);
			$("#modelCno").val(result.cno);
			$("#modelWriter").val(result.writer);
			$("#modelComments").val(result.comments);
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
		}
	});
}

function BoardDelete(url, action, type) {
	if (type != null) {
		$.ajax({
			type : action,
			url : url,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : action
			},
			dataType : "text",
			success : function(result) {
				alert('성공');
				window.location = '/company/board?type=' + type
			},
			error : function(jqXHR, textStatus, errorThrown) {
				alert('덧글이 달린 게시물은 지울수 없습니다');
			}
		});
	} else {
		$.ajax({
			type : action,
			url : url,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : action
			},
			dataType : "text",
			success : function(result) {
				alert('성공');
				window.location = '/company/board'
			},
			error : function(jqXHR, textStatus, errorThrown) {
				alert('덧글이 달린 게시물은 지울수 없습니다');
			}
		});
	}
}