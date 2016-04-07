DROP INDEX ASU.TDISP_MK_PK_ID
/

--
-- TDISP_MK_PK_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TDISP_MK_PK_ID ON ASU.TDISP_MK
(FK_ID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


