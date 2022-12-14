DROP INDEX ASU.TPASS_SPECID
/

--
-- TPASS_SPECID  (Index) 
--
CREATE INDEX ASU.TPASS_SPECID ON ASU.TPASS
(FK_SPECID)
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


