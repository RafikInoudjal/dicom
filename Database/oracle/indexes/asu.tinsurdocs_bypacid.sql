DROP INDEX ASU.TINSURDOCS_BYPACID
/

--
-- TINSURDOCS_BYPACID  (Index) 
--
CREATE INDEX ASU.TINSURDOCS_BYPACID ON ASU.TINSURDOCS
(FK_PEPLID, FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          7552K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


