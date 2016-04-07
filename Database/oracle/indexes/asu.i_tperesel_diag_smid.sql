DROP INDEX ASU.I_TPERESEL_DIAG_SMID
/

--
-- I_TPERESEL_DIAG_SMID  (Index) 
--
CREATE INDEX ASU.I_TPERESEL_DIAG_SMID ON ASU.TPERESEL_DIAG
(FK_SMID)
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


