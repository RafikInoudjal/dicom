ALTER TABLE ASU.TIS_GENSTAT_STAT
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TIS_GENSTAT_STAT CASCADE CONSTRAINTS
/

--
-- TIS_GENSTAT_STAT  (Table) 
--
--  Dependencies: 
--   TIS_GENSTAT (Table)
--
CREATE TABLE ASU.TIS_GENSTAT_STAT
(
  FK_ID                       NUMBER            NOT NULL,
  FN_DEATH                    NUMBER,
  FN_OUTGOING                 NUMBER,
  FN_POSITION                 NUMBER,
  FN_BEDDAYS                  NUMBER,
  FN_HOSPREJECT               NUMBER,
  FN_HOSPCOUNT                NUMBER,
  FN_HOSPAGAIN                NUMBER,
  FN_DEATHAFTEROPERATION      NUMBER,
  FN_OPERATIONPEOPLE          NUMBER,
  FN_UPTO5DAYS                NUMBER,
  FN_OVER30DAYS               NUMBER,
  FN_ACTUALBEDDAYS            NUMBER,
  FN_CHILDREN                 NUMBER,
  FN_AVERAGEBEDOCCUPANCY      NUMBER,
  FN_HOSPUPTO5DAYS            NUMBER,
  FN_AVERAGEBEDSTAY           NUMBER,
  FN_VTMPOPERATIONS           NUMBER,
  FN_OPERATIONCOUNT           NUMBER,
  FN_OVER24HOURS              NUMBER,
  FN_EMERGENCYSURGE           NUMBER,
  FN_INCOMINGPLAN             NUMBER,
  FN_INCOMINGEMERGENCY        NUMBER,
  FN_INCOMINGVILLAGERS        NUMBER,
  FN_DEATHFIRSTDAY            NUMBER,
  FN_STATOCCUPEDPOSITIONS     NUMBER,
  FN_OUTGOINGOPERATEDSURGERY  NUMBER,
  FN_OUTGOUINGSURGERY         NUMBER,
  FN_COMPLICATEDOPERATIONS    NUMBER,
  FK_IS_GENSTAT_ID            NUMBER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TIS_GENSTAT_STAT IS 'STATIONARYINDICATORS'
/


--
-- PK_TIS_GENSTAT_STAT  (Index) 
--
--  Dependencies: 
--   TIS_GENSTAT_STAT (Table)
--
CREATE UNIQUE INDEX ASU.PK_TIS_GENSTAT_STAT ON ASU.TIS_GENSTAT_STAT
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


--
-- TIS_GENSTAT_STAT_BI  (Trigger) 
--
--  Dependencies: 
--   TIS_GENSTAT_STAT (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_GENSTAT_STAT_BI
  BEFORE INSERT
  ON ASU.TIS_GENSTAT_STAT   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_GENSTAT_STAT.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TIS_GENSTAT_STAT 
-- 
ALTER TABLE ASU.TIS_GENSTAT_STAT ADD (
  CONSTRAINT PK_TIS_GENSTAT_STAT
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
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
               ))
/

-- 
-- Foreign Key Constraints for Table TIS_GENSTAT_STAT 
-- 
ALTER TABLE ASU.TIS_GENSTAT_STAT ADD (
  CONSTRAINT FK_TIS_GENS_REFERENCE_TIS_GENS 
 FOREIGN KEY (FK_IS_GENSTAT_ID) 
 REFERENCES ASU.TIS_GENSTAT (FK_ID))
/

