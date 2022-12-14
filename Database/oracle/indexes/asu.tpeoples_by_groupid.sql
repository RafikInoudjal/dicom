DROP INDEX ASU.TPEOPLES_BY_GROUPID
/

--
-- TPEOPLES_BY_GROUPID  (Index) 
--
CREATE INDEX ASU.TPEOPLES_BY_GROUPID ON ASU.TPEOPLES
(FK_GROUPID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          6M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


