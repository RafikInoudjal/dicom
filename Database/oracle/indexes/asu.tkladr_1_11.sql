DROP INDEX ASU.TKLADR_1_11
/

--
-- TKLADR_1_11  (Index) 
--
CREATE INDEX ASU.TKLADR_1_11 ON ASU.TKLADR
(SUBSTR("FC_CODE",1,11))
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          25M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


