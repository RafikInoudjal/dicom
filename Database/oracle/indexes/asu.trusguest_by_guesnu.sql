DROP INDEX ASU.TRUSGUEST_BY_GUESNU
/

--
-- TRUSGUEST_BY_GUESNU  (Index) 
--
CREATE UNIQUE INDEX ASU.TRUSGUEST_BY_GUESNU ON ASU.TRUSGUEST
(FC_GUESNU)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          12672K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

