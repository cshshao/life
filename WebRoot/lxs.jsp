<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head1.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="gb2312">
		<meta name="X-UA-Compatible" content="IE=edge"/>
		<meta name="keywords" content="��ѧ"/>
		<meta name="description" content="��ѧ�����ϵ"/>
		<title>΢������ݾưɷ���-��Ʒ����</title>
		<link rel="stylesheet" type="text/css" href="css/style.css"/>
	</head>
	<body>
		<!--header-->
		<div class="top_wrap">
			<!--top index-->
			<div class="top">
				<span class="welcome">��ӭ������΢������ݾưɷ�����վ��</span>
				<div class="corner">
					<a onclick=SetHome(this,window.location) title="��Ϊ��ҳ" href="javascript:void(0);">��Ϊ��ҳ</a>
					<span>|</span>
					<a onclick=addFavorite(window.location,document.title) title="����ղ�" href="javascript:void(0);">�����ղ�</a>
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
							<h3><a href="index.jsp">��ҳ</a></h3>
						</li>
						<li class="nLi">
							<h3><a href="news.jsp">��Ʒ����</a></h3>						
						</li>
						<li class="nLi">
							<h3><a href="lxs.jsp">bar̨</a></h3>
						</li>
						<li class="nLi">
							<h3><a href="jd.jsp">�ư���Ϣ</a></h3>
						</li>
						<li class="nLi">
							<h3><a href="contact.jsp">���԰�</a></h3>
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
					<span class="adr_link"><a href="index.jsp">��   ҳ</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;bar̨</span>
				</div>
			</div>
			<div class="c_area">
				<div class="left_list">
					<div class="nav_title">bar̨</div>
					<div class="sidemenu">
						<ul>
							<li><a href="jd.jsp">�ư���Ϣ</a></li>
							<li><a href="news.jsp">��Ʒ����</a></li>
						</ul>
					</div>
					<div class="contact">
						<a href="contact.jsp"><img src="images/tel.jpg" /></a>
					</div>
				</div>
				<div class="right_content">
					<div class="con_title">bar̨</div>
					<div class="con_box">
						<ul class="items-list">
						             <%List nnliet=news.get1ComList("select * from news where fenlei='bar̨'");
                    if(!nnliet.isEmpty()){
					for(int alln1=0;alln1<nnliet.size();alln1++){
						List allnew=(List)nnliet.get(alln1);
			%>
						
							<li><a href="<%=basePath%>newsinfo.jsp?id=<%=allnew.get(0).toString()%>"><%=allnew.get(1).toString()%></a><span class="date"><%=allnew.get(4).toString()%></span></li>
								<%}} %>
						
						</ul>
						
						
						<!--��ҳ-->
						<!-- <div class="record">
	                        <span class="prev"><a href="">��һҳ</a></span>
	                        <span class="word"><a href="">1</a></span>
	                        <span class="word"><a href="">2</a></span>
	                        <span class="word"><a href="">3</a></span>
	                        <span class="word"><a href="">4</a></span>
	                        <span class="word"><a href="">5</a></span>
	                        <span class="word"><a href="">6</a></span>
	                        <span class="next"><a href="">��һҳ</a></span>
	                        <span class="sum">��6ҳ</span>
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
						<p><a href="contact.jsp">��ϵ����</a><a href="javascrip:void(0);">վ��ͳ��</a></p>
						<p>��ѧ&nbsp;&nbsp;&nbsp;&nbsp;���ڵ�ַ����ѧ</p>
						<p>��Ȩ���У���ѧ�����ϵ&nbsp;&nbsp;&nbsp;&nbsp;�绰��029-8888888&nbsp;&nbsp;&nbsp;&nbsp;</p>
					</div>
				</div>
				<div class="f_right">
					<p><a href="http://www.xztc.edu.cn/" style="text-decoration: underline;">��ѧ</a></p>
					<p><a href="admin/login.jsp" style="text-decoration: underline;">��̨��½</a></p>
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
