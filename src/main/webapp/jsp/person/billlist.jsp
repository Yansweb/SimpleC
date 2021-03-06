<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <title>账单明细</title>
    <script src="${APP_PATH}/js/jquery-3.1.1.js"></script>

    <link href="${APP_PATH}/amazeui-3.0.0-alpha.beta/AmazeUIdemo/assets/css/amazeui.min.css" rel="stylesheet" type="text/css">
    <script src="${APP_PATH}/amazeui-3.0.0-alpha.beta/AmazeUIdemo/assets/js/amazeui.min.js" type="text/javascript"></script>

    <%--<link href="${APP_PATH}/AmazeUI-2.4.2/assets/css/amazeui.min.css" rel="stylesheet"/>--%>
    <%--<script src="${APP_PATH}/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>--%>

    <link href="${APP_PATH}/css/personal.css" rel="stylesheet" type="text/css">
    <link href="${APP_PATH}/css/bilstyle.css" rel="stylesheet" type="text/css">
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
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">账单明细</strong> / <small>Electronic&nbsp;bill</small></div>
                </div>
                <hr>
                <!--交易时间	-->
                <div class="order-time">
                    <label class="form-label">交易时间：</label>
                    <div class="show-input">
                        <select class="am-selected" data-am-selected>
                            <option value="today">今天</option>
                            <option value="sevenDays" selected="">最近一周</option>
                            <option value="oneMonth">最近一个月</option>
                            <option value="threeMonths">最近三个月</option>
                            <option class="date-trigger">自定义时间</option>
                        </select>
                    </div>
                    <div class="clear"></div>
                </div>
                <table width="100%">
                    <thead>
                        <tr>
                            <th class="memo"></th>
                            <th class="time">创建时间</th>
                            <th class="name">名称</th>
                            <th class="amount">金额</th>
                            <th class="action">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="img"> <i><img src="${APP_PATH}/images/songzi.jpg"></i> </td>
                            <td class="time">
                                <p> 2016-01-28 </p>
                                <p class="text-muted"> 10:58 </p>
                            </td>
                            <td class="title name">
                                <p class="content"> 良品铺子精选松子，即开即食全国包邮 </p>
                            </td>
                            <td class="amount"> <span class="amount-pay">- 11.90</span> </td>
                            <td class="operation"> 删除 </td>
                        </tr>
                        <tr>
                            <td class="img"> <i><img src="${APP_PATH}/images/songzi.jpg"></i> </td>
                            <td class="time">
                                <p> 2016-01-28 </p>
                                <p class="text-muted"> 10:58 </p>
                            </td>
                            <td class="title name">
                                <p class="content"> 良品铺子精选松子，即开即食全国包邮 </p>
                            </td>
                            <td class="amount"> <span class="amount-pay">- 11.90</span> </td>
                            <td class="operation"> 删除 </td>
                        </tr>
                    </tbody>
                </table>
                <script type="text/javascript">
                    $(document).ready(function () {
                        $(".date-trigger").click(function () {
                            $(".show-input").css("display", "none");
                        });
                    })
                </script>
            </div>
            <!--底部-->
            <div class="footer ">
                <div class="footer-hd ">
                    <p><a href="#">心潮工作室</a> <b>|</b> <a href="${APP_PATH}/home/home.jsp">商城首页</a> <b>|</b> <a href="# ">支付宝</a> <b>|</b> <a href="#">物流</a></p>
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
                        <li> <a href="${APP_PATH}/toAddress">收货地址</a></li>
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
                        <li class="active"> <a href="${APP_PATH}/toBill">账单明细</a></li>
                    </ul>
                </li>
            </ul>
        </aside>
    </div>
</body>

</html>