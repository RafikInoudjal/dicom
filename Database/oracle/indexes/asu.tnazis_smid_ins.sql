DROP INDEX ASU.TNAZIS_SMID_INS
/

--
-- TNAZIS_SMID_INS  (Index) 
--
CREATE INDEX ASU.TNAZIS_SMID_INS ON ASU.TNAZIS
(FK_SMID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1280K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


