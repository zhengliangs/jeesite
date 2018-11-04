<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>意向申请管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/snh/intendApplication/">意向申请列表</a></li>
		<shiro:hasPermission name="snh:intendApplication:edit"><li><a href="${ctx}/snh/intendApplication/form">意向申请添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="intendApplication" action="${ctx}/snh/intendApplication/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>备案号</th>
				<th>申请人名称</th>
				<th>制造商名称</th>
				<th>申请日期</th>
				<th>审批结果</th>
				<th>审批人</th>
				<th>批准日期</th>
				<shiro:hasPermission name="snh:intendApplication:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="intendApplication">
			<tr>
				<td>${intendApplication.recordNo }</td>
				<td>${intendApplication.proposerName }</td>
				<td>${intendApplication.manufacturerName }</td>
				<td>${intendApplication.applicationDate }</td>
				<td>${intendApplication.admission }</td>
				<td>${intendApplication.sanctifier }</td>
				<td>${intendApplication.authorizeDate }</td>
				<shiro:hasPermission name="snh:intendApplication:edit"><td>
    				<a href="${ctx}/snh/intendApplication/form?id=${intendApplication.id}">修改</a>
					<a href="${ctx}/snh/intendApplication/delete?id=${intendApplication.id}" onclick="return confirmx('确认要删除该意向申请吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>