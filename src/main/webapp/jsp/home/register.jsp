<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <title>注册</title>
    <script src="${APP_PATH}/js/jquery-3.1.1.min.js"></script>

    <link href="${APP_PATH}/amazeui-3.0.0-alpha.beta/AmazeUIdemo/assets/css/amazeui.min.css" rel="stylesheet"
          type="text/css">
    <script src="${APP_PATH}/amazeui-3.0.0-alpha.beta/AmazeUIdemo/assets/js/amazeui.min.js"
            type="text/javascript"></script>

    <link href="${APP_PATH}/css/dlstyle.css" rel="stylesheet" type="text/css">

    <%--<link href="${APP_PATH}/AmazeUI-2.4.2/assets/css/amazeui.min.css" rel="stylesheet"/>--%>
    <%--<script src="${APP_PATH}/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>--%>

    <link href="${APP_PATH}/css/jquery.toast.min.css" rel="stylesheet">
    <script type="text/javascript" src="${APP_PATH}/js/jquery.toast.min.js"></script>
</head>

<body>
<div class="login-boxtitle" style="height: 100px">
    <a href="${APP_PATH}/toLogin"><img alt="logo" src="${APP_PATH}/static/picture/logoPro.png"
                                       style="height: 100px"/></a>
</div>
<div class="res-banner" style="background: url(${APP_PATH}/static/picture/reg.jpg) center fixed;height: 700px">
    <div class="res-main">
        <div class="login-box" style="background-color:rgba(0,0,0,0.4);height: 500px">


            <form class="am-form" id="registerForm">
                <legend style="color: white;padding-bottom: 15px">加入我们</legend>
                <hr style="padding-bottom: 15px"/>
                <fieldset>
                    <div class="am-form-group am-form-icon am-form-feedback">
                        <input type="text" name="username" id="username" class="am-form-field"
                               minlength="3" maxlength="12" placeholder="输入用户名（3-12个字符）" required/>
                        <span style="display: none" class="am-icon-check"></span>
                    </div>
                    <div class="am-form-group am-form-icon am-form-feedback">
                        <input type="email" name="useremail" class="am-form-field"
                               id="useremail"
                               data-validation-message="输入地球上的电子邮箱撒"
                               placeholder="输入邮箱" required/>
                        <span style="display: none" class="am-icon-check"></span>
                    </div>
                    <div class="am-form-group am-form-icon am-form-feedback">

                        <input type="password" name="userpassword" class="am-form-field" id="userpassword"
                               placeholder="设置密码" required/>
                        <span style="display: none" class="am-icon-check"></span>
                    </div>
                    <div class="am-form-group am-form-icon am-form-feedback">

                        <input type="password" id="p2" placeholder="确认密码" class="am-form-field"
                               data-equal-to="#userpassword"
                               data-validation-message="密码对不上啊喂" required/>
                        <span style="display: none" class="am-icon-check"></span>
                    </div>
                    <div class="am-cf">
                        <input type="button" id="RegBtn" value="注册"
                                class="am-btn am-btn-primary am-btn-sm am-fl am-disabled">
                    </div>
                </fieldset>
            </form>

        </div>
    </div>
</div>
<div class="footer ">
    <div class="footer-hd ">
        <p><a href="#">心潮工作室</a> <b>|</b> <a href="${APP_PATH}/toHome">商城首页</a> <b>|</b> <a href="# ">支付宝</a> <b>|</b>
            <a
                    href="#">物流</a></p>
    </div>
    <div class="footer-bd ">
        <p><a href="#">关于心潮</a> <a href="# ">合作伙伴</a> <a href="# ">联系我们</a> <a href="# ">网站地图</a> <em>© 2018-2038
            SimpleChange.com 版权所有.</em></p>
    </div>
</div>

</body>

</html>
<script>
    /**
     * 注册表单校验
     */
    $(function () {
        $("#registerForm").validator({
            onValid: function (validity) {
                $(validity.field).closest('.am-form-group').find('.am-alert').hide();
                $(validity.field).closest('.am-form-group').find('.am-icon-check').show();
                $("#registerForm").find(".am-cf").find("#RegBtn").removeClass("am-disabled");
            },

            onInValid: function (validity) {
                var $field = $(validity.field);
                var $group = $field.closest('.am-form-group');
                var $alert = $group.find('.am-alert');
                // 使用自定义的提示信息 或 插件内置的提示信息
                var msg = $field.data('validationMessage') || this.getValidationMessage(validity);

                if (!$alert.length) {
                    $alert = $('<div class="am-alert am-alert-danger"></div>').hide().appendTo($group);
                }

                $alert.html(msg).show();
                $group.find('.am-icon-check').hide();
                $("#registerForm").find(".am-cf").find("#RegBtn").addClass("am-disabled");
            }
        });
    });

    <%--$('#username').blur(function () {--%>
    <%--var username= $('#username').val();--%>
    <%--console.log(username);--%>
    <%--$.ajax({--%>
    <%--url: '${APP_PATH}/checkUsername',--%>
    <%--type: 'POST',--%>
    <%--data: {"username":username},--%>
    <%--success: function (result) {--%>
    <%--console.log(result.code);--%>
    <%--if(result.code===200) {--%>
    <%--$.toast({--%>
    <%--heading: $('#username').val(),--%>
    <%--text: "用户名已存在",--%>
    <%--showHideTransition: 'slide',--%>
    <%--afterHidden: function () {--%>
    <%--window.location.reload();--%>
    <%--},--%>
    <%--hideAfter: 1000,--%>
    <%--position: 'top-right',--%>
    <%--})--%>
    <%--}--%>
    <%--}--%>
    <%--});--%>
    <%--});--%>

    <%--$('#useremail').blur(function () {--%>
    <%--var useremail= $('#useremail').val();--%>
    <%--console.log(useremail);--%>
    <%--$.ajax({--%>
    <%--url: '${APP_PATH}/checkUseremail',--%>
    <%--type: 'POST',--%>
    <%--data: {"useremail":useremail},--%>
    <%--success: function (result) {--%>
    <%--console.log(result.code);--%>
    <%--if(result.code===200) {--%>
    <%--$.toast({--%>
    <%--heading: $('#useremail').val(),--%>
    <%--text: "该邮箱已被注册",--%>
    <%--showHideTransition: 'slide',--%>
    <%--afterHidden: function () {--%>
    <%--window.location.reload();--%>
    <%--},--%>
    <%--hideAfter: 1000,--%>
    <%--position: 'top-right',--%>
    <%--})--%>
    <%--}--%>
    <%--}--%>
    <%--});--%>
    <%--});--%>

    $('#RegBtn').click(function () {
        if($('#p2').val()==null){
            $.toast({
                text: '请确认密码',
                showHideTransition: 'slide',
                hideAfter: false,
                position: 'top-right'
            })
            $('#p2').focus();
        }

        $.ajax({
            url: '${APP_PATH}/doRegister',
            type: 'POST',
            data: $('#registerForm').serialize(),
            success: function (result) {
                console.log(result.code);
                if (result.code === 100) {
                    $.toast({
                        heading: "Success",
                        text: 'Yes! 注册成功 <a href="${APP_PATH}/toLogin">登录</a>.',
                        showHideTransition: 'slide',
                        hideAfter: false,
                        position: 'top-right',
                        icon: 'success'
                    })
                } else {
                    $.toast({
                        heading: "Fail",
                        text: result.extend.msg+',如果有账号,请直接<a href="${APP_PATH}/toLogin">登录</a>.',
                        showHideTransition: 'slide',
                        hideAfter: false,
                        position: 'top-right'
                    })
                }
            }
        });
    })
</script>