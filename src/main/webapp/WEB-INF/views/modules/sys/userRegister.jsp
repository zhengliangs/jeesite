<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>用户注册</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#no").focus();
		$("#inputForm").validate({
			rules: {
				loginName: {remote: "${ctx}/checkLoginName?oldLoginName=" + encodeURIComponent('${user.loginName}')}
			},
			messages: {
				loginName: {remote: "用户登录名已存在"},
				confirmNewPassword: {equalTo: "输入与上面相同的密码"}
			},
			submitHandler: function(form){
				loading('正在提交，请稍等...');
				form.submit();
			},
			errorContainer: "#messageBox",
			errorPlacement: function(error, element) {
				$("#messageBox").text("输入有误，请先更正。");
				if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
					error.appendTo(element.parent().parent());
				} else {
					error.insertAfter(element);
				}
			}
		});
		$("#newPassword").keyup(function(e)
		{
			
			if (chkpwd($(this).val()) < 2 )
			{
				$('#btnSubmit').attr('disabled',"true");
			}
			else
			{
				$('#btnSubmit').removeAttr("disabled"); 
			}
		});
	});
	// xxdSecurity add begin
	function chkpwd(s)
	{
		if(s.length < 6)
		{
			return 0;
		}
		var ls = 0;

		if(s.match(/([a-z])+/)){
		     ls++;
		}

		if(s.match(/([0-9])+/)){
			ls++;  
		}

		if(s.match(/([A-Z])+/)){
			ls++;
		}
		if(s.match(/[^a-zA-Z0-9]+/)){
			ls++;
		}
		return ls;
	}
	// xxdSecurity add end
	</script>
	<style type="text/css">
		body{
			background-color:#f5f5f5;
			width:100%;
			text-align:center;
		}
		.form-signin-heading{
			border:0px solid red;
			font-family:Helvetica, Georgia, Arial, sans-serif, 黑体;
			font-size:36px;
			margin: 20px auto;
			color:#0663a2;
			width:500px;
		}
		.control-groups{
			border:0px solid blue;
			width:590px;
			margin:10px auto;
		}
		.layout{
			background-color:#fff;
			border:1px solid #e5e5e5;
			width:590px;
			margin:20px auto;
			filter:alpha(opacity=70);  /*支持 IE 浏览器*/
			-moz-opacity:0.70; /*支持 FireFox 浏览器*/
			opacity: 0.7;  /*支持 Chrome, Opera, Safari 等浏览器*/
		}
		.logo{
			border:0px solid red;
			height:70px;
		    background: linear-gradient(to right, #5151bd,blue,#0606ff,#0098e1,#4174fa,indigo); /* 标准的语法（必须放在最后） */
		}
		
	</style>
</head>
<body>
	<div class="logo">
		<img alt="" src="${ctxStatic}/images/logo.png" style="float:left;margin:5px 0px 5px 160px;">
		<!-- <img alt="" src="${ctxStatic}/images/computer.png" style="float:right;margin:5px 100px 5px 0px;"> -->
		<span style="border:0px solid red;font-family:monospace;color:#fff;font-weight:bold;line-height:70px;font-size:28px;">中华人民共和国进出口燃气具检验监督管理中心</span>
	</div>
	<div id="h1"><h1 class="form-signin-heading">${fns:getConfig('productName')}</h1></div>
	<form:form id="inputForm" modelAttribute="user" action="${ctx}/save" method="post" class="form-horizontal">
		<div class="layout">
			<form:hidden path="id"/>
			<sys:message content="${message}"/>
			<div class="control-groups">
				<label class="control-label">姓名:</label>
				<div class="controls">
					<form:input path="name" htmlEscape="false" maxlength="50" class="required"/>
					<span class="help-inline"><font color="red">*</font> </span>
				</div>
			</div>
			<div class="control-groups">
				<label class="control-label">登录名:</label>
				<div class="controls">
					<input id="oldLoginName" name="oldLoginName" type="hidden" value="${user.loginName}">
					<form:input path="loginName" htmlEscape="false" maxlength="50" class="required userName"/>
					<span class="help-inline"><font color="red">*</font> </span>
				</div>
			</div>
			<div class="control-groups">
				<label class="control-label">密码:</label>
				<div class="controls">
					<input id="newPassword" name="newPassword" type="password" value="" maxlength="50" minlength="3" class="${empty user.id?'required':''}"/>
					<c:if test="${empty user.id}"><span class="help-inline"><font color="red">*</font> </span></c:if>
					<c:if test="${not empty user.id}"><span class="help-inline">若不修改密码，请留空。</span></c:if>
				</div>
			</div>
			<div class="control-groups">
				<label class="control-label">确认密码:</label>
				<div class="controls">
					<input id="confirmNewPassword" name="confirmNewPassword" type="password" value="" maxlength="50" minlength="3" equalTo="#newPassword"/>
					<c:if test="${empty user.id}"><span class="help-inline"><font color="red">*</font> </span></c:if>
				</div>
			</div>
			<div class="control-groups">
				<label class="control-label">手机:</label>
				<div class="controls">
					<form:input path="mobile" htmlEscape="false" maxlength="100" class="required"/>
					<span class="help-inline"><font color="red">*</font> </span>
				</div>
			</div>
			<div class="control-groups">
				<label class="control-label">电话:</label>
				<div class="controls">
					<form:input path="phone" htmlEscape="false" maxlength="100"  class="required"/>
					<span class="help-inline"><font color="red">*</font> </span>
				</div>
			</div>
			<div class="control-groups">
				<label class="control-label">邮箱:</label>
				<div class="controls">
					<form:input path="email" htmlEscape="false" maxlength="100" class="email" required="true"/>
					<span class="help-inline"><font color="red">*</font> </span>
				</div>
			</div>
			<div class="control-groups">
				<input id="btnSubmit" class="btn btn-primary" type="submit" value="提交"/>&nbsp;
				<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
			</div>
		</div>
	</form:form>
	<div id="footer">
		Copyright &copy; 2012-${fns:getConfig('copyrightYear')} ${fns:getConfig('productName')} 
	</div>
</body>
</html>