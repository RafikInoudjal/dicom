DROP TABLE ASU.TPAC_GROUP_SET CASCADE CONSTRAINTS
/

--
-- TPAC_GROUP_SET  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE ASU.TPAC_GROUP_SET
(
  FK_ID        NUMBER(15),
  FK_PEOPLEID  NUMBER(15),
  FL_INS       NUMBER(1),
  FK_OWNER     NUMBER(10)
)
ON COMMIT PRESERVE ROWS
NOCACHE
/

COMMENT ON COLUMN ASU.TPAC_GROUP_SET.FK_ID IS 'SEQUENCE=[SEQ_TPAC_GROUP_SET]'
/


--
-- TPACC_GROUP_SET_ID  (Index) 
--
--  Dependencies: 
--   TPAC_GROUP_SET (Table)
--
CREATE UNIQUE INDEX ASU.TPACC_GROUP_SET_ID ON ASU.TPAC_GROUP_SET
(FK_ID)
/


--
-- TPAC_GROUP_SET_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TPAC_GROUP_SET (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPAC_GROUP_SET_BEFORE_INSERT" 
BEFORE INSERT 
ON tpac_group_set
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
begin
  select SEQ_TPAC_GROUP_SET.NEXTVAL into :NEW.fk_id from dual;
end;
/
SHOW ERRORS;


