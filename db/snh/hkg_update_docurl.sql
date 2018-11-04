declare 
  sOld varchar2(100);
  sNew VARCHAR2(100);
begin
  sOld :='/Fire/Biz/Notice/UploadAffix';
  sNew :='/hgcert/uf/biz';
  
  update hkg_agreement set docurl =  replace(docurl,sOld,sNew) where docurl like sOld || '%';
  update hkg_check_result set docurl =  replace(docurl,sOld,sNew) where docurl like sOld || '%';
  update hkg_check_self set docurl =  replace(docurl,sOld,sNew) where docurl like sOld || '%';

  sOld :='/Fire/Com/Notice/UploadAffix';
  sNew :='/hgcert/uf/com';
  
  update hkg_fee_test set fileadd =  replace(fileadd,sOld,sNew) where fileadd like sOld || '%';
  update hkg_product_app set affix =  replace(affix,sOld,sNew) where affix like sOld || '%';
  
  sOld :='/fire/reportfile';
  sNew :='/hgcert/uf/lab/report';
  
  update hkg_test_result set docurl =  replace(docurl,sOld,sNew) where docurl like sOld || '%';

  sOld :='../UpLoadImage';
  sNew :='/hgcert/uf/com/product';
  
  update hkg_product_app set photo1 =  replace(photo1,sOld,sNew) where photo1 like sOld || '%';
  update hkg_product_app set photo2 =  replace(photo2,sOld,sNew) where photo2 like sOld || '%';
  update hkg_product_app set photo3 =  replace(photo3,sOld,sNew) where photo3 like sOld || '%';
  update hkg_product_app set photo4 =  replace(photo4,sOld,sNew) where photo4 like sOld || '%';
  update hkg_product_app set photo5 =  replace(photo5,sOld,sNew) where photo5 like sOld || '%';

  sOld :='/TBHK/UpLoadAppendix';
  sNew :='/hgcert/uf/tbhk';
  
  update tb_appendix set appendpath =  replace(appendpath,sOld,sNew) where appendpath like sOld || '%';

  sOld :='/Fire/Biz/CertPDF/TempPDF';
  sNew :='/hgcert/uf/biz/pdfcert';
  
  update hkg_product_passed set certfilepath =  replace(certfilepath,sOld,sNew) where certfilepath like sOld || '%';
  
  commit;
end;

