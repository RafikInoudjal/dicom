DROP INDEX ASU.I_TEXCHANGE_ELSELOG_OUR_CODE
/

--
-- I_TEXCHANGE_ELSELOG_OUR_CODE  (Index) 
--
CREATE INDEX ASU.I_TEXCHANGE_ELSELOG_OUR_CODE ON ASU.TEXCHANGE_ELSELOG
(FK_OUR_CODE)
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


