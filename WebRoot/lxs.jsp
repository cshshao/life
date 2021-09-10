<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head1.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="gb2312">
		<meta name="X-UA-Compatible" content="IE=edge"/>
		<meta name="keywords" content="大学"/>
		<meta name="description" content="大学计算机系"/>
		<title>微醺生活馆酒吧服务-酒品介绍</title>
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
		<!--<div class="i_banner">
			<img src="images/banner1.jpg" />
		</div>-->
		<!--content-->
		<div class="i_content">
			<div class="adr_wrap">
				<div class="adr">
					<span class="adr_link"><a href="index.jsp">首   页</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;bar台</span>
				</div>
			</div>
			<div class="c_area">
				<div class="left_list">
					<div class="nav_title">bar台</div>
					<div class="sidemenu">
						<ul>
							<li><a href="jd.jsp">酒吧信息</a></li>
							<li><a href="news.jsp">酒品介绍</a></li>
						</ul>
					</div>
					<div class="contact">
						<a href="contact.jsp"><img src="images/tel.jpg" /></a>
					</div>
				</div>
				<div class="right_content">
					<div class="con_title">bar台</div>
					<div class="con_box">
						<ul class="items-list">
						             <%List nnliet=news.get1ComList("select * from news where fenlei='bar台'");
                    if(!nnliet.isEmpty()){
					for(int alln1=0;alln1<nnliet.size();alln1++){
						List allnew=(List)nnliet.get(alln1);
			%>
						
							<li><a href="<%=basePath%>newsinfo.jsp?id=<%=allnew.get(0).toString()%>"><%=allnew.get(1).toString()%></a><span class="date"><%=allnew.get(4).toString()%></span></li>
								<%}} %>
						
						</ul>
						
						
						<!--分页-->
						<!-- <div class="record">
	                        <span class="prev"><a href="">上一页</a></span>
	                        <span class="word"><a href="">1</a></span>
	                        <span class="word"><a href="">2</a></span>
	                        <span class="word"><a href="">3</a></span>
	                        <span class="word"><a href="">4</a></span>
	                        <span class="word"><a href="">5</a></span>
	                        <span class="word"><a href="">6</a></span>
	                        <span class="next"><a href="">下一页</a></span>
	                        <span class="sum">共6页</span>
	                    </div> -->
					</div>
				</div>
				<div class="clear"></div>
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
			$(".sidemenu>ul>li h3").click(function(){
				if($(this).siblings("ul").css("display")=="none"){
					$(this).siblings("ul").css("display","block");
					$(this).addClass("on");
				}else{
					$(this).siblings("ul").css("display","none");
					$(this).removeClass("on");
				}
			});
		</script>
	</body>
</html>
