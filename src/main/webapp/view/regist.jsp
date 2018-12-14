<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>register</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" >
	$(function(){
		$("#submit").click(function(){
			var nick=$("#username").val();
			var name=$("#name").val();
			var password=$("#pwd").val();
			var sex = $("input[type=radio]:checked").val();
			alert(sex);
			var code=$("#code").val();
			$.post("${pageContext.request.contextPath}/user/user_registUser",
			"user.name="+name+"&user.password="+password+"&user.nick_name="+nick+"&user.sex="+sex+"&code="+code,
			function(result){
				if(result=="ok"){
					location.href="${pageContext.request.contextPath}/view/login.jsp";
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
					<p id="whereami">
					</p>
					<h1>
						注册
					</h1>
					<form  method="post">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right" style="color: red;" id="error">
								</td>
								
							</tr>
							<tr>
								<td valign="middle" align="right">
									用户名:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" id="username" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									真实姓名:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" id="name" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									密码:
								</td>
								<td valign="middle" align="left">
									<input type="password" class="inputgri" id="pwd" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									性别:
								</td>
								<td valign="middle" align="left">
									男
									<input type="radio" class="inputgri" name="sex" value="true" checked="checked"/>
									女
									<input type="radio" class="inputgri" name="sex" value="false"/>
								</td>
							</tr>
							
							<tr>
								<td valign="middle" align="right">
									验证码:
									<img id="num" src="${pageContext.request.contextPath}/user/user_vCode" />
									<a href="javascript:;" onclick="document.getElementById('num').src = '${pageContext.request.contextPath}/user/user_vCode?'+(new Date()).getTime()">换一张</a>
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" id="code" />
								</td>
							</tr>
						</table>
						<p>
							<input type="button" id="submit" class="button" value="Submit &raquo;" />
						</p>
					</form>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>
