<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head1.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="X-UA-Compatible" content="IE=edge"/>
		<meta name="keywords" content="秘书学系"/>
		<meta name="description" content="XX大学秘书学系"/>
		<title>微醺生活馆休闲酒吧服务</title>
		<link rel="stylesheet" type="text/css" href="css/style.css"/>
	</head>
	

	<body>
		<!--header-->
		<div class="top_wrap">
			<!--top index-->
			<div class="top">
				<span class="welcome">欢迎您访问微醺生活馆酒吧服务网站！</span>
				<div class="corner">
					<a onclick=SetHome(this,window.location) title="设为首页" href="javascript:void(0);">设为首页</a>
					<span>|</span>
					<a onclick=addFavorite(window.location,document.title) title="添加收藏" href="javascript:void(0);">加入收藏</a>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<!--logo and nav-->
		<div class="header_wrap">
			<div class="header">
				<a href="index.jsp" class="logo"><img src="images/logo.jpg" /></a>
				<div class="nav_list">
					<ul id="nav" class="nav clearfix">
						<li class="nLi" style="display: none;"></li>
						<li class="nLi">
							<h3><a href="index.jsp">首页</a></h3>
						</li>
						<li class="nLi">
							<h3><a href="news.jsp">酒品介绍</a></h3>						
						</li>
						<li class="nLi">
							<h3><a href="lxs.jsp">bar台</a></h3>
						</li>
						<li class="nLi">
							<h3><a href="jd.jsp">酒吧信息</a></h3>
						</li>
						<li class="nLi">
							<h3><a href="contact.jsp">留言板</a></h3>
						</li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<!--banner-->
		<div class="banner">
			<div class="bd">
				<ul>
					<li class="first"><a href="javascript:void(0);"></a></li>
					<li class="second"><a href="javascript:void(0);"></a></li>
					<li class="third"><a href="javascript:void(0);"></a></li>
                    <li class="fourth"><a href="javascript:void(0);"></a></li>
					<li class="fifth"><a href="javascript:void(0);"></a></li>
				</ul>
			</div>
			<div class="hd"><ul></ul></div>
		</div>
		<!--content-->
		<div class="content">
			<div class="left_tab">
				<div class="hd">
					<ul><li class="first">酒吧信息</li></ul>
				</div>
				<div class="bd">
					<div class="box">
						<!-- <a href="jd.jsp" class="more">MORE+</a> -->
						<ul class="clearfix">
							 <%
			              	List resList=tb.get10PTrave();
			              	if(!resList.isEmpty()){
			              		for(int res=0;res<resList.size();res++)
			              		{
			              			List resList2=(List)resList.get(res);
             				 %>
							<li>
								<a href="<%=basePath %>hinfo.jsp?id=<%=resList2.get(0).toString()%>">
									<img src="<%=basePath1+resList2.get(2).toString()%>" />
									<h4><%=resList2.get(1).toString()%></h4>
									<span class="date"><%=resList2.get(8).toString()%></span>
								</a>
							</li>
							  <%
              		}
              	}
               %>
						</ul>
					</div>
				</div>
			</div>
			<div class="right_box">
				<!--notice-->
				<div class="notice">
					<div class="n_title">
						<b>新闻公告</b>
						<a href="gg.jsp">MORE+</a>
					</div>
					<div class="bd">
						<ul class="infoList">
						<%if(!affList.isEmpty()){
						for(int aff=0;aff<affList.size();aff++){
							List affList2=(List)affList.get(aff);
						%>
							<li><a href="<%=basePath%>jinfo.jsp?id=<%=affList2.get(0).toString()%>"><%=affList2.get(1).toString() %></a><span class="date"><%=affList2.get(2).toString() %></span></li>
						<%
					}
				}
			  %>
						</ul>
					</div>
				</div>
				<!--code-->
				<div class="code">
					<img src="images/er.jpg" />
				</div>
			</div>
			<div class="clear"></div>
			<div class="friend_link">
				<b>友情链接：</b><a href="http://www.xztc.edu.cn/" target="_blank">大学</a><a href="http://www.xztc.edu.cn/" target="_blank">大学计算机系</a>
			</div>
		</div>
		<!--footer-->
		<div class="footer_wrap">
			<div class="line"></div>
			<div class="footer">
				<div class="f_left">
					<img src="images/f_logo.png" class="f_logo" />
					<div class="contact">
						<p><a href="contact.jsp">联系我们</a><a href="javascrip:void(0);">站长统计</a></p>
						<p>大学&nbsp;&nbsp;&nbsp;&nbsp;所在地址：大学</p>
						<p>版权所有：大学计算机系&nbsp;&nbsp;&nbsp;&nbsp;电话：029-8888888&nbsp;&nbsp;&nbsp;&nbsp;</p>
					</div>
				</div>
				<div class="f_right">
					<p><a href="http://www.xztc.edu.cn/" style="text-decoration: underline;">大学</a></p>
					<p><a href="admin/login.jsp" style="text-decoration: underline;">后台登陆</a></p>
					<p><a href=""></a></p>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<script type="text/javascript" src="js/jquery-1.11.0.min.js" ></script>
		<script type="text/javascript" src="js/jquery.SuperSlide.2.1.js" ></script>
		<script type="text/javascript" src="js/common.js" ></script>
		<script type="text/javascript">
			//banner滚动效果
			jQuery(".banner").slide({ titCell:".hd ul", mainCell:".bd ul", effect:"fold",  autoPlay:true, autoPage:true, trigger:"click" });
			//tab切换效果
			jQuery(".left_tab").slide();
			//news滚动效果
			jQuery(".notice").slide({mainCell:".bd ul",autoPage:true,effect:"top",autoPlay:true,vis:3});
		</script>
	</body>
</html>
