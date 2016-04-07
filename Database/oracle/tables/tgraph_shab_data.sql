DROP TABLE ASU.TGRAPH_SHAB_DATA CASCADE CONSTRAINTS
/

--
-- TGRAPH_SHAB_DATA  (Table) 
--
CREATE TABLE ASU.TGRAPH_SHAB_DATA
(
  FK_ID              NUMBER,
  FK_SHABLON         NUMBER(15),
  FL_SEX             NUMBER,
  FN_COUNT           NUMBER(10),
  FT_HOUR            VARCHAR2(2 BYTE),
  FT_MIN             VARCHAR2(2 BYTE),
  FD_DATE            NUMBER(2),
  FN_INTERVAL        NUMBER(4),
  FK_VRACHKABID      NUMBER,
  FK_KABINETTALONID  NUMBER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          800K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT )
MONITORING
/

COMMENT ON TABLE ASU.TGRAPH_SHAB_DATA IS '������ � �������� ���������� � TGRAPH_SHABLON'
/

COMMENT ON COLUMN ASU.TGRAPH_SHAB_DATA.FK_ID IS 'SEQUENCE=[SEQ_TGRAPH_SHAB_DATA]'
/

COMMENT ON COLUMN ASU.TGRAPH_SHAB_DATA.FK_SHABLON IS 'TGRAPH_SHABLON.FK_ID'
/

COMMENT ON COLUMN ASU.TGRAPH_SHAB_DATA.FL_SEX IS '���'
/

COMMENT ON COLUMN ASU.TGRAPH_SHAB_DATA.FN_COUNT IS '���������� �������'
/

COMMENT ON COLUMN ASU.TGRAPH_SHAB_DATA.FT_HOUR IS '����'
/

COMMENT ON COLUMN ASU.TGRAPH_SHAB_DATA.FT_MIN IS '������'
/

COMMENT ON COLUMN ASU.TGRAPH_SHAB_DATA.FD_DATE IS '����'
/

COMMENT ON COLUMN ASU.TGRAPH_SHAB_DATA.FN_INTERVAL IS '������������'
/

COMMENT ON COLUMN ASU.TGRAPH_SHAB_DATA.FK_KABINETTALONID IS '��� ������������. ���� ����� �������� �� ������ �������� � ������'
/


--
-- TGRAPH_SHAB_DATA_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TGRAPH_SHAB_DATA (Table)
--
CREATE OR REPLACE TRIGGER ASU."TGRAPH_SHAB_DATA_BEFORE_INSERT" 
BEFORE INSERT 
ON tgraph_shab_data
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
Begin
select seq_tgraph_shab_data.nextval into :new.fk_id from dual;
End;
/
SHOW ERRORS;


