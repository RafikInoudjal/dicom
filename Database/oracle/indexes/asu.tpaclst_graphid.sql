DROP INDEX ASU.TPACLST_GRAPHID
/

--
-- TPACLST_GRAPHID  (Index) 
--
CREATE INDEX ASU.TPACLST_GRAPHID ON ASU.TPACLST
(FK_GRAPHID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1792K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


