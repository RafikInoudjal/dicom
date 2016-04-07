ALTER TABLE ASU.TSTANDART_COST
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TSTANDART_COST CASCADE CONSTRAINTS
/

--
-- TSTANDART_COST  (Table) 
--
CREATE TABLE ASU.TSTANDART_COST
(
  FK_ID          NUMBER,
  FK_STANDARTID  NUMBER,
  FD_DATE1       DATE,
  FD_DATE2       DATE,
  FN_COST        NUMBER,
  FK_COMPANYID   NUMBER,
  FN_COST2       NUMBER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          240K
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

COMMENT ON COLUMN ASU.TSTANDART_COST.FK_ID IS 'SEQUENCE=[SEQ_TSTANDART_COST]'
/

COMMENT ON COLUMN ASU.TSTANDART_COST.FK_STANDARTID IS '��� ���������'
/

COMMENT ON COLUMN ASU.TSTANDART_COST.FD_DATE1 IS '���� ����� �������� ����'
/

COMMENT ON COLUMN ASU.TSTANDART_COST.FD_DATE2 IS '���� ��������� �������� ���� (���� ������ - ���� ��������� � ��������� ������)'
/

COMMENT ON COLUMN ASU.TSTANDART_COST.FN_COST IS '���������'
/

COMMENT ON COLUMN ASU.TSTANDART_COST.FK_COMPANYID IS '��������� ��������'
/

COMMENT ON COLUMN ASU.TSTANDART_COST.FN_COST2 IS '��������� ��� �����-���'
/


--
-- TSTANDART_COST_FD_DATE1  (Index) 
--
--  Dependencies: 
--   TSTANDART_COST (Table)
--
CREATE INDEX ASU.TSTANDART_COST_FD_DATE1 ON ASU.TSTANDART_COST
(FD_DATE1)
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
-- TSTANDART_COST_FD_DATE2  (Index) 
--
--  Dependencies: 
--   TSTANDART_COST (Table)
--
CREATE INDEX ASU.TSTANDART_COST_FD_DATE2 ON ASU.TSTANDART_COST
(FD_DATE2)
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
-- TSTANDART_COST_FK_STANDARTID  (Index) 
--
--  Dependencies: 
--   TSTANDART_COST (Table)
--
CREATE INDEX ASU.TSTANDART_COST_FK_STANDARTID ON ASU.TSTANDART_COST
(FK_STANDARTID)
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
-- TSTANDART_COST_PK  (Index) 
--
--  Dependencies: 
--   TSTANDART_COST (Table)
--
CREATE UNIQUE INDEX ASU.TSTANDART_COST_PK ON ASU.TSTANDART_COST
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
-- TSTANDART_COST_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TSTANDART_COST (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSTANDART_COST_BEFORE_INSERT" 
  BEFORE INSERT
  ON ASU.TSTANDART_COST   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  IF :new.fk_id IS NULL THEN
    SELECT SEQ_THEAL_COST.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  end if;

  IF :new.FK_COMPANYID IS NULL THEN
    :new.FK_COMPANYID := ASU.GET_DEF_STRAH_COMP;
  end if;
End;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TSTANDART_COST 
-- 
ALTER TABLE ASU.TSTANDART_COST ADD (
  CONSTRAINT TSTANDART_COST_PK
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

GRANT DELETE, INDEX, INSERT, REFERENCES, SELECT, UPDATE ON ASU.TSTANDART_COST TO EXCHANGE
/

GRANT DELETE, INDEX, INSERT, REFERENCES, SELECT, UPDATE ON ASU.TSTANDART_COST TO EXCH43
/

