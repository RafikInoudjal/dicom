DROP INDEX ASU.TCLOBS_FC_COMMENT
/

--
-- TCLOBS_FC_COMMENT  (Index) 
--
CREATE INDEX ASU.TCLOBS_FC_COMMENT ON ASU.TCLOBS
(FC_COMMENT)
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


