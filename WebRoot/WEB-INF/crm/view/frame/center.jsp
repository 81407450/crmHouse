<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.sxxy.po.LinkRecordInfo"%>
<%@page import="com.sxxy.po.CustomerCareInfo"%>
<%@page import="com.sxxy.po.NoticeInfo"%>
<%@page import="com.sxxy.po.CustomerInfo"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>center</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<LINK href="<%=basePath%>resource/css/admin.css" type=text/css
	rel=stylesheet>
<style type="text/css">
#div1 {
	width: 100%;
	height: 80%;
}

#div2 {
	width: 100%;
	height: 80%;
}
</style>

</head>

<body>
	<form action="<%=basePath%>servlet/WorkQueryServlet" method="post">
		<table class=editTable cellSpacing=1 cellPadding=0 width="100%"
			align=center border=0>
			<tr class=editHeaderTr>
				<td class=editHeaderTd>关怀提醒
				<td class=editHeaderTd>联系提醒
			<tr>
				<td width="50%" bgcolor="#FFFDF0">
					<div align="center" id="div1">
						<table class=editTable cellSpacing=1 cellPadding=0 width="100%"
							align=center border=0>
							<tr>
								<td bgcolor="#FFFDF0" colspan="2"><div align="center">
										查询方式： <select name="addTime" style=" width: 145px">
											<option value="0">当天</option>
											<option value="7">一周内</option>
											<option value="15">半月内</option>
											<option value="30">一月内</option>
										</select>
									</div>
								</td>
								<td colspan="2" bgcolor="#FFFFFF"><div align="center">
										<input style=" width: 45px" type="submit" value="查询">
									</div>
								</td>
							</tr>
							<tr>
								<td bgcolor="#FFFDF0"><div align="center">关怀主题</div>
								</td>
								<td bgcolor="#FFFDF0"><div align="center">关怀时间</div>
								</td>
								<td bgcolor="#FFFDF0"><div align="center">关怀对象</div>
								</td>
							</tr>


							<%
								List<CustomerCareInfo> careList = (List<CustomerCareInfo>) request
										.getAttribute("careList");
								if (careList != null && careList.size() > 0) {
									for (int i = 0; i < careList.size(); i++) {
										CustomerCareInfo careInfo = careList.get(i);
							%>
							<tr>
								<td colspan="1" bgcolor="#FFFFFF"><div align="center"><%=careInfo.getCareTheme()%></div>
								</td>
								<td colspan="1" bgcolor="#FFFFFF"><div align="center"><%=careInfo.getCareNexttime()%></div>
								</td>
								<td colspan="1" bgcolor="#FFFFFF"><div align="center"><%=careInfo.getCustomerName()%></div>
								</td>
							</tr>
							<%
								}
								} else {
							%>
							<tr>
								<td height="20" bgcolor="#FFFFFF" colspan="22" align="center">
									<div align="center">
										<span class="STYLE1">没有要关怀的对象！</span>
									</div></td>
							</tr>
							<%
								}
							%>

						</table>
					</div></td>
				<td bgcolor="#FFFDF0">
					<div align="center" id="div2">
						<table class=editTable cellSpacing=1 cellPadding=0 width="100%"
							align=center border=0>
							<tr>
								<td bgcolor="#FFFDF0" colspan="3"><div align="center">
										查询方式： <select name="addTime1" style=" width: 145px">
											<option value="0">当天</option>
											<option value="7">一周内</option>
											<option value="15">半月内</option>
											<option value="30">一月内</option>
										</select>
									</div>
								</td>
								<td colspan="3" bgcolor="#FFFFFF"><div align="center">
										<input style=" width: 45px" type="submit" value="查询">
									</div>
								</td>
							</tr>
							<tr>
								<td bgcolor="#FFFDF0"><div align="center">联系主题</div>
								</td>
								<td bgcolor="#FFFDF0"><div align="center">联系方式</div>
								</td>
								<td bgcolor="#FFFDF0"><div align="center">应联系时间</div>
								</td>
								<td bgcolor="#FFFDF0"><div align="center">联系对象</div>
								</td>
							</tr>


							<%
								List<LinkRecordInfo> linkRecordList = (List<LinkRecordInfo>) request
										.getAttribute("linkrecorsList");
								if (linkRecordList != null && linkRecordList.size() > 0) {
									for (int i = 0; i < linkRecordList.size(); i++) {
										LinkRecordInfo linkRecordInfo = linkRecordList.get(i);
							%>

							<tr>
								<td colspan="1" bgcolor="#FFFFFF"><div align="center"><%=linkRecordInfo.getLinkTheme()%></div>
								</td>
								<td colspan="1" bgcolor="#FFFFFF"><div align="center"><%=linkRecordInfo.getLinkType()%></div>
								</td>
								<td colspan="1" bgcolor="#FFFFFF"><div align="center"><%=linkRecordInfo.getLinkNexttime()%></div>
								</td>
								<td colspan="1" bgcolor="#FFFFFF"><div align="center"><%=linkRecordInfo.getCustomerName()%></div>
								</td>
							</tr>

							<%
								}
								} else {
							%>
							<tr>
								<td height="20" bgcolor="#FFFFFF" colspan="22" align="center">
									<div align="center">
										<span class="STYLE1">没有要联系的对象！</span>
									</div></td>
							</tr>
							<%
								}
							%>
						</table>
					</div>
				</td>
			</tr>
			<tr class=editHeaderTr>
				<td class=editHeaderTd>有效公告
				<td class=editHeaderTd>生日提醒
			<tr>
				<td width="50%" bgcolor="#FFFDF0">
					<div align="center" id="div1">
						<table class=editTable cellSpacing=1 cellPadding=0 width="100%"
							align=center border=0>

							<tr>
								<td bgcolor="#FFFDF0"><div align="center">公告主题</div>
								</td>
								<td bgcolor="#FFFDF0"><div align="center">公告内容</div>
								</td>
								<td bgcolor="#FFFDF0"><div align="center">截止时间</div>
								</td>
								<td bgcolor="#FFFDF0"><div align="center">公告人</div>
								</td>
							</tr>


							<%
								List<NoticeInfo> noticeList = (List<NoticeInfo>) request
										.getAttribute("noticeList");
								if (noticeList != null && noticeList.size() > 0) {
									for (int i = 0; i < noticeList.size(); i++) {
										NoticeInfo noticeInfo = noticeList.get(i);
							%>
							<tr>
								<td colspan="1" bgcolor="#FFFFFF"><div align="center"><%=noticeInfo.getNoticeItem()%></div>
								</td>
								<td colspan="1" bgcolor="#FFFFFF"><div align="center"><%=noticeInfo.getNoticeContent()%></div>
								</td>
								<td colspan="1" bgcolor="#FFFFFF"><div align="center"><%=noticeInfo.getNoticeEndTime()%></div>
								</td>
								<td colspan="1" bgcolor="#FFFFFF"><div align="center"><%=noticeInfo.getUserName()%></div>
								</td>
							</tr>
							<%
								}
								} else {
							%>
							<tr>
								<td height="20" bgcolor="#FFFFFF" colspan="22" align="center">
									<div align="center">
										<span class="STYLE1">没有有效的公告！</span>
									</div></td>
							</tr>
							<%
								}
							%>

						</table>
					</div></td>
				<td bgcolor="#FFFDF0">
					<div align="center" id="div2">
						<table class=editTable cellSpacing=1 cellPadding=0 width="100%"
							align=center border=0>
							<tr>
								<td bgcolor="#FFFDF0" colspan="3"><div align="center">
										查询方式： <select name="addTime2" style=" width: 145px">
											<option value="0">当天</option>
											<option value="7">一周内</option>
											<option value="15">半月内</option>
											<option value="30">一月内</option>
										</select>
									</div>
								</td>
								<td colspan="3" bgcolor="#FFFFFF"><div align="center">
										<input style=" width: 45px" type="submit" value="查询">
									</div>
								</td>
							</tr>
							<tr>
								<td bgcolor="#FFFDF0"><div align="center">过生的人</div>
								</td>
								<td bgcolor="#FFFDF0"><div align="center">生日时间</div>
								</td>
								<td bgcolor="#FFFDF0"><div align="center">手机号码</div>
								</td>
								<td bgcolor="#FFFDF0"><div align="center">客户状态</div>
								</td>
							</tr>

							<%
								List<CustomerInfo> customerList = (List<CustomerInfo>) request
										.getAttribute("customerList");
								if (customerList != null && customerList.size() > 0) {
									for (int i = 0; i < customerList.size(); i++) {
										CustomerInfo customerInfo = customerList.get(i);
							%>
							<tr>
								<td colspan="1" bgcolor="#FFFFFF"><div align="center"><%=customerInfo.getCustomerName()%></div>
								</td>
								<td colspan="1" bgcolor="#FFFFFF"><div align="center"><%=customerInfo.getCustomerBirthday()%></div>
								</td>
								<td colspan="1" bgcolor="#FFFFFF"><div align="center"><%=customerInfo.getCustomerMobile()%></div>
								</td>
								<td colspan="1" bgcolor="#FFFFFF"><div align="center"><%=customerInfo.getCustomerCondition()%></div>
								</td>
							</tr>
							<%
								}
								} else {
							%>
							<tr>
								<td height="20" bgcolor="#FFFFFF" colspan="22" align="center">
									<div align="center">
										<span class="STYLE1">没有要过生日的人！</span>
									</div></td>
							</tr>
							<%
								}
							%>
						</table>
					</div>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
