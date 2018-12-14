<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>login</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" >
	$(function(){
		$("#login").click(function(){
			var name=$("#name").val();
			var password=$("#password").val();
			$.post("${pageContext.request.contextPath}/user/user_login","user.name="+name+"&user.password="+password,
			function(result){
				if(result=="ok"){
					location.href="${pageContext.request.contextPath}/emp/emp_getAllEmp";
				}else{
					$("#error").text(result);
				}
			});
		});
	});
</script>
</head>

<body>
	<div id="wrap">
		<div id="top_content">
			<jsp:include page="header.jsp"></jsp:include>
			<div id="content">
				<p id="whereami"></p>
				<h1>login</h1>
				<form  method="post">
					<table cellpadding="0" cellspacing="0" border="0"
						class="form_table">
						<tr >
							<td valign="middle" style="color: red;" align="right" id="error"></td>
						</tr>
						<tr>
							<td valign="middle" align="right">username:</td>
							<td valign="middle" align="left"><input type="text"
								class="inputgri" id="name" /></td>
							
						</tr>
						<tr>
							<td valign="middle" align="right">password:</td>
							<td valign="middle" align="left"><input type="password"
								class="inputgri" id="password" /></td>
						</tr>
					</table>
					<p>
						<input id="login" type="button" class="button" value="Submit &raquo;" /> <input
							type="button" class="button" onClick="location.href='${pageContext.request.contextPath}/view/regist.jsp'"
							 value="Regist &raquo;" />
					</p>
				</form>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>
