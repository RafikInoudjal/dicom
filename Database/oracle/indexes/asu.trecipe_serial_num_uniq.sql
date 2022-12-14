DROP INDEX ASU.TRECIPE_SERIAL_NUM_UNIQ
/

--
-- TRECIPE_SERIAL_NUM_UNIQ  (Index) 
--
CREATE UNIQUE INDEX ASU.TRECIPE_SERIAL_NUM_UNIQ ON ASU.TRECIPE
(FN_NUM, FC_SERIAL)
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


