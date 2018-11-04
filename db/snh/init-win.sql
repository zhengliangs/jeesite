sqlplus:

create temporary tablespace HKG_temp  
tempfile 'D:\oracle_db\ranqiju\hkg_temp.dbf' 
size 50m  
autoextend on  
next 50m maxsize 2048m  
extent management local;  

create tablespace HKG  
logging  
datafile 'D:\oracle_db\ranqiju\hkg_data.dbf' 
size 50m  
autoextend on  
next 50m maxsize 20480m  
extent management local;  

create user hkgdba identified by fDqz3poAIm  
default tablespace HKG  
temporary tablespace HKG_temp;  

grant connect,dba to hkgdba;


cmd:

imp system/iminda@ranqiju fromuser=sjj touser=hkgdba file=ranqiju.dmp log=ranqijulog.txt tables=AGREEMENT_TABLE,CERTEXES,CHECK_OK,CHECK_PLAN,EQUIPMENT_INFO,EXPORT_INFO,FLOWCOM_TABLE,FLOW_PRODUCT,PRO_APPLICATION,MESSAGE,MODIFY_COM,MODIFY_PRODUCT,OUTSOURCING_INFO,PASSED_PRODUCT,PRODUCER_INFO,PRODUCER_EXAM,PRODUCT_MONEY_NOTICE,REQUISITION_DETAIL,REQUISITION_MASTER,RESUBMITPRODUCT,SEND_PRODUCT_NOTICE,TEST_RESULT,USER_TABLE,ATTACH
imp system/iminda@ranqiju fromuser=sjj touser=hkgdba file=ranqiju.dmp tables = tb_action,tb_appendix,tb_applicationkp,tb_exchanges,tb_inscript,tb_kpdic,tb_maintext,tb_steplog,tb_steptable
 
host imp hkgdba/fDqz3poAIm@oral fromuser=sjj touser=hkgdba file=d:\0ciq\ranqiju-new.dmp log=ranqijulog.txt tables=AGREEMENT_TABLE,CERTEXES,CHECK_OK,CHECK_PLAN,EQUIPMENT_INFO,EXPORT_INFO,FLOWCOM_TABLE,FLOW_PRODUCT,PRO_APPLICATION,MESSAGE,MODIFY_COM,MODIFY_PRODUCT,OUTSOURCING_INFO,PASSED_PRODUCT,PRODUCER_INFO,PRODUCER_EXAM,PRODUCT_MONEY_NOTICE,REQUISITION_DETAIL,REQUISITION_MASTER,RESUBMITPRODUCT,SEND_PRODUCT_NOTICE,TEST_RESULT,USER_TABLE,ATTACH 
host imp hkgdba/fDqz3poAIm@oral fromuser=sjj touser=hkgdba file=d:\0ciq\ranqiju-old.dmp log=ranqijulog.txt tables=tb_action,tb_appendix,tb_applicationkp,tb_exchanges,tb_inscript,tb_kpdic,tb_maintext,tb_steplog,tb_steptable

 * http://10.12.8.137:8080/hgcert/a/hkg/passedProduct/transfercert
 * http://10.12.8.137:8080/hgcert/a/hkg/tbExchange/updatemsgtype
 * update hkg_flow_message set f_read = 1;

