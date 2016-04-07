DROP INDEX ASU.TSMINI$UPPER_SEC_KEY
/

--
-- TSMINI$UPPER_SEC_KEY  (Index) 
--
CREATE INDEX ASU.TSMINI$UPPER_SEC_KEY ON ASU.TSMINI
(UPPER("FC_SECTION"), UPPER("FC_KEY"))
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


