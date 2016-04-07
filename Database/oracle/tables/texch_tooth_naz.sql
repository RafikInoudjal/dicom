DROP TABLE ASU.TEXCH_TOOTH_NAZ CASCADE CONSTRAINTS
/

--
-- TEXCH_TOOTH_NAZ  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE ASU.TEXCH_TOOTH_NAZ
(
  FK_NAZID    NUMBER                            NOT NULL,
  FK_SEGMENT  NUMBER,
  FK_ZUBNUM   NUMBER,
  FN_NUM      NUMBER,
  FC_POVERHN  VARCHAR2(6 BYTE)
)
ON COMMIT PRESERVE ROWS
NOCACHE
/

COMMENT ON TABLE ASU.TEXCH_TOOTH_NAZ IS '���� ��� �������� � ������������ [Author: Linnikov]'
/

COMMENT ON COLUMN ASU.TEXCH_TOOTH_NAZ.FK_NAZID IS '����������'
/

COMMENT ON COLUMN ASU.TEXCH_TOOTH_NAZ.FK_SEGMENT IS '�������'
/

COMMENT ON COLUMN ASU.TEXCH_TOOTH_NAZ.FK_ZUBNUM IS '����� ���� � ��������'
/

COMMENT ON COLUMN ASU.TEXCH_TOOTH_NAZ.FN_NUM IS '����� ������ (��� ��������)'
/

COMMENT ON COLUMN ASU.TEXCH_TOOTH_NAZ.FC_POVERHN IS '�����������'
/


