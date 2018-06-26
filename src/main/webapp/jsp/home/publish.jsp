<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <title>发布商品</title>
    <script src="${APP_PATH}/js/jquery-3.1.1.js"></script>
    <%--<link href="${APP_PATH}/AmazeUI-2.4.2/assets/css/amazeui.min.css" rel="stylesheet" type="text/css">--%>
    <%--<script src="${APP_PATH}/AmazeUI-2.4.2/assets/js/amazeui.min.js" type="text/javascript"></script>--%>
    <link href="${APP_PATH}/css/personal.css" rel="stylesheet" type="text/css">
    <link href="${APP_PATH}/css/infstyle.css" rel="stylesheet" type="text/css">

    <link href="${APP_PATH}/amazeui-3.0.0-alpha.beta/AmazeUIdemo/assets/css/amazeui.min.css" rel="stylesheet"
          type="text/css">
    <script src="${APP_PATH}/amazeui-3.0.0-alpha.beta/AmazeUIdemo/assets/js/amazeui.min.js"
            type="text/javascript"></script>

    <link href="${APP_PATH}/css/jquery.toast.min.css" rel="stylesheet">
    <script type="text/javascript" src="${APP_PATH}/js/jquery.toast.min.js"></script>
</head>

<body>
<!--头 -->
<header>
    <article>
        <div class="mt-logo">
            <!--顶部导航条 -->
            <div class="am-container header">
                <ul class="message-l">
                    <div class="topMessage">
                        <div class="menu-hd">
                            <a href="${APP_PATH}/toHome" target="_top" class="h">Hi,${sessionScope.username}</a> |
                            <a href="${APP_PATH}/Logout" target="_top" class="h">退出账号</a>
                        </div>
                    </div>
                </ul>
                <ul class="message-r">
                    <div class="topMessage home">
                        <div class="menu-hd"><a href="${APP_PATH}/toHome" target="_top" class="h">商城首页</a></div>
                    </div>
                    <div class="topMessage my-shangcheng">
                        <div class="menu-hd MyShangcheng"><a href="#" target="_top"><i
                                class="am-icon-user am-icon-fw"></i>个人中心</a>
                        </div>
                    </div>
                    <div class="topMessage mini-cart">
                        <li class="am-dropdown" data-am-dropdown>
                            <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
                                购物车 <span class="am-icon-caret-down"></span>
                            </a>
                            <ul class="am-dropdown-content" style="white-space: nowrap">
                                <li class="am-dropdown-header" >${sessionScope.username}的购物车</li>
                                <li class="am-divider"></li>
                                <li class="am-active"><a href="${APP_PATH}/toShopcart">前往购物车</a></li>
                                <li class="am-divider"></li>
                                <li><a href="#">网址不变且唯一</a></li>
                                <li><a href="#">内容实时同步更新</a></li>
                                <li><a href="#">云端跨平台适配</a></li>
                                <li><a href="#">专属的一键拨叫</a></li>
                            </ul>
                        </li>
                    </div>
                </ul>
            </div>
            <!--悬浮搜索框-->
            <div class="nav white">
                <div class="logoBig">
                    <li>
                        <a href="${APP_PATH}/toHome">
                            <img src="${APP_PATH}/static/picture/logoPro.png" style="height: 90px;width: 150px"/></a>
                    </li>
                </div>
                <div class="search-bar pr">
                    <a name="index_none_header_sysc" href="#"></a>
                    <form action="${APP_PATH}/Search" method="post">
                        <input id="searchInput" name="search" type="text" placeholder="搜索" autocomplete="off">
                        <input id="ai-topsearch" class="submit am-btn" value="搜索" type="submit">
                    </form>

                </div>
            </div>
            <div class="clear"></div>
        </div>
    </article>
</header>
<div class="nav-table">
    <div class="long-title"><span class="all-goods">发布商品</span></div>
    <div class="nav-cont">
        <ul>
            <li class="index"><a href="${APP_PATH}/toHome">首页</a></li>
        </ul>
    </div>
</div>
<b class="line"></b>
<div class="center">
    <div class="col-main">
        <div>
            <div class="user-info" s>
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">发布商品</strong> /
                        <small>goods&nbsp;release</small>
                    </div>
                </div>
                <hr/>
                <!--头像 -->
                <div class="user-infoPic">
                    <div class="filePic">
                        <img class="am-circle am-img-thumbnail" src="${APP_PATH}/images/getAvatar.do.jpg" alt=""/></div>
                    <p class="am-form-help">头像</p>
                    <div class="info-m">
                        <div><b>用户名：<i>${sessionScope.username}</i></b></div>
                        <div class="u-safety">
                            <a href="">
                                潮积分：
                                <span class="u-profile"><i class="bc_ee0000"
                                                           style="width: 60px">${sessionScope.userchaopoint}</i></span>
                            </a></div>
                    </div>
                </div>

                <div class="info-main">
                    <form id="addGoodsForm" action="${APP_PATH}/doPublish" method="post"
                          class="am-form am-form-horizontal" enctype="multipart/form-data">
                        <div class="am-form-group">
                            <label class="am-form-label">商品名称</label>
                            <div class="am-form-content">
                                <input type="text" placeholder="goodsname" id="goodsname" name="goodsname"></div>
                        </div>
                        <div class="am-form-group">
                            <label class="am-form-label">商品类别</label>
                            <div class="am-form-content">
                                <select id="classifyid" class="am-datepicker-select" data-am-selected>
                                    <c:forEach items="${requestScope.classifyList}" var="classifyList">
                                        <option value="${classifyList.classifyid}">${classifyList.classifyname}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label class="am-form-label">详细资料</label>
                            <div class="am-form-content">
                                <input type="text" placeholder="information" name="goodsinfo"></div>
                        </div>
                        <div class="am-form-group am-form-file">
                            <button type="button" class="am-btn am-btn-danger am-btn-sm">
                                <i class="am-icon-cloud-upload"></i> 选择要上传的图片
                            </button>
                            <input id="imageFile" name="imageFile" type="file" multiple>
                            <div id="file-list"></div>
                        </div>
                        <div class="am-form-group">
                            <label class="am-form-label">商品价格</label>
                            <div class="am-form-content" style="width:200px">
                                <input placeholder="￥(RMB)" type="text" id="goodsprice" name="goodsprice"></div>
                        </div>
                        <div class="am-form-group">
                            <label class="am-form-label">库存量</label>
                            <div class="am-form-content" style="width:200px">
                                <input placeholder="goodsnumber" type="text" id="goodsnumber" name="goodsnumber"></div>
                        </div>
                        <div class="info-btn">
                            <div id="addGoodsBtn" class="am-btn am-btn-danger">上架商品
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="footer ">
    <div class="footer-hd ">
        <p><a href="#">心潮工作室</a> <b>|</b> <a href="${APP_PATH}/toHome">商城首页</a> <b>|</b> <a href="# ">支付宝</a>
            <b>|</b>
            <a href="#">物流</a></p>
    </div>
    <div class="footer-bd ">
        <p><a href="# ">关于心潮</a> <a href="# ">合作伙伴</a> <a href="# ">联系我们</a> <a href="# ">网站地图</a> <em>© 2018-2038
            SimpleChange.com 版权所有.</em></p>
    </div>
</div>
</body>

</html>
<script>
    // $("#addGoodsBtn").click(function () {
    //     var form = new FormData(document.getElementById("addGoodsForm"));
    //     $.ajax({
    //         type:"post",
    //         url:"/doPublish",
    //         data: form,
    //         processData:false,
    //         contentType:false,
    //         success: function (result) {
    //             alert("success");
    //         }
    //     })
    // })

    $("#addGoodsBtn").click(function () {
        var form = new FormData(document.getElementById("addGoodsForm"));
        // $("#addGoodsForm").submit();

        var classifyidFkGoods = $("#classifyid option:selected").val();
        form.append('classifyid', classifyidFkGoods);

        $.ajax({
            type: "post",
            url: "/doPublish",
            data: form,
            // data: {
            //     goodsname: goodsname,
            //     classifyidFkGoods: classifyidFkGoods,
            //     image: image,
            //     goodsprice: goodsprice,
            //     goodsnumber: goodsnumber
            // },
            processData:false,
            contentType:false,
            success: function (result) {
                $("#addGoodsForm")[0].reset();
                if (result.code == 100) {
                    $.toast({
                        heading: "Success",
                        text: result.extend.msg,
                        showHideTransition: 'slide',
                        position: {
                            left: 750,
                            top: 220
                        },
                        icon: 'success'
                    })
                } else {
                    $.toast({
                        heading: "Fail",
                        text: result.extend.msg,
                        showHideTransition: 'fade',
                        position: {
                            left: 750,
                            top: 220
                        },
                        icon: 'error'
                    })
                }

            }
        })
    })
</script>
<script>
    $(function () {
        $('#imageFile').on('change', function () {
            var fileNames = '';
            $.each(this.files, function () {
                fileNames += '<span class="am-badge">' + this.name + '</span> ';
            });
            $('#file-list').html(fileNames);
        });
    });
</script>