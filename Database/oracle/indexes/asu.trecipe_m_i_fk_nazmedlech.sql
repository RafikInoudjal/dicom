DROP INDEX ASU.TRECIPE_M_I_FK_NAZMEDLECH
/

--
-- TRECIPE_M_I_FK_NAZMEDLECH  (Index) 
--
CREATE INDEX ASU.TRECIPE_M_I_FK_NAZMEDLECH ON ASU.TRECIPE_MEDIC
(FK_NAZMEDLECH_ID)
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


