DROP INDEX ASU.IX_TCATEGORY$FK_STANDART
/

--
-- IX_TCATEGORY$FK_STANDART  (Index) 
--
CREATE INDEX ASU.IX_TCATEGORY$FK_STANDART ON ASU.TCATEGORY
(FK_STANDART)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


