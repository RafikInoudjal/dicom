DROP INDEX ASU.PEPL_TPROFACTOR_PEOPLES
/

--
-- PEPL_TPROFACTOR_PEOPLES  (Index) 
--
CREATE INDEX ASU.PEPL_TPROFACTOR_PEOPLES ON ASU.TPROFFACTOR_PEOPLES
(FK_PACID)
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


