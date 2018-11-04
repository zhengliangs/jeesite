/*
 * execute following in sqlplus
 * 
 * 创建表空间
 * 
 * keystorePass="cb4xucOD"
 * */

create temporary tablespace HKG_temp tempfile '/mnt/oracledb/ranqiju/hkg_temp.dbf' size 50m autoextend on next 50m maxsize 2048m extent management local;  

create tablespace HKG logging datafile '/mnt/oracledb/hkg/ranqiju/hkg_data.dbf' size 50m autoextend on next 50m maxsize 20480m extent management local;  

create tablespace SHUGANGRANQI logging datafile '/mnt/oracledb/ranqiju/shugangranqi_data.dbf' size 50m autoextend on next 50m maxsize 20480m extent management local;

create user hkgdba identified by fDqz3poAIm default tablespace HKG temporary tablespace HKG_temp;  

grant connect,dba to hkgdba;


/*
 * execute following in command line
 * 
 * 首先导出系统基础数据
 * 首先需要确保空表也创建segment，才能被成功导出
 * alter system set deferred_segment_creation=false scope=both;
 * 验证上述参数设置是否成功，应为FALSE
 * show parameter deferred_segment_creation;
 * 执行init-db.bat
 * exp hkgdba/fDqz3poAIm@ranqiju file=d:\oracle_db\hkgbase.dmp 
 * 
 * 导入初始数据
 * 
 * 首先导入系统基础数据
 * 
 * imp hkgdba/fDqz3poAIm fromuser=hkgdba touser=hkgdba file=/mnt/data/hkgbase.dmp log=hkgbaselog.txt
 * 
 * 导入燃气具原有数据
 * 
 * imp system/fDqz3poAIm@ranqiju fromuser=sjj touser=hkgdba file=/mnt/data/ranqiju.dmp log=ranqijulog.txt tables=AGREEMENT_TABLE,CERTEXES,CHECK_OK,CHECK_PLAN,EQUIPMENT_INFO,EXPORT_INFO,FLOWCOM_TABLE,FLOW_PRODUCT,PRO_APPLICATION,MESSAGE,MODIFY_COM,MODIFY_PRODUCT,OUTSOURCING_INFO,PASSED_PRODUCT,PRODUCER_INFO,PRODUCER_EXAM,PRODUCT_MONEY_NOTICE,REQUISITION_DETAIL,REQUISITION_MASTER,RESUBMITPRODUCT,SEND_PRODUCT_NOTICE,TEST_RESULT,USER_TABLE,ATTACH
 * imp system/fDqz3poAIm@ranqiju fromuser=sjj touser=hkgdba file=/mnt/data/ranqiju.dmp log=ranqijulog.txt tables=tb_action,tb_appendix,tb_applicationkp,tb_exchanges,tb_inscript,tb_kpdic,tb_maintext,tb_steplog,tb_steptable 
 * 
 * 
 * dbca -silent -deleteDatabase -sourceDB test -sysDBAUserName sys -sysDBAPassword oracle
 * 
 * select t1.name,t2.name from v$tablespace t1,v$datafile t2 where t1.ts# = t2.ts#;
 * 
 * dbca -silent -createDatabase -templateName General_Purpose.dbc -gdbname ilearn -sid ilearn -responseFile NO_VALUE -characterSet ZHS16GBK -memoryPercentage 30 -emConfiguration LOCAL -datafileDestination /mnt/oracledb -sysPassword JXT8LjvvPf -systemPassword JXT8LjvvPf -dbsnmpPassword JXT8LjvvPf
 * */
