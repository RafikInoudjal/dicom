DROP INDEX ASU.TIB_VRACHID_SMEDITID
/

--
-- TIB_VRACHID_SMEDITID  (Index) 
--
CREATE INDEX ASU.TIB_VRACHID_SMEDITID ON ASU.TIB
(FK_VRACHID, FK_SMEDITID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          38528K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


