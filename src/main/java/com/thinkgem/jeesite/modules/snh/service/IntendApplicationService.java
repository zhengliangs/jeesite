/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.snh.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.snh.entity.IntendApplication;
import com.thinkgem.jeesite.modules.snh.dao.IntendApplicationDao;

/**
 * 意向申请模块Service
 * @author zhengs
 * @version 2017-08-15
 */
@Service
@Transactional(readOnly = true)
public class IntendApplicationService extends CrudService<IntendApplicationDao, IntendApplication> {

	public IntendApplication get(String id) {
		return super.get(id);
	}
	
	public List<IntendApplication> findList(IntendApplication intendApplication) {
		return super.findList(intendApplication);
	}
	
	public Page<IntendApplication> findPage(Page<IntendApplication> page, IntendApplication intendApplication) {
		return super.findPage(page, intendApplication);
	}
	
	@Transactional(readOnly = false)
	public void save(IntendApplication intendApplication) {
		super.save(intendApplication);
	}
	
	@Transactional(readOnly = false)
	public void delete(IntendApplication intendApplication) {
		super.delete(intendApplication);
	}
	
}