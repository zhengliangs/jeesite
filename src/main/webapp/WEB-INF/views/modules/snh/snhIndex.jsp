<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>用户管理</title>
	<meta name="decorator" content="default"/>

	<link rel="stylesheet" href="${ctxStatic}/html/css/style.css">
	
	<style type="text/css">
		*{margin:0;padding:0}
		body {border:0px solid red;}
		.content {border:0px solid blue; width:80%; margin:20px auto; text-align:center;}
		.demo {border:0px solid yellow; margin:0 auto;}
	</style>
	
</head>
<body>
	
	<div class="content">
	
		
			<div class="demo">
				<a class="control prev"></a><a class="control next abs"></a><!--自定义按钮，移动端可不写-->
				<div class="slider"><!--主体结构，请用此类名调用插件，此类名可自定义-->
					<ul>
						<li><a href="#"><img src="${ctxStatic}/html/images/1.jpg" alt="两弯似蹙非蹙笼烟眉，一双似喜非喜含情目。" /></a></li>
						<li><a href="#"><img src="${ctxStatic}/html/images/2.jpg" alt="态生两靥之愁，娇袭一身之病。" /></a></li>
						<li><a href="#"><img src="${ctxStatic}/html/images/3.jpg" alt="泪光点点，娇喘微微。" /></a></li>
						<li><a href="#"><img src="${ctxStatic}/html/images/4.jpg" alt="闲静似娇花照水，行动如弱柳扶风。" /></a></li>
						<li><a href="#"><img src="${ctxStatic}/html/images/5.jpg" alt="心较比干多一窍，病如西子胜三分。" /></a></li>
					</ul>
				</div>
			</div>
			<script src="${ctxStatic}/html/js/jquery.min.js"></script>
			<script src="${ctxStatic}/html/js/YuxiSlider.jQuery.min.js"></script>
			<script>
			$(".slider").YuxiSlider({
				width:800, //容器宽度
				height:450, //容器高度
				control:$('.control'), //绑定控制按钮
				during:4000, //间隔4秒自动滑动
				speed:800, //移动速度0.8秒
				mousewheel:true, //是否开启鼠标滚轮控制
				direkey:true //是否开启左右箭头方向控制
			});
			</script>
		
		
		<!-- <div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
		<p>适用浏览器：IE8、360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗.</p>
		<p>来源：<a href="http://sc.chinaz.com/" target="_blank">站长素材</a></p>
		</div> -->
	
		
	</div>
	
</body>
</html>