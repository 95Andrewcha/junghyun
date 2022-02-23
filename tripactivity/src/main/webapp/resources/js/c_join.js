function Check_Join() {
    var form = document.CheckJoin;

    if (form.memName.value == "") {
        alert("이름을 입력하지 않았습니다.")
        form.memName.focus();
        return false;
    }

    if (form.memName.value.length < 2) {
        alert("이름을 2자 이상 입력해주십시오.")
        document.form.memName.focus();
        return false;
    }

    //아이디 입력여부 검사
    if (form.memId.value == "") {
        alert("아이디를 입력해주세요!")
        form.memId.focus();
        return false;
    }
    //아이디 유효성 검사 (영문소문자, 숫자만 허용)
    for (var i = 0; i < form.memId.value.length; i++) {
        ch = form.memId.value.charAt(i)
        if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')
                && !(ch >= 'A' && ch <= 'Z')) {
            alert("아이디는 영문 대소문자, 숫자만 입력가능합니다.")
            form.memId.focus();
            form.memId.select();
            return false;
        }
    }

    //아이디에 공백 사용하지 않기
    if (form.memId.value.indexOf(" ") >= 0) {
        alert("아이디에 공백을 사용할 수 없습니다.")
        form.memId.focus();
        form.memId.select();
        return false;
    }
    //아이디 길이 체크 (4~12자)
    if (form.memId.value.length<4 || form.memId.value.length>12) {
        alert("아이디를 4~12자까지 입력해주세요.")
        form.memId.focus();
        form.memId.select();
        return false;
    }

    //비밀번호 입력여부 체크
    if (form.memPwd.value == "") {
        alert("비밀번호를 입력하지 않았습니다.")
        form.memPwd.focus();
        return false;

    }
    if (form.memPwd.value == form.memId.value) {
        alert("아이디와 비밀번호가 같습니다.")
        form.memPwd.focus();
        return false;
    }
    //비밀번호 길이 체크(10자이상 허용)
    if (form.memPwd.value.length < 9) {
        alert("비밀번호를 10자이상 입력해주세요.")
        form.memPwd.focus();
        form.memPwd.select();
        return false;
    }
    //비밀번호 유효성 검사 (영문소문자, 숫자만 허용)
    for (var i = 0; i < form.memPwd.value.length; i++) {
        ch = form.memPwd.value.charAt(i)
        if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')
                && !(ch >= 'A' && ch <= 'Z')) {
            alert("비밀번호는 영문 대소문자, 숫자만 입력가능합니다.")
            form.memPwd.focus();
            form.memPwd.select();
            return false;
        }
    }
    //비밀번호와 비밀번호 확인 일치여부 체크
    if (form.memPwd.value != form.memPwd1.value) {
        alert("비밀번호가 일치하지 않습니다")
        form.memPwd1.value = ""
        form.memPwd1.focus();
        return false;
    }
    if (form.memEmail.value == "") {
        alert("이메일을 입력하지 않았습니다.")
        form.memEmail.focus();
        return false;
    }

    for (var i = 0; i < form.memEmail.value.length; i++) {
        chm = form.memEmail.value.charAt(i)
        if (!(chm >= '0' && chm <= '9') && !(chm >= 'a' && chm <= 'z')
                && !(chm >= 'A' && chm <= 'Z')) {
            alert("이메일은 영문 대소문자, 숫자만 입력가능합니다.")
            form.memEmail.focus();
            form.memEmail.select();
            return false;
        }
    }
    if (form.memPhoneNum.value == "") {
        alert("핸드폰번호를 입력하지 않았습니다..")
        form.memPhoneNum.focus();
        return false;
    }

    if (form.memPhoneNum1.value == "") {
        alert("핸드폰번호를 입력하지 않았습니다.")
        form.memPhoneNum1.focus();
        return false;
    }

    for (var i = 0; i < form.memPhoneNum1.value.length; i++) {
        ch = form.memPhoneNum1.value.charAt(i)
        if (!(ch >= '0' && ch <= '9')) {
            alert("핸드폰번호는 숫자만 입력가능합니다.")
            form.memPhoneNum1.focus();
            form.memPhoneNum1.select();
            return false;
        }
    }
    if (form.memPhoneNum2.value == "") {
        alert("핸드폰번호를 입력하지 않았습니다.")
        form.memPhoneNum2.focus();
        return false;
    }
    for (var i = 0; i < form.memPhoneNum2.value.length; i++) {
        ch = form.memPhoneNum2.value.charAt(i)
        if (!(ch >= '0' && ch <= '9')) {
            alert("핸드폰번호는 숫자만 입력가능합니다.")
            form.memPhoneNum2.focus();
            form.memPhoneNum2.select();
            return false;
        }
    }

    if (!agree1.checked) {

        alert("이용 약관 동의를 체크하세요.");
        agree1.focus();
        return false;
    }
    if (!agree2.checked) {

        alert("개인정보 수집 및 이용안내 동의를 체크하세요.");
        agree2.focus();
        return false;
    }

    form.submit();

}
function checkAllCheckbox(obj) {
    $("input[name='agree']").prop('checked', true);
    $("[name=agree]").prop("checked", $(obj).prop("checked"));

}
function checkOneCheckbox(obj) {
    var allObj = $("[name=full_agree]");
    var objName = $(obj).attr("name");

    if ($(obj).prop("checked")) {
        checkBoxLength = $("[name=" + objName + "]").length;
        checkedLength = $("[name=" + objName + "]:checked").length;

        if (checkBoxLength == checkedLength) {
            allObj.prop("checked", true);
        } else {
            allObj.prop("checked", false);
        }
    } else {
        allObj.prop("checked", false);
    }
}

$(function() {
    $("[name=full_agree]").click(function() {
        checkAllCheckbox(this);
    });
    $("[name=agree]").each(function() {
        $(this).click(function() {
            checkOneCheckbox($(this));
        });
    });
});

//아이디 중복체크 팝업창
function id_check() {
    window.open("idCheckForm.jsp", "idwin", "width=400, height=350");
}
//핸드폰 인증 팝업창
function phone_check() {
    window.open("phone_check.jsp", "phonewin", "width=400, height=350");
}