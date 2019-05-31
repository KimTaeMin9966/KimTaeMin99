/**
 * for join 2018-08-29
 */

/**
 * 정규식 sample
 * var regexTitle = /^[\uac00-\ud7a3a-zA-Z]{2,12}$/;
 * var regexTitle = /^[\uac00-\ud7a3a-zA-Z\s0-9]{2,16}$/;
 * var regexTitle = /^[*]{2,20}$/;
 * var regexEmail =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
 * var regexID = /^[0-9a-zA-Z]{4,12}$/;
 * var regexPhone = /^[0-9]{3,4}[0-9]{4}$/;
 * var regexMobile = /^[0-9]{2,3}?[0-9]{3,4}?[0-9]{4}$/;
 * var regexBirth = /^[0-9]{2}[0-9]{2}[0-9]{2}$/;
 * var regexKey = /^[0-9]{5,6}$/;
 * var regexPass = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
 * var regexName = /^[\uac00-\ud7a3]{2,6}$/;
 * var regexDate = /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/;
 * var regexDateTime = /^[0-9]{2}:[0-9]{2}~[0-9]{2}:[0-9]{2}$/;
 * var regexPass = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
*/

$(document).ready(function() {
	// 페이지 로드후 바로 아이디 입력창으로 포커스를 준다
	$('#userid').focus();
	
	// 하이픈 없이 0 ~ 9까지 4자, 0 ~ 9까지 2자, 0 ~ 9까지 2자
	var regexJoindate = /^[0-9]{4}[0-9]{2}[0-9]{2}$/;
	
	// 영어 대소문자, 숫자 포함 8자리 ~ 16자리
	var regexPass = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,16}$/;

	var boolAdmID = false;
	var boolAdmJoindate = false;
	var boolAdmPass = false;
	var boolAdmAccept = false;
	
	function checkReg(el, tempVal, reg, message) {
		if (reg.test(tempVal) === false) { showErroMessage(el, message); return false; }
		else { showSuccessMessage(el, "사용가능합니다."); return true; }
	}

	function showErroMessage(el, message) {
		var html = "<span style='color:red'>";
		html += message;
		html += "</span>";
		$("#" + el).html(html);
	}

	function showSuccessMessage(el, message) {
		var html = "<span style='color:green'>";
		html += message;
		html += "</span>";
		$("#" + el).html(html);
	}
	
	// ---------------------------------------------------------
	
	$("#dbCheck").on("click", function() {
		var userid = $('#userid').val();
		var _csrf = $('#_csrf').val();
		
		if (userid != '' && userid != null) {
			$.ajax({
				type : 'POST',
				url : '/member/joinIdCheck',
				dataType : "text",
				data : { userid : userid, _csrf : _csrf },
				success : function(result) {
					if (result == "SUCCESS") { showSuccessMessage('userid_result', userid + '님 반갑습니다.'); $('#userid').attr('readonly', ''); boolAdmID = true; }
					else { showErroMessage('userid_result', userid + '의 이름은 이미 가입되어 있습니다.'); $("#userid").val(""); $('#userid').focus(); }
					boolAdmID = true;
				},
				error : function(jqXHR, textStatus, errorThrown) {
					alert("에러 발생 \n" + textStatus + " : " + errorThrown);
				}
			});
		} else {
			alert('아이디은 공백이 될수 없습니다.'); $('#userid').focus();
			return;
		}
	});
	
	$("#userpw").on("input", function() {
		var userpw = $("#userpw").val();

		var message = "올바른 비밀번호 형식이 아닙니다.";
		var booleanGet = checkReg('userpw_result', userpw, regexPass, message);
		boolAdmPass = booleanGet;
	});
	
	$("#userpw2").on("input", function() {
		var userpw = $("#userpw").val();
		var userpw2 = $("#userpw2").val();

		if(boolAdmPass && (userpw === userpw2)) { showSuccessMessage('userpw2_result', "비밀번호가 일치합니다."); }
		else { showErroMessage('userpw2_result', "비밀번호가 일치하지 않습니다."); }
	});
	
	$('#CLICK').click(function() {
		if (!boolAdmID) { alert('아이디을 확인해주세요'); $('#userid').focus(); }
		else if (!boolAdmPass) { alert('비밀번호를 확인해주세요'); $('#password1').focus(); }
		else { $('#registerFROM').submit(); }
	});
});
