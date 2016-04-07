DROP INDEX ASU.IX_TPROFFACTOR
/

--
-- IX_TPROFFACTOR  (Index) 
--
CREATE INDEX ASU.IX_TPROFFACTOR ON ASU.TPROFFACTOR
(CODE)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          256K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


