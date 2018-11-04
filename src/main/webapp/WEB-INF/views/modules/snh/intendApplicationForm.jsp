<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>意向申请管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
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
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/snh/intendApplication/">意向申请列表</a></li>
		<li class="active"><a href="${ctx}/snh/intendApplication/form?id=${intendApplication.id}">意向申请<shiro:hasPermission name="snh:intendApplication:edit">${not empty intendApplication.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="snh:intendApplication:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="intendApplication" action="${ctx}/snh/intendApplication/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">用户名：</label>
			<div class="controls">
				<form:input path="username" htmlEscape="false" maxlength="50" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">申请人名称：</label>
			<div class="controls">
				<form:input path="proposerName" htmlEscape="false" maxlength="120" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">申请人地址：</label>
			<div class="controls">
				<form:input path="proposerAddress" htmlEscape="false" maxlength="400" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">申请人邮编：</label>
			<div class="controls">
				<form:input path="proposerZipcode" htmlEscape="false" maxlength="20" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">申请人联系人：</label>
			<div class="controls">
				<form:input path="proposerLinkman" htmlEscape="false" maxlength="40" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">申请人电话：</label>
			<div class="controls">
				<form:input path="proposerPhone" htmlEscape="false" maxlength="40" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">传真：</label>
			<div class="controls">
				<form:input path="proposerFax" htmlEscape="false" maxlength="40" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">e _mail：</label>
			<div class="controls">
				<form:input path="proposerEmail" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">manufacturer_name：</label>
			<div class="controls">
				<form:input path="manufacturerName" htmlEscape="false" maxlength="120" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">manufacturer_address：</label>
			<div class="controls">
				<form:input path="manufacturerAddress" htmlEscape="false" maxlength="400" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">manufacturer_zipcode：</label>
			<div class="controls">
				<form:input path="manufacturerZipcode" htmlEscape="false" maxlength="40" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">manufacturer_linkman：</label>
			<div class="controls">
				<form:input path="manufacturerLinkman" htmlEscape="false" maxlength="40" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">manufacturer_phone：</label>
			<div class="controls">
				<form:input path="manufacturerPhone" htmlEscape="false" maxlength="40" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">manufacturer_fax：</label>
			<div class="controls">
				<form:input path="manufacturerFax" htmlEscape="false" maxlength="40" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">manufacturer_email：</label>
			<div class="controls">
				<form:input path="manufacturerEmail" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">producer_name：</label>
			<div class="controls">
				<form:input path="producerName" htmlEscape="false" maxlength="120" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">producer_address：</label>
			<div class="controls">
				<form:input path="producerAddress" htmlEscape="false" maxlength="400" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">producer_zipcode：</label>
			<div class="controls">
				<form:input path="producerZipcode" htmlEscape="false" maxlength="20" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">producer_linkman：</label>
			<div class="controls">
				<form:input path="producerLinkman" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">producer_phone：</label>
			<div class="controls">
				<form:input path="producerPhone" htmlEscape="false" maxlength="40" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">producer_fax：</label>
			<div class="controls">
				<form:input path="producerFax" htmlEscape="false" maxlength="40" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">producer_email：</label>
			<div class="controls">
				<form:input path="producerEmail" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">agent_name：</label>
			<div class="controls">
				<form:input path="agentName" htmlEscape="false" maxlength="120" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">agent_address：</label>
			<div class="controls">
				<form:input path="agentAddress" htmlEscape="false" maxlength="400" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">agent_zipcode：</label>
			<div class="controls">
				<form:input path="agentZipcode" htmlEscape="false" maxlength="20" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">agent_linkman：</label>
			<div class="controls">
				<form:input path="agentLinkman" htmlEscape="false" maxlength="40" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">agent_phone：</label>
			<div class="controls">
				<form:input path="agentPhone" htmlEscape="false" maxlength="40" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">agent_fax：</label>
			<div class="controls">
				<form:input path="agentFax" htmlEscape="false" maxlength="40" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">agent_email：</label>
			<div class="controls">
				<form:input path="agentEmail" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">product_type1：</label>
			<div class="controls">
				<form:input path="productType1" htmlEscape="false" maxlength="20" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">product_type2：</label>
			<div class="controls">
				<form:input path="productType2" htmlEscape="false" maxlength="20" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">product_type3：</label>
			<div class="controls">
				<form:input path="productType3" htmlEscape="false" maxlength="20" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">审批结果：</label>
			<div class="controls">
				<form:checkboxes path="admission" items="${fns:getDictList('approve_state')}" itemLabel="label" itemValue="value" htmlEscape="false" class="required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">审批人：</label>
			<div class="controls">
				<sys:treeselect id="sanctifier" name="sanctifier" value="${intendApplication.sanctifier}" labelName="" labelValue="${intendApplication.}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="" allowClear="true" notAllowSelectParent="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备案号：</label>
			<div class="controls">
				<form:input path="recordNo" htmlEscape="false" maxlength="10" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">批准日期：</label>
			<div class="controls">
				<input name="authorizeDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${intendApplication.authorizeDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">申请日期：</label>
			<div class="controls">
				<input name="applicationDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
					value="<fmt:formatDate value="${intendApplication.applicationDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">原因：</label>
			<div class="controls">
				<form:input path="errortext" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="snh:intendApplication:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>