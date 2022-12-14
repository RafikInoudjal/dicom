DROP TABLE ASU.TDOC_SET CASCADE CONSTRAINTS
/

--
-- TDOC_SET  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE ASU.TDOC_SET
(
  FK_ID     NUMBER(15),
  FL_INS    NUMBER(1),
  FK_DOCID  NUMBER(15),
  FK_OWNER  NUMBER(10)
)
ON COMMIT PRESERVE ROWS
NOCACHE
/

COMMENT ON COLUMN ASU.TDOC_SET.FK_ID IS 'SEQUENCE=[SEQ_TDOC_SET]'
/


--
-- TDOC_SET_ID  (Index) 
--
--  Dependencies: 
--   TDOC_SET (Table)
--
CREATE UNIQUE INDEX ASU.TDOC_SET_ID ON ASU.TDOC_SET
(FK_ID)
/


--
-- TDOC_SET  (Trigger) 
--
--  Dependencies: 
--   TDOC_SET (Table)
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TDOC_SET (Sequence)
--
CREATE OR REPLACE TRIGGER ASU."TDOC_SET" 
BEFORE INSERT 
ON tdoc_set
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
begin
  select SEQ_tdoc_set.NEXTVAL into :NEW.fk_id from dual;
end;
/
SHOW ERRORS;


