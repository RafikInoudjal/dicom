DROP INDEX ASU.TDOPOLN_SMDIAGID
/

--
-- TDOPOLN_SMDIAGID  (Index) 
--
CREATE INDEX ASU.TDOPOLN_SMDIAGID ON ASU.TDOPOLN
(FK_SMDIAGID)
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


