DROP INDEX ASU.TRECIPE_DLO_EXP_DOCTOR_PK
/

--
-- TRECIPE_DLO_EXP_DOCTOR_PK  (Index) 
--
CREATE UNIQUE INDEX ASU.TRECIPE_DLO_EXP_DOCTOR_PK ON ASU.TRECIPE_DLO_EXP_DOCTOR
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


