DROP INDEX ASU.TNAZID_BY_EPIKRIZID
/

--
-- TNAZID_BY_EPIKRIZID  (Index) 
--
CREATE INDEX ASU.TNAZID_BY_EPIKRIZID ON ASU.TNAZID
(FK_EPIKRIZID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


