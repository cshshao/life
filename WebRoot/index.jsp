<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head1.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="X-UA-Compatible" content="IE=edge"/>
		<meta name="keywords" content="����ѧϵ"/>
		<meta name="description" content="XX��ѧ����ѧϵ"/>
		<title>΢����������оưɷ���</title>
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
					<ul><li class="first">�ư���Ϣ</li></ul>
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
						<b>���Ź���</b>
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
				<b>�������ӣ�</b><a href="http://www.xztc.edu.cn/" target="_blank">��ѧ</a><a href="http://www.xztc.edu.cn/" target="_blank">��ѧ�����ϵ</a>
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
			//banner����Ч��
			jQuery(".banner").slide({ titCell:".hd ul", mainCell:".bd ul", effect:"fold",  autoPlay:true, autoPage:true, trigger:"click" });
			//tab�л�Ч��
			jQuery(".left_tab").slide();
			//news����Ч��
			jQuery(".notice").slide({mainCell:".bd ul",autoPage:true,effect:"top",autoPlay:true,vis:3});
		</script>
	</body>
</html>
