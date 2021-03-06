<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <title>地址管理</title>
    <script src="${APP_PATH}/js/jquery-3.1.1.js"></script>

    <link href="${APP_PATH}/amazeui-3.0.0-alpha.beta/AmazeUIdemo/assets/css/amazeui.min.css" rel="stylesheet" type="text/css">
    <script src="${APP_PATH}/amazeui-3.0.0-alpha.beta/AmazeUIdemo/assets/js/amazeui.min.js" type="text/javascript"></script>

    <%--<link href="${APP_PATH}/AmazeUI-2.4.2/assets/css/amazeui.min.css" rel="stylesheet"/>--%>
    <%--<script src="${APP_PATH}/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>--%>

    <link href="${APP_PATH}/css/personal.css" rel="stylesheet" type="text/css">
    <link href="${APP_PATH}/css/addstyle.css" rel="stylesheet" type="text/css">
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
                            <div class="menu-hd MyShangcheng"><a href="${APP_PATH}/toUserInfo" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a>
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
            </div>
        </article>
    </header>
    <div class="nav-table">
        <div class="long-title"><span class="all-goods">全部分类</span></div>
        <div class="nav-cont">
            <ul>
                <li class="index"><a href="#">首页</a></li>
            </ul>
            <div class="nav-extra"> <i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的潮积分 <i class="am-icon-angle-right" style="padding-left: 10px;"></i> </div>
        </div>
    </div> <b class="line"></b>
    <div class="center">
        <div class="col-main">
            <div class="main-wrap">
                <div class="user-address">
                    <!--标题 -->
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">地址管理</strong> / <small>Address&nbsp;list</small></div>
                    </div>
                    <hr/>
                    <ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">
                        <li class="user-addresslist defaultAddr"> <span class="new-option-r"><i class="am-icon-check-circle"></i>默认地址</span>
                            <p class="new-tit new-p-re"> <span class="new-txt">小叮当</span> <span class="new-txt-rd2">159****1622</span> </p>
                            <div class="new-mu_l2a new-p-re">
                                <p class="new-mu_l2cw"> <span class="title">地址：</span> <span class="province">湖北</span>省 <span class="city">武汉</span>市 <span class="dist">洪山</span>区 <span class="street">雄楚大道666号(中南财经政法大学)</span></p>
                            </div>
                            <div class="new-addr-btn"> <a href="#"><i class="am-icon-edit"></i>编辑</a> <span class="new-addr-bar">|</span> <a href="javascript:void(0);" onclick="delClick(this);"><i class="am-icon-trash"></i>删除</a> </div>
                        </li>
                    </ul>
                    <div class="clear"></div> <a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
                    <!--例子-->
                    <div class="am-modal am-modal-no-btn" id="doc-modal-1">
                        <div class="add-dress">
                            <!--标题 -->
                            <div class="am-cf am-padding">
                                <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add&nbsp;address</small></div>
                            </div>
                            <hr/>
                            <div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
                                <form class="am-form am-form-horizontal">
                                    <div class="am-form-group">
                                        <label for="user-name" class="am-form-label">收货人</label>
                                        <div class="am-form-content">
                                            <input type="text" id="user-name" placeholder="收货人"> </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="user-phone" class="am-form-label">手机号码</label>
                                        <div class="am-form-content">
                                            <input id="user-phone" placeholder="手机号必填" type="email"> </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label class="am-form-label">所在地</label>
                                        <div class="am-form-content address">
                                            <select data-am-selected>
                                                <option value="a">浙江省</option>
                                                <option value="b" selected>湖北省</option>
                                            </select>
                                            <select data-am-selected>
                                                <option value="a">温州市</option>
                                                <option value="b" selected>武汉市</option>
                                            </select>
                                            <select data-am-selected>
                                                <option value="a">瑞安区</option>
                                                <option value="b" selected>洪山区</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="user-intro" class="am-form-label">详细地址</label>
                                        <div class="am-form-content">
                                            <textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea> <small>100字以内写出你的详细地址...</small> </div>
                                    </div>
                                    <div class="am-form-group">
                                        <div class="am-u-sm-9 am-u-sm-push-3"> <a class="am-btn am-btn-danger">保存</a> <a href="javascript: void(0)" class="am-close am-btn am-btn-danger" data-am-modal-close>取消</a> </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <script type="text/javascript">
                    $(document).ready(function() {
                        $(".new-option-r").click(function() {
                            $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
                        });
                        var $ww = $(window).width();
                        if ($ww > 640) {
                            $("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
                        }
                    })

                </script>
                <div class="clear"></div>
            </div>
            <!--      底部      -->
            <div class="footer ">
                <div class="footer-hd ">
                    <p><a href="#">心潮工作室</a> <b>|</b> <a href="${APP_PATH}/toHome">商城首页</a> <b>|</b> <a href="# ">支付宝</a> <b>|</b> <a href="#">物流</a></p>
                </div>
                <div class="footer-bd ">
                    <p><a href="# ">关于心潮</a> <a href="# ">合作伙伴</a> <a href="# ">联系我们</a> <a href="# ">网站地图</a> <em>© 2018-2038
            SimpleChange.com 版权所有.</em></p>
                </div>
            </div>
        </div>
        <aside class="menu">
            <ul>
                <li class="person"> <a href="${APP_PATH}/toUserInfo" style="font-size: 16px">个人中心</a> </li>
                <hr/>
                <li class="person" style="font-size: 15px;font-weight: bold"> 个人资料
                    <hr/>
                    <ul>
                        <li> <a href="${APP_PATH}/toUserInfo">个人信息</a></li>
                        <li class="active"> <a href="${APP_PATH}/toAddress">收货地址</a></li>
                    </ul>
                </li>
                <li class="person" style="font-size: 15px;font-weight: bold"> 我的交易
                    <hr/>
                    <ul>
                        <li><a href="${APP_PATH}/toOrderItem">订单管理</a></li>
                    </ul>
                    <ul>
                        <li><a href="${APP_PATH}/toPublish">发布商品</a></li>
                    </ul>
                    <ul>
                        <li><a href="${APP_PATH}/toGoodsManage">管理我的商品</a></li>
                    </ul>
                </li>
                <li class="person" style="font-size: 15px;font-weight: bold"> 我的资产
                    <hr/>
                    <ul>
                        <li> <a href="${APP_PATH}/toBill">账单明细</a></li>
                    </ul>
                </li>
            </ul>
        </aside>
    </div>
</body>

</html>
