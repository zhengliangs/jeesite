/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.snh.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.snh.entity.IntendApplication;
import com.thinkgem.jeesite.modules.snh.service.IntendApplicationService;
import com.thinkgem.jeesite.modules.sys.entity.User;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;

/**
 * 意向申请模块Controller
 * @author zhengs
 * @version 2017-08-15
 */
@Controller
@RequestMapping(value = "${adminPath}/snh/intendApplication")
public class IntendApplicationController extends BaseController {

	@Autowired
	private IntendApplicationService intendApplicationService;
	
	@ModelAttribute
	public IntendApplication get(@RequestParam(required=false) String id) {
		
		IntendApplication entity = null;
		User user = UserUtils.getUser();
		
		if (StringUtils.isNotBlank(id)){
			
			//防止SQl注入
			long numId = 0;
			try {
				
				numId = Long.valueOf(id);
				intendApplicationService.get(String.valueOf(numId));
				
			} catch ( Exception e) {
				
			}
		}
		
		if (entity == null){
			entity = new IntendApplication();
			entity.setRecordNo(user.getRecordNo());
		}
		return entity;
	}
	
	/**
	 * 功能：意向申请列表
	 * 
	 * 核证机构：显示全部意向申请列表，并可在列表中选择进行审核。
	 * 企业：跳转到意向申请页面，填写申请内容
	 * 
	 * 前端：菜单--意向申请
	 * 
	 * @param intendApplication
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequiresPermissions("snh:intendApplication:view")
	@RequestMapping(value = {"list", ""})
	public String list(IntendApplication intendApplication, HttpServletRequest request, HttpServletResponse response, Model model) {
		User user = UserUtils.getUser();
		//企业用户直接跳转到申请填写页面
		if ( user.isFactory())
		{
			return "redirect" + Global.getAdminPath() + "/snh/intendApplication/form";
		}
		//核证机构显示列表信息
		else if ( user.isCertManager())
		{
			Page<IntendApplication> page = intendApplicationService.findPage(new Page<IntendApplication>(request, response), intendApplication);
			page.setOrderBy("application_data desc");
			model.addAttribute("page", page);
			model.addAttribute("op", "list");
			return "modules/snh/intendApplicationList";
		}
		else
		{
			return "error/403";
		}
	}

	@RequiresPermissions("snh:intendApplication:view")
	@RequestMapping(value = "form")
	public String form(IntendApplication intendApplication, Model model) 
	{
		User user = UserUtils.getUser();
		model.addAttribute("intendApplication", intendApplication);
		return "modules/snh/intendApplicationForm";
	}

	@RequiresPermissions("snh:intendApplication:edit")
	@RequestMapping(value = "save")
	public String save(IntendApplication intendApplication, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, intendApplication)){
			return form(intendApplication, model);
		}
		intendApplicationService.save(intendApplication);
		addMessage(redirectAttributes, "保存意向申请成功");
		return "redirect:"+Global.getAdminPath()+"/snh/intendApplication/?repage";
	}
	
	@RequiresPermissions("snh:intendApplication:edit")
	@RequestMapping(value = "delete")
	public String delete(IntendApplication intendApplication, RedirectAttributes redirectAttributes) {
		intendApplicationService.delete(intendApplication);
		addMessage(redirectAttributes, "删除意向申请成功");
		return "redirect:"+Global.getAdminPath()+"/snh/intendApplication/?repage";
	}

}