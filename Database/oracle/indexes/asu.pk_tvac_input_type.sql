DROP INDEX ASU.PK_TVAC_INPUT_TYPE
/

--
-- PK_TVAC_INPUT_TYPE  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TVAC_INPUT_TYPE ON ASU.TVAC_INPUT_TYPE
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


