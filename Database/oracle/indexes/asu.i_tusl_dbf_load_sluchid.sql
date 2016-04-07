DROP INDEX ASU.I_TUSL_DBF_LOAD_SLUCHID
/

--
-- I_TUSL_DBF_LOAD_SLUCHID  (Index) 
--
CREATE INDEX ASU.I_TUSL_DBF_LOAD_SLUCHID ON ASU.TUSL_DBF_LOAD
(FK_SLUCHID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


