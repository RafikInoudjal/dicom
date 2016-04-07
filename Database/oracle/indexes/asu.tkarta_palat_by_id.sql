DROP INDEX ASU.TKARTA_PALAT_BY_ID
/

--
-- TKARTA_PALAT_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TKARTA_PALAT_BY_ID ON ASU.TKARTA_PALAT
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


