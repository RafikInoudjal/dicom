DROP TRIGGER ASU.TPACMONITOR_INDEXES_BEFORE_INS
/

--
-- TPACMONITOR_INDEXES_BEFORE_INS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TKARTA (Sequence)
--   TPACMONITOR_INDEXES (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPACMONITOR_INDEXES_BEFORE_INS" 
 BEFORE
  INSERT
 ON tpacmonitor_indexes
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
  select seq_tkarta.NEXTVAL into :new.fk_id from dual;
end;
/
SHOW ERRORS;


