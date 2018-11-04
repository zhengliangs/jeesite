package com.thinkgem.jeesite.modules.snh.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.thinkgem.jeesite.common.web.BaseController;

@Controller
@RequestMapping(value = "${adminPath}/snh/message")
public class MessageController extends BaseController {
	
	@RequiresPermissions("snh:message:view")
	@RequestMapping(value = "info")
	public String indexInfo( )
	{
		return "modules/snh/snhIndex";
	}
	
	@RequiresPermissions("snh:message:view")
	@RequestMapping(value = "list")
	public String list (HttpServletRequest req, HttpServletResponse res, Model model) {
		return "";
	}

}
