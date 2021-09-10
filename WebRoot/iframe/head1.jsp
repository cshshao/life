<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<jsp:useBean id="sys" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="fb" scope="page" class="com.bean.FriendLinkBean" />
<jsp:useBean id="abc" scope="page" class="com.bean.AfficheBean"/>
<jsp:useBean id="news" scope="page" class="com.bean.NewsBean"/>
<jsp:useBean id="tb" scope="page" class="com.bean.HzpBean"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String basePath1 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
List sysList=sys.getSiteInfo();
List flinkList=fb.getAllShowFriendLink();
List affList=abc.getAllAffiche();
List AllnewsList=news.getAllNews();
%>
