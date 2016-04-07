DROP INDEX ASU.TPACCPNVOY_BY_ID_PACID
/

--
-- TPACCPNVOY_BY_ID_PACID  (Index) 
--
CREATE UNIQUE INDEX ASU.TPACCPNVOY_BY_ID_PACID ON ASU.TPACCONVOY
(FK_ID, FK_PACID)
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


