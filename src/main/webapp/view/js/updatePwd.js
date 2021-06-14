var flag_pwd = false;
var flag_email = false;
var flag_phone = false;
var flag_password = false;


$(document).ready(function () {
    check_password();
    check_email();
    check_pwd();
    check_phone();
   //check_all();
});

function check_password() {
    var $password = $("input[name='password']").blur();
    var reg = /^(?![^a-zA-Z]+$)(?!\\D+$).{6,16}$/;
    $password.blur(function () {
        if($password.val() == null || $password.val()==''){
            $("#check_password").html("密码不能为空").css("color","red");
        }
        else {
            if (!reg.test($password.val())) {
                $("#check_password").html("密码只能由6-16位数字和字母组合").css("color", "red");
                flag_password = false;
            } else {
                $("#check_password").html("√").css("color", "green");
                flag_password = true;
            }
        }

    });
}

function check_email() {
    var $email = $("input[name='email']").blur();
    $email.blur(function () {
        if($email.val()!=null&&$email.val()!=''){
            $.ajax({
                url:"../../../user/email_exit",
                data:{"email":$email.val()},
                dataType:"json",
                success:function (msg) {
                    if(msg){
                        flag_email = true;
                        $("#check_email").html("√").css("color","green");
                    }else{
                        flag_email = false;
                        $("#check_email").html("该email未注册").css("color","red");
                    }
                }
            });
        }
    });
}
function check_phone() {
    var $phone = $("input[name='phone']").blur();
    $phone.blur(function () {
        if($phone.val()!=null&&$phone.val()!=''){
            $.ajax({
                    url:"../../../user/phone_exit",
                    data:{"phone":$phone.val()},
                    dataType:"json",
                    success:function (msg) {
                        //   console.log(msg);
                        if(msg){
                            flag_phone = true;
                            $("#check_phone").html("√").css("color","green");
                        }else{
                            flag_phone = false;
                            $("#check_phone").html("该电话号码未注册").css("color","red");
                        }
                    }
                }

            );
        }
    });
}
function check_pwd() {

    var $pwd = $("input[name='pwd']").blur();
    var $password = $("input[name='password']").blur();


    $pwd.blur(function () {
        //console.log(password);
        if($pwd.val()!=$password.val()){
            $("#check_pwd").html("前后输入密码不一致").css("color","red");
            flag_pwd = false;
        }else{
            $("#check_pwd").html("√").css("color","green");
            flag_pwd = true;
        }

        console.log(flag_email+'     '+flag_phone);
    });
}


function my_form() {
    return flag_pwd&&flag_password&&(flag_phone||flag_email);
}

