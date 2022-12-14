DROP INDEX ASU.TSMIN$UPPER_FCSEC
/

--
-- TSMIN$UPPER_FCSEC  (Index) 
--
CREATE INDEX ASU.TSMIN$UPPER_FCSEC ON ASU.TSMINI
(UPPER("FC_SECTION"))
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


