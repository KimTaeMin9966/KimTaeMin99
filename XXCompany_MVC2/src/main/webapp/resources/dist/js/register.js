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
	$('#username').focus();
	
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
		var username = $("#username").val();
		
		if (username != '' && username != null) {
			$.ajax({
				type : 'POST',
				url : '/member/registerCheck',
				dataType : "text",
				data : { username : username },
				success : function(result) {
					if (result == "SUCCESS") { showSuccessMessage('username_result', username + '님 반갑습니다.'); $('#username').attr('readonly', ''); boolAdmID = true; }
					else { showErroMessage('username_result', username + '의 이름은 이미 가입되어 있습니다.'); $("#username").val(""); $('#username').focus(); }
					boolAdmID = true;
				},
				error : function(jqXHR, textStatus, errorThrown) {
					alert("에러 발생 \n" + textStatus + " : " + errorThrown);
				}
			});
		} else {
			alert("이름(아이디)은 공백이 될수 없습니다."); $('#username').focus();
			return;
		}
	});
	
	$("#joindate").on("input", function() {
		var mwpw = $("#joindate").val();

		var message = "올바른 형식이 아닙니다.";
		var booleanGet = checkReg('joindate_result', mwpw, regexJoindate, message);
		boolAdmJoindate = booleanGet;
	});
	
	$("#password1").on("input", function() {
		var mwpw = $("#password1").val();

		var message = "올바른 비밀번호 형식이 아닙니다.";
		var booleanGet = checkReg('password1_result', mwpw, regexPass, message);
		boolAdmPass = booleanGet;
	});
	
	$("#password2").on("input", function() {
		var mwpw = $("#password1").val();
		var mwpw2 = $("#password2").val();

		if(boolAdmPass && (mwpw === mwpw2)) { showSuccessMessage('password2_result', "비밀번호가 일치합니다."); }
		else { showErroMessage('password2_result', "비밀번호가 일치하지 않습니다."); }
	});
	
	$('#CLICK').click(function() {
		if (!boolAdmID) { alert('이름(아이디)을 확인해주세요'); $('#username').focus(); }
		else if (!boolAdmJoindate) { alert('입사일 확인해주세요'); $('#joindate').focus(); }
		else if (!boolAdmPass) { alert('비밀번호를 확인해주세요'); $('#password1').focus(); }
		else { $('#registerFROM').submit(); }
	});
});
