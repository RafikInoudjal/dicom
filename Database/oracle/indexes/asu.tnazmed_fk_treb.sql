DROP INDEX ASU.TNAZMED_FK_TREB
/

--
-- TNAZMED_FK_TREB  (Index) 
--
CREATE INDEX ASU.TNAZMED_FK_TREB ON ASU.TNAZMED
(FK_TREB)
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


