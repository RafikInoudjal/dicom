DROP TRIGGER ASU.TKLADR_BEFORE_INSERT
/

--
-- TKLADR_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TKLADR (Sequence)
--   TKLADR (Table)
--
CREATE OR REPLACE TRIGGER ASU."TKLADR_BEFORE_INSERT" 
 BEFORE INSERT ON ASU.TKLADR  REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
if   :NEW.FK_ID is null then 
 SELECT SEQ_TKLADR.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
 end if;
END;
/
SHOW ERRORS;


