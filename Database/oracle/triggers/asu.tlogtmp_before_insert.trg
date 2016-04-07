DROP TRIGGER ASU.TLOGTMP_BEFORE_INSERT
/

--
-- TLOGTMP_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TLOG (Sequence)
--   TLOGTMP (Table)
--
CREATE OR REPLACE TRIGGER ASU."TLOGTMP_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON ASU.TLOGTMP  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
begin
    SELECT SEQ_TLOG.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
end;
/
SHOW ERRORS;


