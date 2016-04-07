DROP INDEX ASU.I_TMDA_DBF_LOAD_ID_ILL
/

--
-- I_TMDA_DBF_LOAD_ID_ILL  (Index) 
--
CREATE INDEX ASU.I_TMDA_DBF_LOAD_ID_ILL ON ASU.TMDA_DBF_LOAD
(ID_ILL, P_ID_ILL)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


