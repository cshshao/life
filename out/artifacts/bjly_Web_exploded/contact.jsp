<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head1.jsp" %>
<jsp:useBean id="guestbean" class="com.bean.GuestBookBean" scope="page" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="gb2312">
		<meta name="X-UA-Compatible" content="IE=edge"/>
		<meta name="keywords" content="��ѧ"/>
		<meta name="description" content="��ѧ�����ϵ"/>
		<title>΢������ݾưɷ���-���Ź���</title>
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
					<span class="adr_link"><a href="index.jsp">��   ҳ</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;��ϵ����</span>
				</div>
			</div>
			<div class="c_area">
				
				<div class="right_content"  style="width:100%">
					<div class="con_box">
						
						<ul class="items-list">
						<iframe src="<%=basePath %>guestbook.jsp" width="100%" height="810PX"  frameborder=0 ></iframe>
						</ul>
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
	</body>
</html>
