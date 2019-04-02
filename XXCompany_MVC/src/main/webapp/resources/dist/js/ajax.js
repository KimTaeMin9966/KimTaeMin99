/**
 * Made By KimTaeMin99
 */
function CommentSubmit(url, action) {
	var datas = {
		bno : $("#bno").val(),
		writer : $("#writer").val(),
		comments : $("#comments").val()
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
			self.close();
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
			self.close();
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
			self.close();
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
			self.close();
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
			//self.close();
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
			self.close();
		}
	});
}

function dateCalc(data) {
	alert(data);
}