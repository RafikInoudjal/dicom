DROP INDEX ASU.I_TDIALIZ_SOTR_DIALIZ_NAZ_ID
/

--
-- I_TDIALIZ_SOTR_DIALIZ_NAZ_ID  (Index) 
--
CREATE INDEX ASU.I_TDIALIZ_SOTR_DIALIZ_NAZ_ID ON ASU.TDIALIZ_SOTR
(FK_DIALIZ_NAZ_ID)
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


