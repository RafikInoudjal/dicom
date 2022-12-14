DROP INDEX ASU.TRESAN_BY_ID_PACID_INS
/

--
-- TRESAN_BY_ID_PACID_INS  (Index) 
--
CREATE UNIQUE INDEX ASU.TRESAN_BY_ID_PACID_INS ON ASU.TRESAN
(FK_ID, FD_INS, FK_PACID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          17920K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


