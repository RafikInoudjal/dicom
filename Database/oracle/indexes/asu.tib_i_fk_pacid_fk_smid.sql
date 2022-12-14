DROP INDEX ASU.TIB_I_FK_PACID_FK_SMID
/

--
-- TIB_I_FK_PACID_FK_SMID  (Index) 
--
CREATE INDEX ASU.TIB_I_FK_PACID_FK_SMID ON ASU.TIB
(FK_PACID, FK_SMID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          45824K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


