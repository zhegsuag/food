var flag_username = false;
var flag_password = false;
var flag_pwd = false;
var flag_age = false;
var flag_name = false;
var flag_phone= false;
var flag_email= false;
var flag_address = false;
var flag__identity = false;
$(document).ready(function () {
    check_name();
    check_pwd();
    check_phone();
    check_age();
    check_username();
    check_address();
    check_email();
    check_identity();
    check_password();
});


function check_username(){
    var $username = $("input[name='loginName']").blur();

    $username.blur(function () {
        if($username.val() == null || $username.val() == ''){
            $("#check_loginName").html("用户名不能为空").css("color","red");
        }
       else  $.ajax({
                url:"../../../user/user_exit",
                data:{"username":$username.val()},
                dataType:"json",
                success:function (msg) {
                 //   console.log(msg);
                    if(msg){
                        flag_username = true;
                        $("#check_loginName").html("√").css("color","green");
                    }else{
                        flag_username = false;
                        $("#check_loginName").html("用户名已存在").css("color","red");
                    }
                 }
                }

            );

    });
}


function check_name(){
  var $name = $("input[name='userName']").blur();
  var reg= /[-\w\u4E00-\u9FA5]{4,10}/;

  $name.blur(function () {
      if(!reg.test($name.val())){
          flag_name = false;
          $("#check_name").html("名字格式不对").css("color","red");
      }else{
          flag_name = true;
          $("#check_name").html("√").css("color","green");
      }
  });

}


function check_password(){
    var $password = $("input[name='password']").blur();
    var reg = /^(?![^a-zA-Z]+$)(?!\\D+$).{6,16}$/;
    $password.blur(function () {
        if($password.val() == null || $password.val()==''){
            $("#check_password").html("密码不能为空").css("color","red");
        }


        if(!reg.test($password.val())){
            $("#check_password").html("密码只能由6-16位数字和字母组合").css("color","red");
            flag_password = false;
        }else{
            $("#check_password").html("√").css("color","green");
            flag_password = true;
        }
    });
}


function check_pwd(){

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
    });
}


function check_age(){
     var $age = $("input[name='age']").blur();
    var reg=/^(?:[1-9][0-9]?|1[01][0-9]|120)$/;
    $age.blur(function () {
        if($age.val()==null||$age.val()==''){
            $("#check_age").html("请输入年龄").css("color","red");
        }

        if(!reg.test($age.val())){
            $("#check_age").html("年龄只能在1-120之间").css("color","red");
            flag_age = false;
        }else{
            $("#check_age").html("√").css("color","green");
            flag_age = true;
        }
    });
}



function check_phone(){

    var $phone = $("input[name='phone']").blur();
    var reg=/^[0-9]{7,15}$/;;
    $phone.blur(function () {

        if(!reg.test($phone.val())){
            flag_phone = false;
            $("#check_phone").html("电话号码只能由7-15位数字组成").css("color","red");
        }else{
            flag_phone = true;
            $("#check_phone").html("√").css("color","green");
        }
    });
}


function check_address(){
   flag_address = true;
}


function check_email(){
    var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
  flag_email = true;
}



function check_identity(){
     flag__identity = true;
}
























function my_form() {
    return flag_email&&flag_password&&flag_pwd&&flag_username&&flag_phone&&flag_age;
}
