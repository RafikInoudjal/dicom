DROP INDEX ASU.IX_TMATRIX_TMPLS$FK_PRESCRIPT
/

--
-- IX_TMATRIX_TMPLS$FK_PRESCRIPT  (Index) 
--
CREATE UNIQUE INDEX ASU.IX_TMATRIX_TMPLS$FK_PRESCRIPT ON ASU.TMATRIX_TEMPLATES
(FK_PRESCRIPTION_ID)
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


