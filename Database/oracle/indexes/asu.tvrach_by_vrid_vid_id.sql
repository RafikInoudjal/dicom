DROP INDEX ASU.TVRACH_BY_VRID_VID_ID
/

--
-- TVRACH_BY_VRID_VID_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TVRACH_BY_VRID_VID_ID ON ASU.TVRACH
(FK_VRACHID, FL_VID, FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          768K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


