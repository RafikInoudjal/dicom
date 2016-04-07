DROP INDEX ASU.IDX$$_00910003
/

--
-- IDX$$_00910003  (Index) 
--
--  Dependencies: 
--   GET_FULLMKB10 (Function)
--
CREATE INDEX ASU.IDX$$_00910003 ON ASU.TICD10
(UPPER(SUBSTR("ASU"."GET_FULLMKB10"("FC_KOD"),1,20)), FK_PARENT, FK_ID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


