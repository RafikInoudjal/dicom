DROP TRIGGER ASU.TMEDKURLIST_INS
/

--
-- TMEDKURLIST_INS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TKURLIST (Sequence)
--   TKURLIST (Table)
--
CREATE OR REPLACE TRIGGER ASU."TMEDKURLIST_INS" 
 BEFORE 
 INSERT
 ON ASU.TKURLIST  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
Begin 
  select SEQ_TKURLIST.nextval into :new.KURLISTID from dual;
End;
/
SHOW ERRORS;


