DROP INDEX ASU.I_TDIALIZ_SOTR_DIALIZKARTAID
/

--
-- I_TDIALIZ_SOTR_DIALIZKARTAID  (Index) 
--
CREATE INDEX ASU.I_TDIALIZ_SOTR_DIALIZKARTAID ON ASU.TDIALIZ_SOTR
(FK_DIALIZKARTAID)
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


