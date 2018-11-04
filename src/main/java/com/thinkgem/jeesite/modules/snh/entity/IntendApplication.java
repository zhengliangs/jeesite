/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.snh.entity;

import org.hibernate.validator.constraints.Length;
import javax.validation.constraints.NotNull;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 意向申请模块Entity
 * @author zhengs
 * @version 2017-08-15
 */
public class IntendApplication extends DataEntity<IntendApplication> {
	
	private static final long serialVersionUID = 1L;
	private String username;		// 用户名
	private String proposerName;		// 申请人名称
	private String proposerAddress;		// 申请人地址
	private String proposerZipcode;		// 申请人邮编
	private String proposerLinkman;		// 申请人联系人
	private String proposerPhone;		// 申请人电话
	private String proposerFax;		// 传真
	private String proposerEmail;		// e _mail
	private String manufacturerName;		// manufacturer_name
	private String manufacturerAddress;		// manufacturer_address
	private String manufacturerZipcode;		// manufacturer_zipcode
	private String manufacturerLinkman;		// manufacturer_linkman
	private String manufacturerPhone;		// manufacturer_phone
	private String manufacturerFax;		// manufacturer_fax
	private String manufacturerEmail;		// manufacturer_email
	private String producerName;		// producer_name
	private String producerAddress;		// producer_address
	private String producerZipcode;		// producer_zipcode
	private String producerLinkman;		// producer_linkman
	private String producerPhone;		// producer_phone
	private String producerFax;		// producer_fax
	private String producerEmail;		// producer_email
	private String agentName;		// agent_name
	private String agentAddress;		// agent_address
	private String agentZipcode;		// agent_zipcode
	private String agentLinkman;		// agent_linkman
	private String agentPhone;		// agent_phone
	private String agentFax;		// agent_fax
	private String agentEmail;		// agent_email
	private String productType1;		// product_type1
	private String productType2;		// product_type2
	private String productType3;		// product_type3
	private Integer admission;		// 审批结果
	private String sanctifier;		// 审批人
	private String recordNo;		// 备案号
	private Date authorizeDate;		// 批准日期
	private Date applicationDate;		// 申请日期
	private String errortext;		// 原因
	
	public IntendApplication() {
		super();
	}

	public IntendApplication(String id){
		super(id);
	}

	@Length(min=1, max=50, message="用户名长度必须介于 1 和 50 之间")
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	@Length(min=0, max=120, message="申请人名称长度必须介于 0 和 120 之间")
	public String getProposerName() {
		return proposerName;
	}

	public void setProposerName(String proposerName) {
		this.proposerName = proposerName;
	}
	
	@Length(min=0, max=400, message="申请人地址长度必须介于 0 和 400 之间")
	public String getProposerAddress() {
		return proposerAddress;
	}

	public void setProposerAddress(String proposerAddress) {
		this.proposerAddress = proposerAddress;
	}
	
	@Length(min=0, max=20, message="申请人邮编长度必须介于 0 和 20 之间")
	public String getProposerZipcode() {
		return proposerZipcode;
	}

	public void setProposerZipcode(String proposerZipcode) {
		this.proposerZipcode = proposerZipcode;
	}
	
	@Length(min=0, max=40, message="申请人联系人长度必须介于 0 和 40 之间")
	public String getProposerLinkman() {
		return proposerLinkman;
	}

	public void setProposerLinkman(String proposerLinkman) {
		this.proposerLinkman = proposerLinkman;
	}
	
	@Length(min=0, max=40, message="申请人电话长度必须介于 0 和 40 之间")
	public String getProposerPhone() {
		return proposerPhone;
	}

	public void setProposerPhone(String proposerPhone) {
		this.proposerPhone = proposerPhone;
	}
	
	@Length(min=0, max=40, message="传真长度必须介于 0 和 40 之间")
	public String getProposerFax() {
		return proposerFax;
	}

	public void setProposerFax(String proposerFax) {
		this.proposerFax = proposerFax;
	}
	
	@Length(min=0, max=100, message="e _mail长度必须介于 0 和 100 之间")
	public String getProposerEmail() {
		return proposerEmail;
	}

	public void setProposerEmail(String proposerEmail) {
		this.proposerEmail = proposerEmail;
	}
	
	@Length(min=0, max=120, message="manufacturer_name长度必须介于 0 和 120 之间")
	public String getManufacturerName() {
		return manufacturerName;
	}

	public void setManufacturerName(String manufacturerName) {
		this.manufacturerName = manufacturerName;
	}
	
	@Length(min=0, max=400, message="manufacturer_address长度必须介于 0 和 400 之间")
	public String getManufacturerAddress() {
		return manufacturerAddress;
	}

	public void setManufacturerAddress(String manufacturerAddress) {
		this.manufacturerAddress = manufacturerAddress;
	}
	
	@Length(min=0, max=40, message="manufacturer_zipcode长度必须介于 0 和 40 之间")
	public String getManufacturerZipcode() {
		return manufacturerZipcode;
	}

	public void setManufacturerZipcode(String manufacturerZipcode) {
		this.manufacturerZipcode = manufacturerZipcode;
	}
	
	@Length(min=0, max=40, message="manufacturer_linkman长度必须介于 0 和 40 之间")
	public String getManufacturerLinkman() {
		return manufacturerLinkman;
	}

	public void setManufacturerLinkman(String manufacturerLinkman) {
		this.manufacturerLinkman = manufacturerLinkman;
	}
	
	@Length(min=0, max=40, message="manufacturer_phone长度必须介于 0 和 40 之间")
	public String getManufacturerPhone() {
		return manufacturerPhone;
	}

	public void setManufacturerPhone(String manufacturerPhone) {
		this.manufacturerPhone = manufacturerPhone;
	}
	
	@Length(min=0, max=40, message="manufacturer_fax长度必须介于 0 和 40 之间")
	public String getManufacturerFax() {
		return manufacturerFax;
	}

	public void setManufacturerFax(String manufacturerFax) {
		this.manufacturerFax = manufacturerFax;
	}
	
	@Length(min=0, max=100, message="manufacturer_email长度必须介于 0 和 100 之间")
	public String getManufacturerEmail() {
		return manufacturerEmail;
	}

	public void setManufacturerEmail(String manufacturerEmail) {
		this.manufacturerEmail = manufacturerEmail;
	}
	
	@Length(min=0, max=120, message="producer_name长度必须介于 0 和 120 之间")
	public String getProducerName() {
		return producerName;
	}

	public void setProducerName(String producerName) {
		this.producerName = producerName;
	}
	
	@Length(min=0, max=400, message="producer_address长度必须介于 0 和 400 之间")
	public String getProducerAddress() {
		return producerAddress;
	}

	public void setProducerAddress(String producerAddress) {
		this.producerAddress = producerAddress;
	}
	
	@Length(min=0, max=20, message="producer_zipcode长度必须介于 0 和 20 之间")
	public String getProducerZipcode() {
		return producerZipcode;
	}

	public void setProducerZipcode(String producerZipcode) {
		this.producerZipcode = producerZipcode;
	}
	
	@Length(min=0, max=100, message="producer_linkman长度必须介于 0 和 100 之间")
	public String getProducerLinkman() {
		return producerLinkman;
	}

	public void setProducerLinkman(String producerLinkman) {
		this.producerLinkman = producerLinkman;
	}
	
	@Length(min=0, max=40, message="producer_phone长度必须介于 0 和 40 之间")
	public String getProducerPhone() {
		return producerPhone;
	}

	public void setProducerPhone(String producerPhone) {
		this.producerPhone = producerPhone;
	}
	
	@Length(min=0, max=40, message="producer_fax长度必须介于 0 和 40 之间")
	public String getProducerFax() {
		return producerFax;
	}

	public void setProducerFax(String producerFax) {
		this.producerFax = producerFax;
	}
	
	@Length(min=0, max=100, message="producer_email长度必须介于 0 和 100 之间")
	public String getProducerEmail() {
		return producerEmail;
	}

	public void setProducerEmail(String producerEmail) {
		this.producerEmail = producerEmail;
	}
	
	@Length(min=0, max=120, message="agent_name长度必须介于 0 和 120 之间")
	public String getAgentName() {
		return agentName;
	}

	public void setAgentName(String agentName) {
		this.agentName = agentName;
	}
	
	@Length(min=0, max=400, message="agent_address长度必须介于 0 和 400 之间")
	public String getAgentAddress() {
		return agentAddress;
	}

	public void setAgentAddress(String agentAddress) {
		this.agentAddress = agentAddress;
	}
	
	@Length(min=0, max=20, message="agent_zipcode长度必须介于 0 和 20 之间")
	public String getAgentZipcode() {
		return agentZipcode;
	}

	public void setAgentZipcode(String agentZipcode) {
		this.agentZipcode = agentZipcode;
	}
	
	@Length(min=0, max=40, message="agent_linkman长度必须介于 0 和 40 之间")
	public String getAgentLinkman() {
		return agentLinkman;
	}

	public void setAgentLinkman(String agentLinkman) {
		this.agentLinkman = agentLinkman;
	}
	
	@Length(min=0, max=40, message="agent_phone长度必须介于 0 和 40 之间")
	public String getAgentPhone() {
		return agentPhone;
	}

	public void setAgentPhone(String agentPhone) {
		this.agentPhone = agentPhone;
	}
	
	@Length(min=0, max=40, message="agent_fax长度必须介于 0 和 40 之间")
	public String getAgentFax() {
		return agentFax;
	}

	public void setAgentFax(String agentFax) {
		this.agentFax = agentFax;
	}
	
	@Length(min=0, max=100, message="agent_email长度必须介于 0 和 100 之间")
	public String getAgentEmail() {
		return agentEmail;
	}

	public void setAgentEmail(String agentEmail) {
		this.agentEmail = agentEmail;
	}
	
	@Length(min=0, max=20, message="product_type1长度必须介于 0 和 20 之间")
	public String getProductType1() {
		return productType1;
	}

	public void setProductType1(String productType1) {
		this.productType1 = productType1;
	}
	
	@Length(min=0, max=20, message="product_type2长度必须介于 0 和 20 之间")
	public String getProductType2() {
		return productType2;
	}

	public void setProductType2(String productType2) {
		this.productType2 = productType2;
	}
	
	@Length(min=0, max=20, message="product_type3长度必须介于 0 和 20 之间")
	public String getProductType3() {
		return productType3;
	}

	public void setProductType3(String productType3) {
		this.productType3 = productType3;
	}
	
	@NotNull(message="审批结果不能为空")
	public Integer getAdmission() {
		return admission;
	}

	public void setAdmission(Integer admission) {
		this.admission = admission;
	}
	
	@Length(min=0, max=10, message="审批人长度必须介于 0 和 10 之间")
	public String getSanctifier() {
		return sanctifier;
	}

	public void setSanctifier(String sanctifier) {
		this.sanctifier = sanctifier;
	}
	
	@Length(min=0, max=10, message="备案号长度必须介于 0 和 10 之间")
	public String getRecordNo() {
		return recordNo;
	}

	public void setRecordNo(String recordNo) {
		this.recordNo = recordNo;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getAuthorizeDate() {
		return authorizeDate;
	}

	public void setAuthorizeDate(Date authorizeDate) {
		this.authorizeDate = authorizeDate;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="申请日期不能为空")
	public Date getApplicationDate() {
		return applicationDate;
	}

	public void setApplicationDate(Date applicationDate) {
		this.applicationDate = applicationDate;
	}
	
	@Length(min=0, max=255, message="原因长度必须介于 0 和 255 之间")
	public String getErrortext() {
		return errortext;
	}

	public void setErrortext(String errortext) {
		this.errortext = errortext;
	}
	
}