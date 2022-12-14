DROP INDEX ASU.PK_TIS_DISP_LPUDATA
/

--
-- PK_TIS_DISP_LPUDATA  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TIS_DISP_LPUDATA ON ASU.TIS_DISP_LPUDATA
(FK_ID)
NOLOGGING
TABLESPACE USR
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


