DROP INDEX ASU.I_TUSL_DBF_POLY
/

--
-- I_TUSL_DBF_POLY  (Index) 
--
CREATE INDEX ASU.I_TUSL_DBF_POLY ON ASU.TUSL_DBF
(Z$FL_POLY)
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


