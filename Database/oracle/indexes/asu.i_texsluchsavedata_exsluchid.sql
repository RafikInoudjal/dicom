DROP INDEX ASU.I_TEXSLUCHSAVEDATA_EXSLUCHID
/

--
-- I_TEXSLUCHSAVEDATA_EXSLUCHID  (Index) 
--
CREATE INDEX ASU.I_TEXSLUCHSAVEDATA_EXSLUCHID ON ASU.TEXSLUCHSAVEDATA
(FK_EXSLUCHID)
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


