package com.thinkgem.jeesite.modules.snh.utils;

public class Constants 
{
	public static final int approve_state_rejected=0;	//不通过
	public static final int approve_state_admitted=1;	//通过
	public static final int approve_state_inited=2;		//尚未审批
	
	public static final int mp_approve_state_rejected=0;	//不通过
	public static final int mp_approve_state_admitted=1;	//通过
	public static final int mp_approve_state_inited=2;		//尚未审批
	public static final int mp_approve_state_addcheck=3;	//补充检测
	
	public static final int master_lieflogoff_no=0;		//未注销
	public static final int master_lieflogoff_yes=1;	//注销
	public static final int master_lieflogoff_apply=2;	//申请自愿注销
	
	public static final int product_checktype_new=0;	    //初检
	public static final int product_checktype_newadd=1;	    //初检补充检测
	public static final int product_checktype_sample=2;	    //年检
	public static final int product_checktype_sampleadd=5;	//年检补充检测
	public static final int product_checktype_recheck=3;	//复检
	public static final int product_checktype_recheckadd=4;	//复检补充检测
	public static final int product_checktype_modify=6;		//改良
	
	public static final int test_result_checking=-1;		//未检测
	public static final int test_result_no=0;				//不合格
	public static final int test_result_yes=1;				//合格
	public static final int test_result_add=2;				//补充检测
	
	public static final int flow_test_result_checking=-1;	//未检测
	public static final int flow_test_result_no=0;			//不合格
	public static final int flow_test_result_yes=1;			//合格
	public static final int flow_test_result_add=2;			//补充检测
	public static final int flow_test_result_recheckno=3;	//复检不合格
	
	public static final int product_type_new=0;				//新增（初审）
	public static final int product_type_recheck=1;			//复审
	public static final int product_type_sample=2;			//监督审查
	public static final int product_type_simliar=3;			//类似新增

	public static final int fac_type_new=0;					//初审
	public static final int fac_type_recheck=1;				//复审
	public static final int fac_type_sample=2;				//监督审查
	
	public static final int product_fcert_no=0;			//未颁发
	public static final int product_fcert_yes=1;			//已颁发
	
	public static final int passedproduct_status_valid=0;	//有效
	public static final int passedproduct_status_writeoff=1;	//注销
	public static final int passedproduct_status_outofdate=2;	//过期
	public static final int passedproduct_status_writeoff2=3;	//注销
	
	public static final int agreement_flag_inited=0;			//初始化
	public static final int agreement_flag_bsigned=1;			//核证机构签署
	public static final int agreement_flag_csigned=2;			//企业签署
	public static final int agreement_flag_breaded=3;			//核证机构已读
	public static final int agreement_flag_unkown=-1;			//未知

	public static final int labproduct_flag_unreceived=0;		//未确认
	public static final int labproduct_flag_received=1;			//相符
	public static final int labproduct_flag_notfit=2;			//不相符
	public static final int labproduct_flag_archived=3;			//归档
	
	public static final int tb_step_emsdfillcmd = 1;
	public static final int tb_step_zjzjviewcmd = 2;
	public static final int tb_step_zjzjfillcmd = 3;
	public static final int tb_step_certviewcmd = 4;
	public static final int tb_step_certfillreport = 5;
	public static final int tb_step_zjzjviewreport = 6;
	public static final int tb_step_zjzjfillreport = 7;
	public static final int tb_step_emsdviewreport = 8;
	public static final int tb_step_emsdfillres = 9;
	public static final int tb_step_zjzjviewres = 10;
	public static final int tb_step_certviewres = 11;
	public static final int tb_step_certinitexchange = 12;
	public static final int tb_step_emsdreplytexchange = 13;
	public static final int tb_step_certreplytexchange = 14;
	public static final int tb_step_certfinishtexchange = 15;
	
	public static final int tb_kpdic_emergencyexchange = 1;
	public static final int tb_kpdic_emergencycmd = 2;
	public static final int tb_kpdic_emergencydetail = 3;
	public static final int tb_kpdic_emergencyreport = 4;
	public static final int tb_kpdic_emergencyresult = 5;
	public static final int tb_kpdic_emergencyfinishrport = 6;

	public static final int tb_action_unread = 3;
	public static final int tb_action_readed = 1;
	public static final int tb_action_replied = 2;

	public static final String tb_sender_emsd="HK";
	public static final String tb_sender_cert="BIZ";

	public static final int tb_msg_modify = 1;
	public static final int tb_msg_writeoff = 2;
	
	public static final int tb_msg_certinit = 1;
	public static final int tb_msg_certreply = 2;
	public static final int tb_msg_emsdinit = 10;
	public static final int tb_msg_emsdreply = 3;
	public static final int tb_msg_finish = 4;
	
	public static final int checkplan_flag_first=1;			//?
	public static final int checkplan_flag_third=3;			//?
	
	public static final int master_fischeckok_yes=1;	//?
	public static final int master_fischeckok_no=0;		//?
	
	public static final int agreement_flag_null = -1;	//?
	public static final int agreement_flag_zero = 0;	//?
	public static final int agreement_flag_first = 1;	//?
	public static final int agreement_flag_second = 2;	//?
	public static final int agreement_flag_third = 3;	//?
	
	public static final int yes=1;		//是
	public static final int no=0;		//否
	public static final int message_state_readover=1;	//消息状态已读
	public static final int message_state_unread=0;		//消息状态未读
	
	public static final String message_fac="1";			//消息用户企业
	public static final String message_cert="2";		//消息用户审核
	public static final String message_lab="3";			//消息用户实验室
	public static final String message_emsd="4";			//消息用户实验室
	
	public static final int feemoney = 500;				//核证收费金额
	
	public static final int fee_flag_no = 0;			//未缴纳
	public static final int fee_flag_yes = 1;			//已缴纳
}
