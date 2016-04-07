DROP TABLE ASU.TPACMONITOR_DATA CASCADE CONSTRAINTS
/

--
-- TPACMONITOR_DATA  (Table) 
--
CREATE TABLE ASU.TPACMONITOR_DATA
(
  FK_ID         NUMBER(15),
  FK_NAZID      NUMBER(15),
  FK_TIMEID     NUMBER(2),
  FD_DATE       DATE,
  FD_REGISTRED  DATE,
  FK_ISPOLID    NUMBER(15),
  FN_VALUE      NUMBER(6,2),
  FK_PACID      NUMBER(15)
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
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TPACMONITOR_DATA IS '������ ��������� ����������� � ������ ������������'
/

COMMENT ON COLUMN ASU.TPACMONITOR_DATA.FK_ID IS 'SEQUENCE=[SEQ_TPACMONITOR_DATA]'
/

COMMENT ON COLUMN ASU.TPACMONITOR_DATA.FK_NAZID IS '��� ����������(tnazmed.fk_id, tpacmonitor_indexes.fk_id)'
/

COMMENT ON COLUMN ASU.TPACMONITOR_DATA.FK_TIMEID IS '����� ������ ���������(tpacmonitor_time.fk_id)'
/

COMMENT ON COLUMN ASU.TPACMONITOR_DATA.FD_DATE IS '���� ������ ���������'
/

COMMENT ON COLUMN ASU.TPACMONITOR_DATA.FD_REGISTRED IS '�������� ����+����� ������ ���������'
/

COMMENT ON COLUMN ASU.TPACMONITOR_DATA.FK_ISPOLID IS '�����������'
/

COMMENT ON COLUMN ASU.TPACMONITOR_DATA.FN_VALUE IS '��������'
/

COMMENT ON COLUMN ASU.TPACMONITOR_DATA.FK_PACID IS '��� ���������'
/


--
-- TPACMONITOR_DATA_BY_ID  (Index) 
--
--  Dependencies: 
--   TPACMONITOR_DATA (Table)
--
CREATE UNIQUE INDEX ASU.TPACMONITOR_DATA_BY_ID ON ASU.TPACMONITOR_DATA
(FK_ID)
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


--
-- TPACMONITOR_DATA_BEFORE_INS  (Trigger) 
--
--  Dependencies: 
--   TPACMONITOR_DATA (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPACMONITOR_DATA_BEFORE_INS" 
 BEFORE
  INSERT
 ON tpacmonitor_data
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
  select seq_tpacmonitor_data.NEXTVAL into :new.fk_id from dual;
end;
/
SHOW ERRORS;


