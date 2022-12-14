DROP INDEX ASU.I_DBFEXCH_TYPE_V_MU_ID
/

--
-- I_DBFEXCH_TYPE_V_MU_ID  (Index) 
--
CREATE INDEX ASU.I_DBFEXCH_TYPE_V_MU_ID ON ASU.TDBFEXCH_TYPE_V_MU
(FK_ID)
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


