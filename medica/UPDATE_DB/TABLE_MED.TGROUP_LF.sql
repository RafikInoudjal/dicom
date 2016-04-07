CREATE TABLE MED.TGROUP_LF
  (
  FK_GROUP_LF_ID NUMBER,
  FC_GROUP_LF VARCHAR2 (50)
 )
/

ALTER TABLE MED.TGROUP_LF 
 ADD (
  FN_ORDER NUMBER,
  FC_SYNONIM VARCHAR2 (50),
  FL_DEL NUMBER (1) DEFAULT 0
 )
/
COMMENT ON COLUMN MED.TGROUP_LF.FN_ORDER IS '������� �����������'
/
COMMENT ON COLUMN MED.TGROUP_LF.FC_SYNONIM IS '�������'
/
COMMENT ON COLUMN MED.TGROUP_LF.FL_DEL IS '1 - ������, 0 - ���'
/

COMMENT ON COLUMN MED.TGROUP_LF.FK_GROUP_LF_ID IS '����'
/
COMMENT ON COLUMN MED.TGROUP_LF.FC_GROUP_LF IS '��������'
/

COMMENT ON TABLE MED.TGROUP_LF IS 
'������ ������������� ���� (����� �� ���������������� ������)'
/

CREATE SEQUENCE MED.SEQ_TGROUP_LF
 START WITH  1
 INCREMENT BY  1
 MINVALUE  1
/

CREATE TRIGGER MED.TGROUP_LF_INS
 BEFORE 
 INSERT
 ON MED.TGROUP_LF
 FOR EACH ROW 
begin
  if :NEW.FK_GROUP_LF_ID is null then
    select SEQ_TGROUP_LF.nextVal into :NEW.FK_GROUP_LF_ID from dual;
  end if;
end;
/

ALTER TABLE MED.TGROUP_LF ADD CONSTRAINT TGROUP_LF_PK
  PRIMARY KEY (
  FK_GROUP_LF_ID
)
/

ALTER TABLE MED.TMEDIC 
 ADD (
  FK_GROUP_LF NUMBER
 )
/
COMMENT ON COLUMN MED.TMEDIC.FK_GROUP_LF IS '������ �� ����������� (med.tgroup_lf)'
/

ALTER TABLE MED.TMEDIC ADD CONSTRAINT TMEDIC_GROUP_LF_C
  FOREIGN KEY (
FK_GROUP_LF
)
 REFERENCES MED.TGROUP_LF
 (
FK_GROUP_LF_ID
) 
/
