DROP INDEX ASU.TNAZAN_SMID_INS
/

--
-- TNAZAN_SMID_INS  (Index) 
--
CREATE INDEX ASU.TNAZAN_SMID_INS ON ASU.TNAZAN
(FK_SMID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          4352K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


