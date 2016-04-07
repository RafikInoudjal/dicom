DROP INDEX ASU.TRESMED$ID
/

--
-- TRESMED$ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TRESMED$ID ON ASU.TRESMED
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          640K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

