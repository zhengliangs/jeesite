/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.snh.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.snh.entity.IntendApplication;

/**
 * 意向申请模块DAO接口
 * @author zhengs
 * @version 2017-08-15
 */
@MyBatisDao
public interface IntendApplicationDao extends CrudDao<IntendApplication> {
	
}