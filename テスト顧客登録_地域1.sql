variable param1 VARCHAR2(15)
variable param2 VARCHAR2(128)
variable param3 VARCHAR2(30)
variable param4 VARCHAR2(30)
variable param5 VARCHAR2(20)
variable param6 VARCHAR2(20)
DECLARE  
KM_ÚqID DT_ÚqC.ÚqID % TYPE; 
KM_Ô DT_ÚqC.Ô % TYPE := 1;
KM_CZÊÔ DT_ÚqC.CZÊÔ % TYPE := 1;
KM_it DT_ÚqC.it % TYPE:= '';
KM_Ðîút DT_ÚqC.Ðîút % TYPE := TO_DATE('1900/01/01', 'YYYY/MM/DD');   
KM_ÐîÒÚqID DT_ÚqC.ÐîÒÚqID % TYPE := 0;
KM_ÐîÒ¼ DT_ÚqC.ÐîÒ¼ % TYPE := '';
KM_óÔ DT_ÚqC.óÔ % TYPE := 0;
KM_Úq DT_ÚqC.Úq % TYPE := '';
KM_­íÊ DT_ÚqC.­íÊ % TYPE := 0;
KM_Úqóµæª DT_ÚqC.Úqóµæª % TYPE := 1;
KM_wü®@R[h DT_ÚqC.wü®@R[h % TYPE  := 1;
KM_éæR[h DT_ÚqC.éæR[h % TYPE := 'Z00000000001';
KM_LR[h DT_ÚqC.LR[h % TYPE := '99999';
KM_cl­sæª DT_ÚqC.cl­sæª % TYPE := 1;
KM_[U[ID DT_ÚqC.[U[ID % TYPE := 9900; 
KM_XVú DT_ÚqC.XVú % TYPE := SYSDATE;
KM_cltæ DT_ÚqC.cltæ % TYPE := 1;
KM_ECÚqÔ DT_ÚqC.ECÚqÔ % TYPE := NULL; 
KM_ECïõtO DT_ÚqC.ECïõtO % TYPE := NULL; 
KM_ECïõÞïtO DT_ÚqC.ECïõÞïtO % TYPE := NULL; 
KM_Ì£¨tL³ DT_ÚqC.Ì£¨tL³ % TYPE := 1;
KM_Ì£dbL³ DT_ÚqC.Ì£dbL³ % TYPE := 1;

KJ_ÚqZÊÔ DT_ÚqZ.ÚqZÊÔ%TYPE := 1;
KJ_Ô DT_ÚqZ.Ô%TYPE := 1;
KJ_Zæª DT_ÚqZ.Zæª%TYPE := '©î';
KJ_dbæª DT_ÚqZ.dbæª%TYPE := '©î'; 
KJ_ZR[h DT_ÚqZ.ZR[h%TYPE := '42101032000'; 
KJ_ZR[hN DT_ÚqZ.ZR[hN%TYPE := 0; 
KJ_XÖÔ DT_ÚqZ.XÖÔ%TYPE := '8600012';
KJ_JiZ DT_ÚqZ.JiZ%TYPE := '¸ÏÓÄ¹Ý ¸ÏÓÄ¼ Á­³µ³¸ º³Ô²ÏÏÁ'; 
KJ_s¹{§ DT_ÚqZ.s¹{§%TYPE:= 'F{§'; 
KJ_s¹{§R[h DT_ÚqZ.s¹{§R[h%TYPE := 43; 
KJ_sæS¬º¼ DT_ÚqZ.sæS¬º¼%TYPE := 'F{s@æ'; 
KJ_¬¼ DT_ÚqZ.¬¼%TYPE := '®®¡¬'; 
KJ_«Ê DT_ÚqZ.«Ê%TYPE := 1; 
KJ_¶Nú DT_ÚqZ.¶Nú%TYPE := '19900817'; 
KJ_Î±æ¼ DT_ÚqZ.Î±æ¼%TYPE := ''; 
KJ_[æª DT_ÚqZ.[æª%TYPE := '©î';
KJ_[AhX DT_ÚqZ.[AhX%TYPE:= ''; 
KJ_hÌ DT_ÚqZ.hÌ%TYPE := 'l';
KJ_dbÔQ DT_ÚqZ.dbÔQ%TYPE := ''; 
KJ_dbæªQ DT_ÚqZ.dbæªQ%TYPE := 'e`w'; 
KJ_dbÔR DT_ÚqZ.dbÔR%TYPE := ''; 
KJ_dbæªR DT_ÚqZ.dbæªR%TYPE := 'g@Ñ'; 
KJ_dbÔS DT_ÚqZ.dbÔS%TYPE := ''; 
KJ_dbæªS DT_ÚqZ.dbæªS%TYPE := ''; 
KJ_dbÔT DT_ÚqZ.dbÔT%TYPE := ''; 
KJ_dbæªT DT_ÚqZ.dbæªT%TYPE := ''; 
KJ_dbÔU DT_ÚqZ.dbÔU%TYPE := ''; 
KJ_dbæªU DT_ÚqZ.dbæªU%TYPE := ''; 
KJ_óÔ DT_ÚqZ.óÔ%TYPE := 0; 
KJ_ECZíÊ DT_ÚqZ.ECZíÊ%TYPE := NULL; 
KJ_ECÚqZÔ DT_ÚqZ.ECÚqZÔ%TYPE := NULL; 

TM_ÎbîñNO DT_ÎbC.ÎbîñNO%TYPE := 1;
TM_ótú DT_ÎbC.ótú%TYPE := SYSDATE;  
TM_ótR[h DT_ÎbC.ótR[h%TYPE := 17000;
TM_ótÒR[h DT_ÎbC.ótÒR[h%TYPE := 9900;
TM_ótû® DT_ÎbC.ótû®%TYPE := 1;
TM_ÎbÒ DT_ÎbC.ÎbÒ%TYPE := 1;
TM_ecÔ DT_ÎbC.ecÔ%TYPE := '99';
TM_àe DT_ÎbC.àe%TYPE := 'Úqo^ÌÝ';
TM_åªÞR[h DT_ÎbC.åªÞR[h%TYPE := '34';
TM_ªÞR[h DT_ÎbC.ªÞR[h%TYPE := '21';
TM_¬ªÞR[h DT_ÎbC.¬ªÞR[h%TYPE := '001';
TM_æÛ¶pX DT_ÎbC.æÛ¶pX%TYPE := '';
TM_æR[h DT_ÎbC.æR[h%TYPE := '';
TM_üÍú DT_ÎbC.üÍú%TYPE := SYSDATE;
TM_üÍR[h DT_ÎbC.üÍR[h%TYPE := 17000;
TM_üÍÒR[h DT_ÎbC.üÍÒR[h%TYPE := 9900;
TM_®¹ÎbtO DT_ÎbC.®¹ÎbtO%TYPE := 1;
TM_®¹Îbú DT_ÎbC.®¹Îbú%TYPE := SYSDATE; 
TM_®¹ÎbAÔ DT_ÎbC.®¹ÎbAÔ%TYPE := 0;
TM_´ö­¶R[h DT_ÎbC.´ö­¶R[h%TYPE := ''; 
TM_´öªÞR[h DT_ÎbC.´öªÞR[h%TYPE := ''; 
TM_´ö¬ªÞR[h DT_ÎbC.´ö¬ªÞR[h%TYPE := ''; 
TM_´öo^ú DT_ÎbC.´öo^ú%TYPE := ''; 
TM_ì¬æª DT_ÎbC.ì¬æª%TYPE := 0;
TM_ítO DT_ÎbC.ítO%TYPE := 0;
TM_eÎbîñNO DT_ÎbC.eÎbîñNO%TYPE := 0;
TM_R[obN DT_ÎbC.R[obN%TYPE := 0;

TM2_ÎbîñNO DT_ÎbC.ÎbîñNO%TYPE := 2;
TM2_àe DT_ÎbC.àe%TYPE := 'eXg';
TM2_åªÞR[h DT_ÎbC.åªÞR[h%TYPE := '90';
TM2_ªÞR[h DT_ÎbC.ªÞR[h%TYPE := '0';
TM2_¬ªÞR[h DT_ÎbC.¬ªÞR[h%TYPE := '0';
TM2_ì¬æª DT_ÎbC.ì¬æª%TYPE := 65;

TK_JeSNO DT_ÎbJeS.JeSNO%TYPE := 99;
TK_TuR[h DT_ÎbJeS.TuR[h%TYPE := 99;
         
begin 

    SAVEPOINT sp1;
    
        :param1 := '&1';
        :param2 := '&2';
        :param3 := '&3';
        :param4 := '&4';
        :param5 := '&5';
        :param6 := '&6';
    
        SELECT SQ_ÚqID­Ô.NEXTVAL INTO KM_ÚqID FROM DUAL;
        
        INSERT INTO DT_ÚqC (
        			 ÚqID
        			,Ô
        			,CZÊÔ
        			,it
        			,Ðîút
        			,ÐîÒÚqID
        			,ÐîÒ¼
        			,óÔ
        			,Úq
        			,­íÊ
        			,Úqóµæª
        			,wü®@R[h
        			,éæR[h
        			,LR[h
        			,cl­sæª
        			,[U[ID
        			,XVú
        			,cltæ
        			,ECÚqÔ
        			,ECïõtO
        			,ECïõÞïtO
        			,Ì£¨tL³
        			,Ì£dbL³
        		) VALUES (
        			 KM_ÚqID
        			,KM_Ô
        			,KM_CZÊÔ
        			,KM_it
        			,KM_Ðîút
        			,KM_ÐîÒÚqID
        			,KM_ÐîÒ¼
        			,KM_óÔ
        			,KM_Úq
        			,KM_­íÊ
        			,KM_Úqóµæª
        			,KM_wü®@R[h
        			,KM_éæR[h
        			,KM_LR[h
        			,KM_cl­sæª
        			,KM_[U[ID
        			,KM_XVú
        			,KM_cltæ
        			,KM_ECÚqÔ
        			,KM_ECïõtO
        			,KM_ECïõÞïtO
        			,KM_Ì£¨tL³
        			,KM_Ì£dbL³
        		);
        INSERT INTO DT_ÚqZ (
        			 ÚqID
        			,ÚqZÊÔ
        			,Ô
        			,Zæª
        			,dbÔ
        			,dbæª
        			,ZR[h
        			,ZR[hN
        			,XÖÔ
        			,JiZ
        			,s¹{§
        			,s¹{§R[h
        			,sæS¬º¼
        			,¬¼
        			,ZÚ×
        			,Ji¼_©
        			,Ji¼_¼
        			,¼_©
        			,¼_¼
        			,«Ê
        			,¶Nú
        			,Î±æ¼
        			,[æª
        			,[AhX
        			,hÌ
        			,dbÔQ
        			,dbæªQ
        			,dbÔR
        			,dbæªR
        			,dbÔS
        			,dbæªS
        			,dbÔT
        			,dbæªT
        			,dbÔU
        			,dbæªU
        			,[U[ID
        			,óÔ
        			,XVú
        			,ECZíÊ
        			,ECÚqZÔ
        		) VALUES (
        			 KM_ÚqID
        			,KJ_ÚqZÊÔ
        			,KJ_Ô
        			,KJ_Zæª
        			,:param1
        			,KJ_dbæª
        			,KJ_ZR[h
        			,KJ_ZR[hN
        			,KJ_XÖÔ
        			,KJ_JiZ
        			,KJ_s¹{§
        			,KJ_s¹{§R[h
        			,KJ_sæS¬º¼
        			,KJ_¬¼
        			,:param2
        			,:param3
        			,:param4
        			,:param5
        			,:param6
        			,KJ_«Ê
        			,KJ_¶Nú
        			,KJ_Î±æ¼
        			,KJ_[æª
        			,KJ_[AhX
        			,KJ_hÌ
        			,KJ_dbÔQ
        			,KJ_dbæªQ
        			,KJ_dbÔR
        			,KJ_dbæªR
        			,KJ_dbÔS
        			,KJ_dbæªS
        			,KJ_dbÔT
        			,KJ_dbæªT
        			,KJ_dbÔU
        			,KJ_dbæªU
        			,KM_[U[ID
        			,KJ_óÔ
        			,KM_XVú
        			,KJ_ECZíÊ
        			,KJ_ECÚqZÔ
        		);    
        INSERT INTO DT_ÎbC(
        			 ÚqID
        			,ÎbîñNO
        			,ótú
        			,ótR[h
        			,ótÒR[h
        			,ótû®
        			,ÎbÒ
        			,ecÔ
        			,àe
        			,åªÞR[h
        			,ªÞR[h
        			,¬ªÞR[h
        			,æÛ¶pX
        			,æR[h
        			,üÍú
        			,üÍR[h
        			,üÍÒR[h
        			,®¹ÎbtO
        			,®¹Îbú
        			,®¹ÎbAÔ
        			,´ö­¶R[h
        			,´öªÞR[h
        			,´ö¬ªÞR[h
        			,´öo^ú
        			,ì¬æª
        			,ítO
        			,[U[ID
        			,XVú
        			,eÎbîñNO
        			,R[obN
        		) VALUES (
        			 KM_ÚqID
        			,TM_ÎbîñNO
        			,TM_ótú
        			,TM_ótR[h
        			,TM_ótÒR[h
        			,TM_ótû®
        			,TM_ÎbÒ
        			,TM_ecÔ
        			,TM_àe
        			,TM_åªÞR[h
        			,TM_ªÞR[h
        			,TM_¬ªÞR[h
        			,TM_æÛ¶pX
        			,TM_æR[h
        			,TM_üÍú
        			,TM_üÍR[h
        			,TM_üÍÒR[h
        			,TM_®¹ÎbtO
        			,TM_®¹Îbú
        			,TM_®¹ÎbAÔ
        			,TM_´ö­¶R[h
        			,TM_´öªÞR[h
        			,TM_´ö¬ªÞR[h
        			,TM_´öo^ú
        			,TM_ì¬æª
        			,TM_ítO
        			,KM_[U[ID
        			,KM_XVú
        			,TM_eÎbîñNO
        			,TM_R[obN
        		);
        INSERT INTO DT_ÎbC(
        			 ÚqID
        			,ÎbîñNO
        			,ótú
        			,ótR[h
        			,ótÒR[h
        			,ótû®
        			,ÎbÒ
        			,ecÔ
        			,àe
        			,åªÞR[h
        			,ªÞR[h
        			,¬ªÞR[h
        			,æÛ¶pX
        			,æR[h
        			,üÍú
        			,üÍR[h
        			,üÍÒR[h
        			,®¹ÎbtO
        			,®¹Îbú
        			,®¹ÎbAÔ
        			,´ö­¶R[h
        			,´öªÞR[h
        			,´ö¬ªÞR[h
        			,´öo^ú
        			,ì¬æª
        			,ítO
        			,[U[ID
        			,XVú
        			,eÎbîñNO
        			,R[obN
        		) VALUES (
        			 KM_ÚqID
        			,TM2_ÎbîñNO
        			,TM_ótú
        			,TM_ótR[h
        			,TM_ótÒR[h
        			,TM_ótû®
        			,TM_ÎbÒ
        			,TM_ecÔ
        			,TM2_àe
        			,TM2_åªÞR[h
        			,TM2_ªÞR[h
        			,TM2_¬ªÞR[h
        			,TM_æÛ¶pX
        			,TM_æR[h
        			,TM_üÍú
        			,TM_üÍR[h
        			,TM_üÍÒR[h
        			,TM_®¹ÎbtO
        			,TM_®¹Îbú
        			,TM_®¹ÎbAÔ
        			,TM_´ö­¶R[h
        			,TM_´öªÞR[h
        			,TM_´ö¬ªÞR[h
        			,TM_´öo^ú
        			,TM2_ì¬æª
        			,TM_ítO
        			,KM_[U[ID
        			,KM_XVú
        			,TM_eÎbîñNO
        			,TM_R[obN
        		);
        INSERT INTO DT_ÎbJeS(
        			 ÚqID
        			,ÎbîñNO
        			,JeSNO
        			,TuR[h
        			,[U[ID
        			,XVú
        		) VALUES (
        			 KM_ÚqID
        			,TM2_ÎbîñNO
        			,TK_JeSNO
        			,TK_TuR[h
        			,KM_[U[ID
        			,KM_XVú
        		);

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK TO sp1;
end; 
/
exit;


