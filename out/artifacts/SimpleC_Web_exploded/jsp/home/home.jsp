<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <title>首页</title>
    <script src="${APP_PATH}/js/jquery-3.1.1.js"></script>
    <script src="${APP_PATH}/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
    <link href="${APP_PATH}/AmazeUI-2.4.2/assets/css/amazeui.min.css" rel="stylesheet"/>
    <link href="${APP_PATH}/basic/css/demo.css" rel="stylesheet"/>
    <link href="${APP_PATH}/css/hmstyle.css" rel="stylesheet"/>
    <link href="${APP_PATH}/css/skin.css" rel="stylesheet"/>
</head>

<body>
<div class="hmtop">
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
                <div class="menu-hd MyShangcheng"><a href="${APP_PATH}/toUserInfo" target="_top"><i
                        class="am-icon-user am-icon-fw"></i>个人中心</a>
                </div>
            </div>
            <%--<div class="topMessage mini-cart">--%>
            <%--<div class="menu-hd"><a id="mc-menu-hd" href="${APP_PATH}/toShopcart" target="_top"><i--%>
            <%--class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum"--%>
            <%--class="h">0</strong></a>--%>
            <%--</div>--%>
            <%--</div>--%>
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
<div class="banner">
    <!--轮播 -->
    <div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
        <ul class="am-slides">
            <li class="banner1">
                <a href="introduction.jsp"><img src="${APP_PATH}/images/ad1.jpg"/></a>
            </li>
            <li class="banner2">
                <a><img src="${APP_PATH}/images/ad2.jpg"/></a>
            </li>
            <li class="banner3">
                <a><img src="${APP_PATH}/images/ad3.jpg"/></a>
            </li>
            <li class="banner4">
                <a><img src="${APP_PATH}/images/ad4.jpg"/></a>
            </li>
        </ul>
    </div>
    <div class="clear"></div>
</div>
<div class="shopNav">
    <div class="slideall">
        <div class="long-title"><span class="all-goods">全部分类</span></div>
        <div class="nav-cont">
            <ul>
                <li class="index" style="padding-left: 690px">
                    <a href="${APP_PATH}/toPublish" style="font-size: 20px;background:#000000;color: #f3f6ff">发布商品</a>
                </li>
            </ul>
            <div class="nav-extra"><i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的潮积分 <i
                    class="am-icon-angle-right" style="padding-left: 10px;"></i></div>
        </div>
        <!--侧边导航 -->
        <div id="nav" class="navfull">
            <div class="area clearfix">
                <div class="category-content" id="guide_2">
                    <div class="category">
                        <ul class="category-list" id="js_climit_li">
                            <li class="appliance js_toggle relative first">
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a href="${APP_PATH}/toHome" class="ml-22" title="首页">首页</a>
                                    </h3>
                                </div>
                                <b class="arrow"></b></li>
                            <li class="appliance js_toggle relative first">
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a href="${APP_PATH}/toClassify/家用电器" class="ml-22" title="家用电器">家用电器</a>
                                    </h3>
                                </div>
                                <b class="arrow"></b></li>
                            <li class="appliance js_toggle relative">
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a href="${APP_PATH}/toClassify/手机数码" class="ml-22" title="手机数码">手机数码</a>
                                    </h3>
                                </div>
                                <b class="arrow"></b></li>
                            <li class="appliance js_toggle relative">
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a href="${APP_PATH}/toClassify/电脑办公" class="ml-22" title="电脑办公">电脑办公</a>
                                    </h3>
                                </div>
                                <b class="arrow"></b></li>
                            <li class="appliance js_toggle relative">
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a href="${APP_PATH}/toClassify/服装" class="ml-22" title="服装">服装</a></h3>
                                </div>
                                <b class="arrow"></b></li>
                            <li class="appliance js_toggle relative">
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a href="${APP_PATH}/toClassify/运动" class="ml-22" title="运动">运动</a></h3>
                                </div>
                                <b class="arrow"></b></li>
                            <li class="appliance js_toggle relative">
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a href="${APP_PATH}/toClassify/食品" class="ml-22" title="食品">食品</a></h3>
                                </div>
                                <b class="arrow"></b></li>
                            <li class="appliance js_toggle relative">
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a href="${APP_PATH}/toClassify/美妆" class="ml-22" title="美妆">美妆</a></h3>
                                </div>
                                <b class="arrow"></b></li>
                            <li class="appliance js_toggle relative">
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a href="${APP_PATH}/toClassify/图书" class="ml-22" title="图书">图书</a></h3>
                                </div>
                                <b class="arrow"></b></li>
                            <li class="appliance js_toggle relative">
                                <div class="category-info">
                                    <h3 class="category-name b-category-name">
                                        <a href="${APP_PATH}/toClassify/其他" class="ml-22" title="其他">其他</a></h3>
                                </div>
                                <b class="arrow"></b></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--轮播-->
        <script type="text/javascript">
            function fun1() {
                $('.am-slider').flexslider();
            };
            $(document).ready(function () {
                $("li").hover(function () {
                    $(".category-content .category-list li.first .menu-in").css("display", "none");
                    $(".category-content .category-list li.first").removeClass("hover");
                    $(this).addClass("hover");
                    $(this).children("div.menu-in").css("display", "block")
                }, function () {
                    $(this).removeClass("hover")
                    $(this).children("div.menu-in").css("display", "none")
                });
            })

        </script>
        <!--走马灯 -->
        <div class="clear"></div>
    </div>
    <script type="text/javascript">
        if ($(window).width() > 640) {
            function autoScroll(obj) {
                $(obj).find("ul").animate({
                    marginTop: "-39px"
                }, 500, function () {
                    $(this).css({
                        marginTop: "0px"
                    }).find("li:first").appendTo(this);
                })
            }

            $(function () {
                setInterval('autoScroll(".demo")', 3000);
            })
        }

    </script>
</div>
<div class="shopMainbg">
    <div class="shopMain" id="shopmain">
        <!--今日推荐 -->
        <div data-am-scrollspy="{animation: 'fade'}" class="am-g am-g-fixed recommendation">
            <div class="clock am-u-sm-3">
                <p>今日
                    <br>推荐</p>
            </div>
            <div class="am-u-sm-4 am-u-lg-3 ">
                <div class="info ">
                    <h3>真的有鱼</h3>
                    <h4>开年福利篇</h4>
                </div>
                <div class="recommendationMain one">
                    <a href="introduction.jsp"><img src="${APP_PATH}/myimages/book/10.jpg"/>
                    </a>
                </div>
            </div>
            <div class="am-u-sm-4 am-u-lg-3 ">
                <div class="info ">
                    <h3>囤货过冬</h3>
                    <h4>让爱早回家</h4>
                </div>
                <div class="recommendationMain two"><img
                        src="${APP_PATH}/myimages/snack/烘烤薯片.jpg"/>
                </div>
            </div>
            <div class="am-u-sm-4 am-u-lg-3 ">
                <div class="info ">
                    <h3>浪漫情人节</h3>
                    <h4>甜甜蜜蜜</h4>
                </div>
                <div class="recommendationMain three"><img src="${APP_PATH}/myimages/household/1.jpg"/>
                </div>
            </div>
        </div>


        <div class="am-container ">
            <div class="shopTitle ">
                <h4>家用电器</h4>
                <h3>每一个家用电器都有一个故事</h3>
                <span class="more ">
                    <a class="more-link " href="# ">更多家用电器</a>
                        </span>
            </div>
        </div>
        <div class="am-g am-g-fixed flood method3 ">
            <ul class="am-thumbnails ">
                <c:forEach items="${requestScope.household}" var="list" end="11">
                    <li data-am-scrollspy="{animation: 'fade'}">
                        <div class="list ">
                            <a href="${APP_PATH}/toIntroduction/${list.goodsid}">
                                <img src="${APP_PATH}/${list.image}"/>
                                <div class="pro-title ">${list.goodsname}</div>
                                <span class="e-price ">¥${list.goodsprice}</span>
                            </a>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>


        <div class="am-container ">
            <div class="shopTitle ">
                <h4>手机数码</h4>
                <h3>手机数码</h3>
                <span class="more ">
                    <a class="more-link " href="# ">更多手机数码</a>
                        </span>
            </div>
        </div>
        <div class="am-g am-g-fixed flood method3 ">
            <ul class="am-thumbnails ">
                <c:forEach items="${requestScope.phone}" var="list" end="11">
                    <li data-am-scrollspy="{animation: 'fade'}">
                        <div class="list ">
                            <a href="${APP_PATH}/toIntroduction/${list.goodsid}">
                                <img src="${APP_PATH}/${list.image}"/>
                                <div class="pro-title ">${list.goodsname}</div>
                                <span class="e-price ">¥${list.goodsprice}</span>
                            </a>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>


        <div class="am-container ">
            <div class="shopTitle ">
                <h4>电脑办公</h4>
                <h3>电脑办公</h3>
                <span class="more ">
                    <a class="more-link " href="# ">更多电脑办公</a>
                        </span>
            </div>
        </div>
        <div class="am-g am-g-fixed flood method3 ">
            <ul class="am-thumbnails ">
                <c:forEach items="${requestScope.computer}" var="list" end="11">
                    <li data-am-scrollspy="{animation: 'fade'}">
                        <div class="list ">
                            <a href="${APP_PATH}/toIntroduction/${list.goodsid}">
                                <img src="${APP_PATH}/${list.image}"/>
                                <div class="pro-title ">${list.goodsname}</div>
                                <span class="e-price ">¥${list.goodsprice}</span>
                            </a>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>


        <div class="am-container ">
            <div class="shopTitle ">
                <h4>服装</h4>
                <h3>服装</h3>
                <span class="more ">
                    <a class="more-link " href="# ">更多服装</a>
                        </span>
            </div>
        </div>
        <div class="am-g am-g-fixed flood method3 ">
            <ul class="am-thumbnails ">
                <c:forEach items="${requestScope.clothes}" var="list" end="11">
                    <li data-am-scrollspy="{animation: 'fade'}">
                        <div class="list ">
                            <a href="${APP_PATH}/toIntroduction/${list.goodsid}">
                                <img src="${APP_PATH}/${list.image}"/>
                                <div class="pro-title ">${list.goodsname}</div>
                                <span class="e-price ">¥${list.goodsprice}</span>
                            </a>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>


        <div class="am-container ">
            <div class="shopTitle ">
                <h4>运动</h4>
                <h3>运动</h3>
                <span class="more ">
                    <a class="more-link " href="# ">更多运动</a>
                        </span>
            </div>
        </div>
        <div class="am-g am-g-fixed flood method3 ">
            <ul class="am-thumbnails ">
                <c:forEach items="${requestScope.sport}" var="list" end="11">
                    <li data-am-scrollspy="{animation: 'fade'}">
                        <div class="list ">
                            <a href="${APP_PATH}/toIntroduction/${list.goodsid}">
                                <img src="${APP_PATH}/${list.image}"/>
                                <div class="pro-title ">${list.goodsname}</div>
                                <span class="e-price ">¥${list.goodsprice}</span>
                            </a>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>


        <div class="am-container ">
            <div class="shopTitle ">
                <h4>食品</h4>
                <h3>食品</h3>
                <span class="more ">
                    <a class="more-link " href="# ">更多食品</a>
                        </span>
            </div>
        </div>
        <div class="am-g am-g-fixed flood method3 ">
            <ul class="am-thumbnails ">
                <c:forEach items="${requestScope.snack}" var="list" end="11">
                    <li data-am-scrollspy="{animation: 'fade'}">
                        <div class="list ">
                            <a href="${APP_PATH}/toIntroduction/${list.goodsid}">
                                <img src="${APP_PATH}/${list.image}"/>
                                <div class="pro-title ">${list.goodsname}</div>
                                <span class="e-price ">¥${list.goodsprice}</span>
                            </a>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>


        <div class="am-container ">
            <div class="shopTitle ">
                <h4>美妆</h4>
                <h3>美妆</h3>
                <span class="more ">
                    <a class="more-link " href="# ">更多美妆</a>
                        </span>
            </div>
        </div>
        <div class="am-g am-g-fixed flood method3 ">
            <ul class="am-thumbnails ">
                <c:forEach items="${requestScope.beauty}" var="list" end="11">
                    <li data-am-scrollspy="{animation: 'fade'}">
                        <div class="list ">
                            <a href="${APP_PATH}/toIntroduction/${list.goodsid}">
                                <img src="${APP_PATH}/${list.image}"/>
                                <div class="pro-title ">${list.goodsname}</div>
                                <span class="e-price ">¥${list.goodsprice}</span>
                            </a>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>


        <div class="am-container ">
            <div class="shopTitle ">
                <h4>图书</h4>
                <h3>知识就是力量</h3>
                <span class="more ">
                    <a class="more-link " href="# ">更多图书</a>
                        </span>
            </div>
        </div>
        <div class="am-g am-g-fixed flood method3 ">
            <ul class="am-thumbnails ">
                <c:forEach items="${requestScope.book}" var="list" end="11">
                    <li data-am-scrollspy="{animation: 'fade'}">
                        <div class="list ">
                            <a href="${APP_PATH}/toIntroduction/${list.goodsid}">
                                <img src="${APP_PATH}/${list.image}"/>
                                <div class="pro-title ">${list.goodsname}</div>
                                <span class="e-price ">¥${list.goodsprice}</span>
                            </a>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>


        <div class="footer ">
            <div class="footer-hd ">
                <p><a href="# ">心潮工作室</a> <b>|</b> <a href="${APP_PATH}/toHome">商城首页</a> <b>|</b> <a href="# ">支付宝</a>
                    <b>|</b> <a
                            href="# ">物流</a></p>
            </div>
            <div class="footer-bd ">
                <p><a href="# ">关于心潮</a> <a href="# ">合作伙伴</a> <a href="# ">联系我们</a> <a href="# ">网站地图</a> <em>©
                    2018-2038 SimpleChange.com 版权所有.</em></p>
            </div>
        </div>
    </div>
</div>

<!--菜单 -->
<div class=tip>
    <div id="sidebar">
        <div id="wrap">
            <div id="prof" class="item ">
                <a href="# "> <span class="setting "></span> </a>
                <div class="mp_tooltip "> 个人中心 <i class="icon_arrow_right_black "></i></div>
            </div>
            <div id="shopCart " class="item ">
                <a href="# "> <span class="message "></span> </a>
                <p> 购物车 </p>
                <p class="cart_num ">0</p>
            </div>
            <div id="asset " class="item ">
                <a href="# "> <span class="view "></span> </a>
                <div class="mp_tooltip "> 我的资产 <i class="icon_arrow_right_black "></i></div>
            </div>
            <div id="broadcast " class="item ">
                <a href="# "> <span class="chongzhi "><img src="${APP_PATH}/images/chongzhi.png "/></span> </a>
                <div class="mp_tooltip "> 我要充值 <i class="icon_arrow_right_black "></i></div>
            </div>
            <div class="quick_toggle ">
                <li class="qtitem "><a href="# "><span class="kfzx "></span></a>
                    <div class="mp_tooltip ">客服中心<i class="icon_arrow_right_black "></i></div>
                </li>
                <li class="qtitem ">
                    <a data-am-smooth-scroll="{speed: 2000}" class="return_top "><span class="top "></span></a>
                </li>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript " src="${APP_PATH}/basic/js/quick_links.js "></script>
</body>

</html>
