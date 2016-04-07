DROP INDEX ASU.TSMIDSOOTVOKBSHABL$FK_SMIDMAIN
/

--
-- TSMIDSOOTVOKBSHABL$FK_SMIDMAIN  (Index) 
--
CREATE INDEX ASU.TSMIDSOOTVOKBSHABL$FK_SMIDMAIN ON ASU.TSMID_SOOTV_OKB_SHABL
(FK_SMIDMAIN)
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

