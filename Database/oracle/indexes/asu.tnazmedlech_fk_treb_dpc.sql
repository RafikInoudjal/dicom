DROP INDEX ASU.TNAZMEDLECH_FK_TREB_DPC
/

--
-- TNAZMEDLECH_FK_TREB_DPC  (Index) 
--
CREATE UNIQUE INDEX ASU.TNAZMEDLECH_FK_TREB_DPC ON ASU.TNAZMEDLECH
(FK_TREB_DPC)
NOLOGGING
TABLESPACE INDX
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


