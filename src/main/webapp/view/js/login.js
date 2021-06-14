$(document).ready(function () {
    check();
});
function check() {
    var $err_name = $("input[name='name']").blur();
    var $err_pwd = $("input[name='password']").blur();

   console.log($err_name.val());
    $err_name.blur(function () {
        console.log($err_name.val()+'123');

        if ($err_name.val() == null || $err_name.val() == '') {
            $("#err_name").html("用户名不能为空！").css("color", "red");
        } else {
            $("#err_name").html("√").css("color", "green");
        }
    });
    $err_pwd.blur(function () {
        if ($err_pwd == null || $err_pwd == '') {
            $("#err_pwd").html("密码不能为空！").css("color", "red");
        } else {
            $("#err_pwd").html("√").css("color", "green");
        }
    });
}
