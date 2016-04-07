DROP TRIGGER ASU.TLABREG_BEFORE_INSERT
/

--
-- TLABREG_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TLABREG (Sequence)
--   TNAZGROUP (Table)
--   TLABREG (Table)
--
CREATE OR REPLACE TRIGGER ASU."TLABREG_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON ASU.TLABREG  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  SELECT SEQ_TLABREG.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  UPDATE TNAZGROUP SET FD_REGIST = :NEW.FD_REGIST, FK_LABREG = :NEW.FK_ID, FN_PROBE = :NEW.FN_PROBE WHERE FK_NAZID = :NEW.FK_NAZID;
END;
/
SHOW ERRORS;

