package com.thinkgem.jeesite.modules.sys.web;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.common.collect.Lists;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.sys.entity.Office;
import com.thinkgem.jeesite.modules.sys.entity.Role;
import com.thinkgem.jeesite.modules.sys.entity.User;
import com.thinkgem.jeesite.modules.sys.service.SystemService;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;

/**
 * 用户注册Controller
 * @author Administrator
 *
 */
@Controller
public class RegisterController extends BaseController{
	
	@Autowired
	private SystemService systemService;
	
	@ModelAttribute
	public User get(@RequestParam(required = false) String id) {
		 if ( StringUtils.isNotBlank(id)) {
			 return systemService.getUser(id);
		 } else {
			 User user = new User();
			 initUserDefault(user);
			 return user;
		 }
	}
	
	@RequestMapping(value = "${adminPath}/register")
	public String register(User user, HttpServletRequest request, Model model, RedirectAttributes redirectAttributes) {
		return "modules/sys/userRegister";
	}
	
	/**
	 * 功能：初始化用户信息
	 * 所属部门：生产企业
	 * 创建人：系统管理员（system administrator）
	 * 角色：企业
	 * 
	 * @param user
	 */
	private void initUserDefault(User user) {
		//初始化部门信息
		Office office = new Office("66");
		user.setCompany(office);
		user.setOffice(office);
		
		//初始化创建人信息
		User createBy = systemService.getUser("1");
		user.setCreateBy(createBy);
		Date date = new Date();
		user.setCreateDate(date);
		user.setUpdateBy(createBy);
		user.setUpdateDate(date);
		
		//初始化角色信息
		//注册用户默认为企业用户，其他用户由管理员添加
		Role role = systemService.getRoleByEnname("factory");
		user.setRole(role);
		List<Role> roleList = Lists.newArrayList();
		roleList.add(role);
		user.setRoleList(roleList);
		
		//初始化工号信息
		user.setNo("1000");
		user.setUserType("1");
		user.setSeriesNo("admin");
		user.setPower("0");
	}
	
	/**
	 * 功能：保存用户注册信息
	 * 
	 * @param user
	 * @param req
	 * @param model
	 * @param redirectAttributes
	 * @return
	 */
	@RequestMapping(value = "${adminPath}/save")
	public String save(User user, HttpServletRequest req, Model model, RedirectAttributes redirectAttributes) {
		
		//密码加密
		user.setPassword(SystemService.entryptPassword(user.getNewPassword()));
		
		//用户名检测
		if ( !"true".equals(checkLoginName(user.getOldLoginName(),user.getLoginName()))) {
			addMessage(model,"保存用户'" + user.getLoginName() + "'失败，登录名已存在");
			return adminPath + "/register";
		}
		
		//保存用户信息
		systemService.saveUser(user);
		
		//清除用户缓存
		if ( user.getLoginName().equals(UserUtils.getUser().getLoginName())) {
			UserUtils.clearCache();
		}
		addMessage(redirectAttributes, user.getLoginName() + "用户注册成功");
		return "redirect:" + adminPath + "/login";
	}
	
	@ResponseBody
	@RequestMapping(value = "${adminPath}/checkLoginName")
	public String checkLoginName( String oldLoginName,String loginName) {
		if ( loginName != null && loginName.equals(oldLoginName)) {
			return "true";
		} else if ( loginName != null && systemService.getUserByLoginName(loginName) == null ) {
			return "true";
		}
		return "false";
	}
	
}
