DROP TRIGGER ASU.TRICHVIEWDATA_BEFOR_INSERT
/

--
-- TRICHVIEWDATA_BEFOR_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TRICHVIEWDATA (Sequence)
--   TRICHVIEWDATA (Table)
--
CREATE OR REPLACE TRIGGER ASU."TRICHVIEWDATA_BEFOR_INSERT" 
 BEFORE 
 INSERT
 ON ASU.TRICHVIEWDATA  FOR EACH ROW
BEGIN
    if :new.FK_ID is null then
      select SEQ_TRICHVIEWDATA.NEXTVAL INTO :new.FK_ID from dual;
    end if;
END;
/
SHOW ERRORS;


