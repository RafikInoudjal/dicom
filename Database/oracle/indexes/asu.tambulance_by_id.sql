DROP INDEX ASU.TAMBULANCE_BY_ID
/

--
-- TAMBULANCE_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TAMBULANCE_BY_ID ON ASU.TAMBULANCE
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

