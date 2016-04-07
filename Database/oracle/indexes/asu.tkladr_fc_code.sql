DROP INDEX ASU.TKLADR_FC_CODE
/

--
-- TKLADR_FC_CODE  (Index) 
--
CREATE UNIQUE INDEX ASU.TKLADR_FC_CODE ON ASU.TKLADR
(FC_CODE)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          29M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


