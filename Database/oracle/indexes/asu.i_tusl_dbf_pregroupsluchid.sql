DROP INDEX ASU.I_TUSL_DBF_PREGROUPSLUCHID
/

--
-- I_TUSL_DBF_PREGROUPSLUCHID  (Index) 
--
CREATE INDEX ASU.I_TUSL_DBF_PREGROUPSLUCHID ON ASU.TUSL_DBF
(FK_PREGROUPSLUCHID)
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


