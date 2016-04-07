DROP INDEX ASU.TRESMEDCONT$ID
/

--
-- TRESMEDCONT$ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TRESMEDCONT$ID ON ASU.TRESMEDCONT
(FK_ID)
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


