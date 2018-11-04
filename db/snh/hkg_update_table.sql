update HKG_FLOW_COM set passrealapp = 2 where passrealapp is null;
commit;

update HKG_FLOW_PRODUCT set testresult = 0 where testresult is null;
commit;

update HKG_COM_MAIN set id = HKG_SEQ_COMMON.nextval;
commit;

update HKG_PRODUCT_APP set id = HKG_SEQ_PRODUCT.nextval;
commit;

update HKG_INFO_PRODUCER set id = HKG_SEQ_COMMON.nextval;
commit;

update HKG_INFO_EQUIPMENT set id = HKG_SEQ_COMMON.nextval;
commit;

update HKG_INFO_OUTSOURCING set id = HKG_SEQ_COMMON.nextval;
commit;

update HKG_INFO_EXPORT set id = HKG_SEQ_COMMON.nextval;
commit;

update HKG_AGREEMENT set id = HKG_SEQ_COMMON.nextval;
commit;

update HKG_TEST_NOTICE set id = HKG_SEQ_TEST_NOTICE.nextval;
commit;

update HKG_FLOW_PRODUCT set id = HKG_SEQ_FLOW_PRODUCT.nextval;
commit;

update HKG_FLOW_COM set id = HKG_SEQ_COMMON.nextval;
commit;

update HKG_CHECK_SELF set id = HKG_SEQ_COMMON.nextval;
commit;

INSERT INTO HKG_CONFIG ( id) VALUES (1);
commit;

/*更新审查计划表类型数据*2016-11-05*/
update HKG_CHECK_PLAN set type_name=0 where type_name is null;
commit;
update HKG_CHECK_PLAN set type_name=0 where type_name='初始审核';
commit;
update HKG_CHECK_PLAN set type_name=0 where type_name='初始审查';
commit;
update HKG_CHECK_PLAN set type_name=1 where type_name='复验审查';
commit;
update HKG_CHECK_PLAN set type_name=2 where type_name='监督审查';
commit;

update HKG_CHECK_RESULT set id = HKG_SEQ_COMMON.nextval;
commit;
  
update HKG_TEST_RESULT set id = HKG_SEQ_TEST_RESULT.nextval;
commit;
update HKG_TEST_RESULT set is_result_sended = 1;/*正式发布前应确认没有检测结果通知下达内容*/
commit;

update HKG_PRODUCT_PASSED set id = HKG_SEQ_PRODUCT_PASSED.nextval;
commit;

update HKG_FEE_TEST set id = HKG_SEQ_TEST_FEE.nextval;
commit;

update HKG_FEE_CERT set id = HKG_SEQ_PRODUCT_CERTFEE.nextval;
commit;

update HKG_AGREEMENT a set docurl=(select file_url from attach b where b.record_no = a.record_no and b.offset = a.offset and b.file_type='Agreement');
commit;

update HKG_CHECK_RESULT a set docurl=(select file_url from attach b where b.record_no = a.record_no and b.offset = a.offset and b.file_type='CheckOK');
commit;

update HKG_CHECK_SELF a set docurl=(select file_url from attach b where b.record_no = a.record_no and b.offset = a.serial_number and b.file_type='ManageProducterCheck');
commit;

/*修改数据*/
UPDATE HKG_FLOW_MESSAGE set receiver='1' where receiver='1 ';
commit;
UPDATE HKG_FLOW_MESSAGE set receiver='2' where receiver='2 ';
commit;
UPDATE HKG_FLOW_MESSAGE set receiver='3' where receiver='3 ';
commit;

/*修改数据 2016-12-09*/
update HKG_COM_MAIN set state = '9' where state='0';
commit;
update HKG_COM_MAIN set state = '0' where state='1';
commit;
update HKG_COM_MAIN set state = '1' where state='2';
commit;
update HKG_COM_MAIN set state = '2' where state='9';
commit;

update HKG_MODIFY_COM set flag = 2 where flag=0;
commit;
update HKG_MODIFY_COM set flag = 0 where flag=-1;
commit;

update HKG_MODIFY_PRODUCT set flag = 2 where flag=0;
commit;
update HKG_MODIFY_PRODUCT set flag = 0 where flag=-1;
commit;

update HKG_TEST_NOTICE set flag_labconfirm_task = 1;
update HKG_TEST_NOTICE set flag_labconfirm_product = 1;

update HKG_TEST_RESULT set test_result = 0 where test_result=2;
commit;
update HKG_TEST_RESULT set test_result = 2 where test_result=3;
commit;

update HKG_FLOW_PRODUCT set testresult = -1 where testresult=0;
commit;

update HKG_FLOW_PRODUCT set testresult = 0 where testresult=2;
commit;

update HKG_FLOW_COM set passrealapp = 9 where passrealapp=0;
commit;

update HKG_FLOW_COM set passrealapp = 0 where passrealapp=2;
commit;

update HKG_FLOW_COM set passrealapp = 2 where passrealapp=9;
commit;

/*更新产品表产品类型字段，去掉空格2014-12-24*/
UPDATE HKG_PRODUCT_APP set TYPE='0' where type='0 '; 
UPDATE HKG_PRODUCT_APP set TYPE='1' where type='1 '; 
UPDATE HKG_PRODUCT_APP set TYPE='2' where type='2 ';
UPDATE HKG_PRODUCT_APP set PRO_TYPE='1' where PRO_TYPE='灶具类'; 
UPDATE HKG_PRODUCT_APP set PRO_TYPE='2' where PRO_TYPE=' 热水器类 '; 
UPDATE HKG_PRODUCT_APP set PRO_TYPE='2' where PRO_TYPE='热水器类'; 
UPDATE HKG_PRODUCT_APP set PRO_TYPE='2' where PRO_TYPE='热水器'; 
UPDATE HKG_PRODUCT_APP set PRO_TYPE='3' where PRO_TYPE='卡式炉'; 
UPDATE HKG_PRODUCT_APP set PRO_TYPE='4' where PRO_TYPE='丁烷气瓶'; 
UPDATE HKG_PRODUCT_APP set GAS_TYPE='1' where GAS_TYPE='香港液化石油气'; 
UPDATE HKG_PRODUCT_APP set GAS_TYPE='2' where GAS_TYPE='香港人工煤气'; 
UPDATE HKG_PRODUCT_APP set GAS_TYPE='3' where GAS_TYPE='丁烷气'; 
UPDATE HKG_PRODUCT_APP set GAS_TYPE='2' where GAS_TYPE='人工煤气'; 
COMMIT;

/*更新证书表 - 燃气类型字段数据  2017-01-07*/
update HKG_PRODUCT_PASSED set GAS_TYPE = '1' where GAS_TYPE = '香港液化石油气';
commit;
update HKG_PRODUCT_PASSED set GAS_TYPE = '2' where GAS_TYPE = '香港人工煤气';
commit;
update HKG_PRODUCT_PASSED set GAS_TYPE = '2' where GAS_TYPE = '人工煤气';
commit;
update HKG_PRODUCT_PASSED set GAS_TYPE = '3' where GAS_TYPE = '丁烷气';
commit;

/*更新企业信息修改表  - 修改字段  2017-01-06*/
update HKG_MODIFY_COM set field = 'PRODUCER_ADDRESS_C' where field = '生产厂址(中文)';
commit;
update HKG_MODIFY_COM set field = 'PRODUCER_ADDRESS_E' where field = '生产厂址(英文)';
commit;
update HKG_MODIFY_COM set field = 'PRODUCER_NAME_C' where field = '生产厂名称(中文)';
commit;
update HKG_MODIFY_COM set field = 'PRODUCER_NAME_E' where field = '生产厂名称(英文)';
commit;
update HKG_MODIFY_COM set field = 'PRODUCER_PHONE' where field = '联系电话';
commit;
update HKG_MODIFY_COM set field = 'PRODUCER_LINKMAN' where field = '联系人';
commit;
update HKG_MODIFY_COM set field = 'PROPOSER_EMAIL' where field = '企业Email';
commit;
update HKG_MODIFY_COM set field = 'PROPOSER_NAME' where field = '申请人';
commit;
update HKG_MODIFY_COM set field = 'PRODUCER_PHONE' where field = '其他';
commit;

/*更新正式申请表  - 生产许可类型字段数据  2017-01-06*/
update hkg_com_main set PRODUCT_TYPE1 = '3' where PRODUCT_TYPE1 = '灶具类';
commit;
update hkg_com_main set PRODUCT_TYPE1 = '4' where PRODUCT_TYPE1 = '热水器类';
commit;
update hkg_com_main set PRODUCT_TYPE1 = '5' where PRODUCT_TYPE1 = '其他类';
commit;
update hkg_com_main set PRODUCT_TYPE1 = '2' where PRODUCT_TYPE1 = '卡式炉';
commit;
update hkg_com_main set PRODUCT_TYPE1 = '1' where PRODUCT_TYPE1 = '丁烷气瓶';
commit;
update hkg_com_main set PRODUCT_TYPE2 = '3' where PRODUCT_TYPE2 = '灶具类';
commit;
update hkg_com_main set PRODUCT_TYPE2 = '4' where PRODUCT_TYPE2 = '热水器类';
commit;
update hkg_com_main set PRODUCT_TYPE2 = '5' where PRODUCT_TYPE2 = '其他类';
commit;
update hkg_com_main set PRODUCT_TYPE2 = '2' where PRODUCT_TYPE2 = '卡式炉';
commit;
update hkg_com_main set PRODUCT_TYPE2 = '1' where PRODUCT_TYPE2 = '丁烷气瓶';
commit;
update hkg_com_main set PRODUCT_TYPE3 = '3' where PRODUCT_TYPE3 = '灶具类';
commit;
update hkg_com_main set PRODUCT_TYPE3 = '4' where PRODUCT_TYPE3 = '热水器类';
commit;
update hkg_com_main set PRODUCT_TYPE3 = '5' where PRODUCT_TYPE3 = '其他类';
commit;
update hkg_com_main set PRODUCT_TYPE3 = '2' where PRODUCT_TYPE3 = '卡式炉';
commit;
update hkg_com_main set PRODUCT_TYPE3 = '1' where PRODUCT_TYPE3 = '丁烷气瓶';
commit;

/*更新正式申请表  - 企业性质字段数据  2017-01-06*/
update hkg_com_main set PRODUCER_TYPE = '3' where producer_type = '独资';
commit;
update hkg_com_main set PRODUCER_TYPE = '2' where producer_type = '合资';
commit;
update hkg_com_main set PRODUCER_TYPE = '4' where producer_type = '民营';
commit;
update hkg_com_main set PRODUCER_TYPE = '1' where producer_type = '国有';
commit;
update hkg_com_main set PRODUCER_TYPE = '6' where producer_type = '外资';
commit;
update hkg_com_main set PRODUCER_TYPE = '7' where producer_type = '中外合资';
commit;
update hkg_com_main set PRODUCER_TYPE = '5' where producer_type = '其他';
commit;

/*更新意向申请表 - 所申请产品类型字段  2017-01-05*/
update HKG_COM_INTEND set PRODUCT_TYPE1 = '1' where PRODUCT_TYPE1 = '灶具';
commit;
update HKG_COM_INTEND set PRODUCT_TYPE2 = '2' where PRODUCT_TYPE2 = '热水器';
commit;
update HKG_COM_INTEND set PRODUCT_TYPE3 = '5' where PRODUCT_TYPE3 = '其他类';
commit;

/*更新企业自查表A1-A53字段，去掉空格的同时，把0更新为1，1更新为0 2017-01-05*/
update HKG_check_self set a1 = '1' where a1 = '0 ';
commit;
update HKG_check_self set a1 = '0' where a1 = '1 ';
commit;
update HKG_check_self set a2 = '1' where a2 = '0 ';
commit;
update HKG_check_self set a2 = '0' where a2 = '1 ';
commit;
update HKG_check_self set a3 = '1' where a3 = '0 ';
commit;
update HKG_check_self set a3 = '0' where a3 = '1 ';
commit;
update HKG_check_self set a4 = '1' where a4 = '0 ';
commit;
update HKG_check_self set a4 = '0' where a4 = '1 ';
commit;
update HKG_check_self set a5 = '1' where a5 = '0 ';
commit;
update HKG_check_self set a5 = '0' where a5 = '1 ';
commit;
update HKG_check_self set a6 = '1' where a6 = '0 ';
commit;
update HKG_check_self set a6 = '0' where a6 = '1 ';
commit;
update HKG_check_self set a7 = '1' where a7 = '0 ';
commit;
update HKG_check_self set a7 = '0' where a7 = '1 ';
commit;
update HKG_check_self set a8 = '1' where a8 = '0 ';
commit;
update HKG_check_self set a8 = '0' where a8 = '1 ';
commit;
update HKG_check_self set a9 = '1' where a9 = '0 ';
commit;
update HKG_check_self set a9 = '0' where a9 = '1 ';
commit;
update HKG_check_self set a10 = '1' where a10 = '0 ';
commit;
update HKG_check_self set a10 = '0' where a10 = '1 ';
commit;
update HKG_check_self set a11 = '1' where a11 = '0 ';
commit;
update HKG_check_self set a11 = '0' where a11 = '1 ';
commit;
update HKG_check_self set a12 = '1' where a12 = '0 ';
commit;
update HKG_check_self set a12 = '0' where a12 = '1 ';
commit;
update HKG_check_self set a13 = '1' where a13 = '0 ';
commit;
update HKG_check_self set a13 = '0' where a13 = '1 ';
commit;
update HKG_check_self set a14 = '1' where a14 = '0 ';
commit;
update HKG_check_self set a14 = '0' where a14 = '1 ';
commit;
update HKG_check_self set a15 = '1' where a15 = '0 ';
commit;
update HKG_check_self set a15 = '0' where a15 = '1 ';
commit;
update HKG_check_self set a16 = '1' where a16 = '0 ';
commit;
update HKG_check_self set a16 = '0' where a16 = '1 ';
commit;
update HKG_check_self set a17 = '1' where a17 = '0 ';
commit;
update HKG_check_self set a17 = '0' where a17 = '1 ';
commit;
update HKG_check_self set a18 = '1' where a18 = '0 ';
commit;
update HKG_check_self set a18 = '0' where a18 = '1 ';
commit;
update HKG_check_self set a19 = '1' where a19 = '0 ';
commit;
update HKG_check_self set a19 = '0' where a19 = '1 ';
commit;
update HKG_check_self set a20 = '1' where a20 = '0 ';
commit;
update HKG_check_self set a20 = '0' where a20 = '1 ';
commit;
update HKG_check_self set a21 = '1' where a21 = '0 ';
commit;
update HKG_check_self set a21 = '0' where a21 = '1 ';
commit;
update HKG_check_self set a22 = '1' where a22 = '0 ';
commit;
update HKG_check_self set a22 = '0' where a22 = '1 ';
commit;
update HKG_check_self set a23 = '1' where a23 = '0 ';
commit;
update HKG_check_self set a23 = '0' where a23 = '1 ';
commit;
update HKG_check_self set a24 = '1' where a24 = '0 ';
commit;
update HKG_check_self set a24 = '0' where a24 = '1 ';
commit;
update HKG_check_self set a25 = '1' where a25 = '0 ';
commit;
update HKG_check_self set a25 = '0' where a25 = '1 ';
commit;
update HKG_check_self set a26 = '1' where a26 = '0 ';
commit;
update HKG_check_self set a26 = '0' where a26 = '1 ';
commit;
update HKG_check_self set a27 = '1' where a27 = '0 ';
commit;
update HKG_check_self set a27 = '0' where a27 = '1 ';
commit;
update HKG_check_self set a28 = '1' where a28 = '0 ';
commit;
update HKG_check_self set a28 = '0' where a28 = '1 ';
commit;
update HKG_check_self set a29 = '1' where a29 = '0 ';
commit;
update HKG_check_self set a29 = '0' where a29 = '1 ';
commit;
update HKG_check_self set a30 = '1' where a30 = '0 ';
commit;
update HKG_check_self set a30 = '0' where a30 = '1 ';
commit;
update HKG_check_self set a31 = '1' where a31 = '0 ';
commit;
update HKG_check_self set a31 = '0' where a31 = '1 ';
commit;
update HKG_check_self set a32 = '1' where a32 = '0 ';
commit;
update HKG_check_self set a32 = '0' where a32 = '1 ';
commit;
update HKG_check_self set a33 = '1' where a33 = '0 ';
commit;
update HKG_check_self set a33 = '0' where a33 = '1 ';
commit;
update HKG_check_self set a34 = '1' where a34 = '0 ';
commit;
update HKG_check_self set a34 = '0' where a34 = '1 ';
commit;
update HKG_check_self set a35 = '1' where a35 = '0 ';
commit;
update HKG_check_self set a35 = '0' where a35 = '1 ';
commit;
update HKG_check_self set a36 = '1' where a36 = '0 ';
commit;
update HKG_check_self set a36 = '0' where a36 = '1 ';
commit;
update HKG_check_self set a37 = '1' where a37 = '0 ';
commit;
update HKG_check_self set a37 = '0' where a37 = '1 ';
commit;
update HKG_check_self set a38 = '1' where a38 = '0 ';
commit;
update HKG_check_self set a38 = '0' where a38 = '1 ';
commit;
update HKG_check_self set a39 = '1' where a39 = '0 ';
commit;
update HKG_check_self set a39 = '0' where a39 = '1 ';
commit;
update HKG_check_self set a40 = '1' where a40 = '0 ';
commit;
update HKG_check_self set a40 = '0' where a40 = '1 ';
commit;
update HKG_check_self set a41 = '1' where a41 = '0 ';
commit;
update HKG_check_self set a41 = '0' where a41 = '1 ';
commit;
update HKG_check_self set a42 = '1' where a42 = '0 ';
commit;
update HKG_check_self set a42 = '0' where a42 = '1 ';
commit;
update HKG_check_self set a43 = '1' where a43 = '0 ';
commit;
update HKG_check_self set a43 = '0' where a43 = '1 ';
commit;
update HKG_check_self set a44 = '1' where a44 = '0 ';
commit;
update HKG_check_self set a44 = '0' where a44 = '1 ';
commit;
update HKG_check_self set a45 = '1' where a45 = '0 ';
commit;
update HKG_check_self set a45 = '0' where a45 = '1 ';
commit;
update HKG_check_self set a46 = '1' where a46 = '0 ';
commit;
update HKG_check_self set a46 = '0' where a46 = '1 ';
commit;
update HKG_check_self set a47 = '1' where a47 = '0 ';
commit;
update HKG_check_self set a47 = '0' where a47 = '1 ';
commit;
update HKG_check_self set a48 = '1' where a48 = '0 ';
commit;
update HKG_check_self set a48 = '0' where a48 = '1 ';
commit;
update HKG_check_self set a49 = '1' where a49 = '0 ';
commit;
update HKG_check_self set a49 = '0' where a49 = '1 ';
commit;
update HKG_check_self set a50 = '1' where a50 = '0 ';
commit;
update HKG_check_self set a50 = '0' where a50 = '1 ';
commit;
update HKG_check_self set a51 = '1' where a51 = '0 ';
commit;
update HKG_check_self set a51 = '0' where a51 = '1 ';
commit;
update HKG_check_self set a52 = '1' where a52 = '0 ';
commit;
update HKG_check_self set a52 = '0' where a52 = '1 ';
commit;
update HKG_check_self set a53 = '1' where a53 = '0 ';
commit;
update HKG_check_self set a53 = '0' where a53 = '1 ';
commit;

 update hkg_product_app set photo1='/hgcert/uf/error.gif' where photo1 is null;
 update hkg_product_app set photo2='/hgcert/uf/error.gif' where photo2 is null;
 update hkg_product_app set photo3='/hgcert/uf/error.gif' where photo3 is null;
 update hkg_product_app set photo4='/hgcert/uf/error.gif' where photo4 is null;
 update hkg_product_app set photo5='/hgcert/uf/error.gif' where photo5 is null;

 update hkg_product_app set photo1='/hgcert/uf/error.gif' where photo1='../error.gif';
 update hkg_product_app set photo2='/hgcert/uf/error.gif' where photo2='../error.gif';
 update hkg_product_app set photo3='/hgcert/uf/error.gif' where photo3='../error.gif';
 update hkg_product_app set photo4='/hgcert/uf/error.gif' where photo4='../error.gif';
 update hkg_product_app set photo5='/hgcert/uf/error.gif' where photo5='../error.gif';
 commit;
 
/*UPDATE TB_MAINTEXT set msg_type=substring(maintexttitle,1,len(maxtitle)-1);
COMMIT;*/

UPDATE HKG_USER SET create_date= sysdate where create_date is null;
UPDATE HKG_USER SET full_name= ' ' where full_name is null;

alter table sys_user add (
	"RECORD_NO" VARCHAR2(10 BYTE), 
	"SERIES_NO" VARCHAR2(10 BYTE) DEFAULT 'admin' NOT NULL ENABLE, 
	"CANCEL_DATE" DATE, 
	"POWER" NUMBER(2,0) DEFAULT 0
  );
  
alter table sys_user modify ("USER_TYPE" CHAR(2 BYTE));

create or replace
TRIGGER "HKG_INSERT_USER" AFTER
INSERT ON "SYS_USER" FOR EACH ROW Begin
INSERT INTO SYS_USER_ROLE (USER_ID, ROLE_ID) VALUES(:NEW.ID,7);
End;
/

INSERT INTO SYS_USER (
  ID , 
	COMPANY_ID, 
	OFFICE_ID, 
	LOGIN_NAME, 
	PASSWORD, 
	NO, 
	NAME, 
	USER_TYPE,
	CREATE_BY, 
	CREATE_DATE, 
	UPDATE_BY, 
	UPDATE_DATE, 
	DEL_FLAG, 
	RECORD_NO, 
	SERIES_NO, 
	CANCEL_DATE, 
	POWER)
select 
  HKG_SEQ_COMMON.nextval, 
  6,
  6,
  USERNAME, 
	PASSWORD, 
  '9999',
	FULL_NAME, 
	CAST(USER_TYPE as NUMBER(2,0)),
  1,
	CREATE_DATE, 
  1,
	CREATE_DATE, 
  0,
	RECORD_NO, 
	SERIES_NO, 
	CANCEL_DATE, 
	POWER
  from HKG_USER;

commit;

alter trigger HKG_INSERT_USER disable;
 
/*update sys_user set password='02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032'*/
