DROP INDEX ASU.I_TEXCHANGE_ELSELOG_GROUP
/

--
-- I_TEXCHANGE_ELSELOG_GROUP  (Index) 
--
CREATE INDEX ASU.I_TEXCHANGE_ELSELOG_GROUP ON ASU.TEXCHANGE_ELSELOG
(FK_PREGROUPOWNER)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


