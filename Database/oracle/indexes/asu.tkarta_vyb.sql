DROP INDEX ASU.TKARTA_VYB
/

--
-- TKARTA_VYB  (Index) 
--
CREATE INDEX ASU.TKARTA_VYB ON ASU.TKARTA
(FL_VYB)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          512K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


