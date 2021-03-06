<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <title>订单详情</title>
    <script src="${APP_PATH}/js/jquery-3.1.1.js"></script>

    <link href="${APP_PATH}/amazeui-3.0.0-alpha.beta/AmazeUIdemo/assets/css/amazeui.min.css" rel="stylesheet" type="text/css">
    <script src="${APP_PATH}/amazeui-3.0.0-alpha.beta/AmazeUIdemo/assets/js/amazeui.min.js" type="text/javascript"></script>

    <%--<link href="${APP_PATH}/AmazeUI-2.4.2/assets/css/amazeui.min.css" rel="stylesheet"/>--%>
    <%--<script src="${APP_PATH}/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>--%>

    <link href="${APP_PATH}/css/personal.css" rel="stylesheet" type="text/css">
    <link href="${APP_PATH}/css/orstyle.css" rel="stylesheet" type="text/css">
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
                <div class="user-orderinfo">
                    <!--标题 -->
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单详情</strong> / <small>Order&nbsp;details</small></div>
                    </div>
                    <hr/>
                    <!--进度条-->
                    <div class="m-progress">
                        <div class="m-progress-list"> <span class="step-1 step">
                                   <em class="u-progress-stage-bg"></em>
                                   <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                                   <p class="stage-name">拍下商品</p>
                                </span> <span class="step-2 step">
                                   <em class="u-progress-stage-bg"></em>
                                   <i class="u-stage-icon-inner">2<em class="bg"></em></i>
                                   <p class="stage-name">卖家发货</p>
                                </span> <span class="step-3 step">
                                   <em class="u-progress-stage-bg"></em>
                                   <i class="u-stage-icon-inner">3<em class="bg"></em></i>
                                   <p class="stage-name">确认收货</p>
                                </span> <span class="step-4 step">
                                   <em class="u-progress-stage-bg"></em>
                                   <i class="u-stage-icon-inner">4<em class="bg"></em></i>
                                   <p class="stage-name">交易完成</p>
                                </span> <span class="u-progress-placeholder"></span> </div>
                        <div class="u-progress-bar total-steps-2">
                            <div class="u-progress-bar-inner"></div>
                        </div>
                    </div>
                    <div class="order-infoaside">
                        <div class="order-logistics">
                            <a href="logistics.html">
                                <div class="icon-log"> <i><img src="${APP_PATH}/images/receive.png"></i> </div>
                                <div class="latest-logistics">
                                    <p class="text">已签收,签收人是青年城签收，感谢使用天天快递，期待再次为您服务</p>
                                    <div class="time-list"> <span class="date">2015-12-19</span><span class="week">周六</span><span class="time">15:35:42</span> </div>
                                    <div class="inquire"> <span class="package-detail">物流：天天快递</span> <span class="package-detail">快递单号: </span> <span class="package-number">373269427868</span> <a href="logistics.html">查看</a> </div>
                                </div> <span class="am-icon-angle-right icon"></span> </a>
                            <div class="clear"></div>
                        </div>
                        <div class="order-addresslist">
                            <div class="order-address">
                                <div class="icon-add"> </div>
                                <p class="new-tit new-p-re"> <span class="new-txt">小叮当</span> <span class="new-txt-rd2">159****1622</span> </p>
                                <div class="new-mu_l2a new-p-re">
                                    <p class="new-mu_l2cw"> <span class="title">收货地址：</span> <span class="province">湖北</span>省 <span class="city">武汉</span>市 <span class="dist">洪山</span>区 <span class="street">雄楚大道666号(中南财经政法大学)</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="order-infomain">
                        <div class="order-top">
                            <div class="th th-item">
                                <td class="td-inner">商品</td>
                            </div>
                            <div class="th th-price">
                                <td class="td-inner">单价</td>
                            </div>
                            <div class="th th-number">
                                <td class="td-inner">数量</td>
                            </div>
                            <div class="th th-operation">
                                <td class="td-inner">商品操作</td>
                            </div>
                            <div class="th th-amount">
                                <td class="td-inner">合计</td>
                            </div>
                            <div class="th th-status">
                                <td class="td-inner">交易状态</td>
                            </div>
                            <div class="th th-change">
                                <td class="td-inner">交易操作</td>
                            </div>
                        </div>
                        <div class="order-main">
                            <div class="order-status3">
                                <div class="order-title">
                                    <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div> <span>成交时间：2015-12-20</span>
                                    <!--    <em>店铺：小桔灯</em>--></div>
                                <div class="order-content">
                                    <div class="order-left">
                                        <ul class="item-list">
                                            <li class="td td-item">
                                                <div class="item-pic">
                                                    <a href="#" class="J_MakePoint"> <img src="${APP_PATH}/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg"> </a>
                                                </div>
                                                <div class="item-info">
                                                    <div class="item-basic-info">
                                                        <a href="#">
                                                            <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                            <p class="info-little">颜色：12#川南玛瑙
                                                                <br/>包装：裸装 </p>
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="td td-price">
                                                <div class="item-price"> 333.00 </div>
                                            </li>
                                            <li class="td td-number">
                                                <div class="item-number"> <span>×</span>2 </div>
                                            </li>
                                            <li class="td td-operation">
                                                <div class="item-operation"> 退款/退货 </div>
                                            </li>
                                        </ul>
                                        <ul class="item-list">
                                            <li class="td td-item">
                                                <div class="item-pic">
                                                    <a href="#" class="J_MakePoint"> <img src="${APP_PATH}/images/62988.jpg_80x80.jpg" class="itempic J_ItemImg"> </a>
                                                </div>
                                                <div class="item-info">
                                                    <div class="item-basic-info">
                                                        <a href="#">
                                                            <p>礼盒袜子女秋冬 纯棉袜加厚 韩国可爱 </p>
                                                            <p class="info-little">颜色分类：李清照
                                                                <br/>尺码：均码</p>
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="td td-price">
                                                <div class="item-price"> 333.00 </div>
                                            </li>
                                            <li class="td td-number">
                                                <div class="item-number"> <span>×</span>2 </div>
                                            </li>
                                            <li class="td td-operation">
                                                <div class="item-operation"> 退款/退货 </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="order-right">
                                        <li class="td td-amount">
                                            <div class="item-amount"> 合计：676.00
                                                <p>含运费：<span>10.00</span></p>
                                            </div>
                                        </li>
                                        <div class="move-right">
                                            <li class="td td-status">
                                                <div class="item-status">
                                                    <p class="Mystatus">卖家已发货</p>
                                                    <p class="order-info"><a href="logistics.html">查看物流</a></p>
                                                    <p class="order-info"><a href="#">延长收货</a></p>
                                                </div>
                                            </li>
                                            <li class="td td-change">
                                                <div class="am-btn am-btn-danger anniu"> 确认收货</div>
                                            </li>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
                        <li class="active"><a href="${APP_PATH}/toOrderItem">订单管理</a></li>
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