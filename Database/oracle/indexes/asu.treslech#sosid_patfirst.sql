DROP INDEX ASU.TRESLECH#SOSID_PATFIRST
/

--
-- TRESLECH#SOSID_PATFIRST  (Index) 
--
CREATE INDEX ASU.TRESLECH#SOSID_PATFIRST ON ASU.TRESLECH
(FK_SOS, FL_PATFIRST, FD_INS)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          13568K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


