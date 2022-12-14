DROP TRIGGER ASU.TTYPETIMENAZ_INSERT
/

--
-- TTYPETIMENAZ_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TTYPETIMENAZ (Sequence)
--   TTYPETIMENAZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TTYPETIMENAZ_INSERT" 
  BEFORE INSERT
  ON ASU.TTYPETIMENAZ   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  select SEQ_TTYPETIMENAZ.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


