DROP INDEX ASU.PK_GARANTLETTERS_PEOPLES
/

--
-- PK_GARANTLETTERS_PEOPLES  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_GARANTLETTERS_PEOPLES ON ASU.TGARANTLETTERS_PEOPLES
(FK_ID)
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


