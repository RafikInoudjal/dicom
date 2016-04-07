DROP INDEX ASU.TRESLECH_ID
/

--
-- TRESLECH_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TRESLECH_ID ON ASU.TRESLECH
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          512K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


