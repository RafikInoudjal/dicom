DROP TRIGGER ASU.TADRESS_BEFORE_UPDATE
/

--
-- TADRESS_BEFORE_UPDATE  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   V$SESSION (Synonym)
--   DUAL (Synonym)
--   TADRESS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TADRESS_BEFORE_UPDATE" 
BEFORE UPDATE
ON ASU.TADRESS REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
DECLARE
 nAppSotr NUMBER;
BEGIN
-- Added 20081003 by Linnikov
 SELECT TO_NUMBER(NVL(CLIENT_INFO, '0'))
   INTO nAppSotr
   FROM v$session
  WHERE AUDSID = USERENV('SESSIONID');

 SELECT SYSDATE, nAppSotr
   INTO :NEW.FD_DATE, :NEW.FK_APPSOTRID
   FROM DUAL;
END;
/
SHOW ERRORS;


