DROP TRIGGER ASU.TNAZWIZZARD_NAZ_BEFORE_INS
/

--
-- TNAZWIZZARD_NAZ_BEFORE_INS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TKARTA (Sequence)
--   TNAZWIZZARD_NAZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TNAZWIZZARD_NAZ_BEFORE_INS" 
 BEFORE
  INSERT
 ON tnazwizzard_naz
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
  SELECT seq_tkarta.nextval INTO :new.fk_id FROM dual;
end;
/
SHOW ERRORS;


