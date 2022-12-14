DROP INDEX ASU.TVARCH_PAC_VID
/

--
-- TVARCH_PAC_VID  (Index) 
--
CREATE INDEX ASU.TVARCH_PAC_VID ON ASU.TVRACH
(FK_PACID, FL_VID)
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


