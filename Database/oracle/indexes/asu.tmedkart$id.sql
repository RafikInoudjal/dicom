DROP INDEX ASU.TMEDKART$ID
/

--
-- TMEDKART$ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TMEDKART$ID ON ASU.TMEDKART
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


