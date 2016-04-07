DROP INDEX ASU.TIBXMLTEXT_RAZ_PAC
/

--
-- TIBXMLTEXT_RAZ_PAC  (Index) 
--
CREATE INDEX ASU.TIBXMLTEXT_RAZ_PAC ON ASU.TIBXMLTEXT
(FK_RAZID, FK_PACID)
NOLOGGING
TABLESPACE INDX
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


