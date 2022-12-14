DROP INDEX ASU.TIB_BY_POCHTI_ALL
/

--
-- TIB_BY_POCHTI_ALL  (Index) 
--
CREATE INDEX ASU.TIB_BY_POCHTI_ALL ON ASU.TIB
(FK_PACID, FK_SMEDITID, FK_SMID, FN_NUM)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          59136K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


