DROP INDEX ASU.IDX_TGUARDIAN_FK_PACID
/

--
-- IDX_TGUARDIAN_FK_PACID  (Index) 
--
CREATE INDEX ASU.IDX_TGUARDIAN_FK_PACID ON ASU.TGUARDIAN
(FK_PACID)
LOGGING
TABLESPACE SYSTEM
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


