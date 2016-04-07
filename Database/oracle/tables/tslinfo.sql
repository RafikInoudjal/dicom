ALTER TABLE ASU.TSLINFO
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TSLINFO CASCADE CONSTRAINTS
/

--
-- TSLINFO  (Table) 
--
CREATE TABLE ASU.TSLINFO
(
  FK_ID               NUMBER                    NOT NULL,
  FK_SLFORMID         NUMBER,
  FK_PEOPLEID         NUMBER,
  FK_OWNERID          NUMBER                    DEFAULT 0,
  FD_LEAVEHOME        DATE,
  FD_RETURNHOME       DATE,
  FC_TOWORK           VARCHAR2(255 BYTE),
  FL_DEL              NUMBER                    DEFAULT 0,
  FD_DATE             DATE,
  FK_PACID            NUMBER,
  FK_ORGID            NUMBER,
  FN_STATE            NUMBER                    DEFAULT 0,
  FN_EQUIVALENT       NUMBER                    DEFAULT 0,
  FK_RELATIVE_STATUS  NUMBER                    DEFAULT 0,
  FC_OTHER            VARCHAR2(255 BYTE),
  FD_BEGSTAC          DATE,
  FD_ENDSTAC          DATE,
  FK_CLOSEVRACHID     NUMBER,
  FK_OSMOTR           NUMBER,
  FK_DISABILITY       NUMBER,
  FK_FAMILY           NUMBER,
  FK_DOC_KIND         NUMBER,
  FC_DISABILITY       VARCHAR2(255 BYTE),
  FK_FAMILY2          NUMBER,
  FK_DISABILITYDOP    NUMBER,
  FK_DISABILITYIZM    NUMBER,
  FP_TYPEWORK         NUMBER(1)                 DEFAULT 0,
  FK_GENERALID        NUMBER                    DEFAULT -1,
  FD_TOWORK           DATE,
  FP_TYPELN           NUMBER(1)                 DEFAULT 0,
  FP_SERVWORK         NUMBER(1)                 DEFAULT 0,
  FD_DATE1            DATE,
  FD_DATE2            DATE,
  FC_NUMPUT           VARCHAR2(7 BYTE),
  FC_OGRNSAN          VARCHAR2(15 BYTE),
  FC_UYEAR1           VARCHAR2(2 BYTE),
  FC_UYEAR2           VARCHAR2(2 BYTE),
  FC_UMONTH1          VARCHAR2(2 BYTE),
  FC_UMONTH2          VARCHAR2(2 BYTE),
  FC_UPEOPLE1         VARCHAR2(39 BYTE),
  FC_UPEOPLE2         VARCHAR2(39 BYTE),
  FP_RSB              NUMBER(1)                 DEFAULT 0,
  FK_MARKVIOLATION    NUMBER,
  FD_MARKVIOLATION    DATE,
  FD_NAPRBUROMSE      DATE,
  FD_REGDOCBUROMSE    DATE,
  FD_OSVIDETBUROMSE   DATE,
  FP_SETGROUPINVAL    NUMBER(1)                 DEFAULT 0,
  FK_OTHERS           NUMBER,
  FD_OTHERS           DATE,
  FC_NAMELPU          VARCHAR2(38 BYTE),
  FC_ADRESLPU         VARCHAR2(38 BYTE),
  FC_OGRNLPU          VARCHAR2(15 BYTE),
  FK_WORKID           NUMBER                    DEFAULT -1,
  FP_OTHERLLPU        NUMBER(1)                 DEFAULT 0,
  FC_NUMBER           VARCHAR2(12 BYTE),
  FP_PEOPLE_UHOD      NUMBER(1)                 DEFAULT 0,
  FC_COMMENT          VARCHAR2(100 BYTE),
  FK_CHANGESOTRID     NUMBER                    DEFAULT -1,
  FD_CHANGE           DATE,
  FK_OSMOTRCLOSE      NUMBER,
  FP_SN_CLOSE         NUMBER(1)                 DEFAULT 0,
  FP_SL_CLOSE         NUMBER(1)                 DEFAULT 0,
  FK_SNOWNERID        NUMBER(15)                DEFAULT -1
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          80K
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

COMMENT ON TABLE ASU.TSLINFO IS '����� ���������� ������ ������������������'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_ID IS 'SEQUENCE=[SEQ_TSLINFO]'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_SLFORMID IS '��� ������ ������ ������������������, -1 - �����'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_PEOPLEID IS '��� ��������'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_OWNERID IS '��� ����������� ������ ������������������'
/

COMMENT ON COLUMN ASU.TSLINFO.FD_LEAVEHOME IS '���� ������ ����� ��������� ��� ���'
/

COMMENT ON COLUMN ASU.TSLINFO.FD_RETURNHOME IS '���� ��������� ����� ���������� ��� ���'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_TOWORK IS '"���������� � ������" - ������ (�����������) -- ��� ������������� �� ������� �� -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FL_DEL IS '������� ��������'
/

COMMENT ON COLUMN ASU.TSLINFO.FD_DATE IS '���� ��������� ��������� ������'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_PACID IS '��� ������ �������'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_ORGID IS '��� �����������'
/

COMMENT ON COLUMN ASU.TSLINFO.FN_STATE IS '��������� ������ (0 - ������, 1 - ������, 2 - ������ ������) --20060826 Serg'
/

COMMENT ON COLUMN ASU.TSLINFO.FN_EQUIVALENT IS '0 - �������, -1 - ������, ID - ��������'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_RELATIVE_STATUS IS '������� ������� -- ��� ������������� �� ������� �� -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_OTHER IS '������'
/

COMMENT ON COLUMN ASU.TSLINFO.FD_BEGSTAC IS '���� ������ ���������� � ����������'
/

COMMENT ON COLUMN ASU.TSLINFO.FD_ENDSTAC IS '���� ��������� ���������� � ����������'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_CLOSEVRACHID IS '������ ���� ��������� ���� ��� �������� ����� ���������� ��. � 12.03.2012 ���� ���� ������������ ��� ��������� ���� �� �������� ��� �������� ��.'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_OSMOTR IS '������, �� ������� ��� ������ ������ ������������������ (VNAZ.FK_ID)'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_DISABILITY IS '������������������ (ASU.TSMID.FK_ID)'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_FAMILY IS '��� ������� (ASU.TSMID.FK_ID) - 1 �������'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_DOC_KIND IS '��� ��������� (ASU.TSMID.FK_ID)'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_DISABILITY IS '��������� �������� ������������������'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_FAMILY2 IS '��� ������� (ASU.TSMID.FK_ID) 2 �������'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_DISABILITYDOP IS '��� ��� ������������������ (ASU.TSMID.FK_ID) -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_DISABILITYIZM IS '��� ��������� ������������������ (ASU.TSMID.FK_ID) -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FP_TYPEWORK IS '��� ������  0 - �� ������, 1 - �������� ������, 2 - �� ����������������  -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_GENERALID IS '������ �� �� �� ��������� ����� ������ -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FD_TOWORK IS '"���������� � ������" - ����  --  04072011 KOA � 01.07.20011 ����� ��������� ���� ������ �� ������'
/

COMMENT ON COLUMN ASU.TSLINFO.FP_TYPELN IS '������� �������/������ ������� �� -- 04072011 KOA   0 - ������ ������, 1 - ����� ������'
/

COMMENT ON COLUMN ASU.TSLINFO.FP_SERVWORK IS '������� �� �����  � ��������������� ����������� ������ ��������� -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FD_DATE1 IS '���� ������ �������  -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FD_DATE2 IS '���� ��������� �������  -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_NUMPUT IS '����� ������� � ��������� -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_OGRNSAN IS '���� ��������� -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_UYEAR1 IS '������� � ����� �� ����� �� ������ ��������� -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_UYEAR2 IS '������� � ����� �� ����� �� ������ ��������� -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_UMONTH1 IS '������� � ������� �� ����� �� ������ ��������� -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_UMONTH2 IS '������� � ������� �� ����� �� ������ ��������� -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_UPEOPLE1 IS '��� ������� �������� �� ����� -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_UPEOPLE2 IS '��� ������� �������� �� ����� -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FP_RSB IS '������ ����� ������������ 0 - �� ������, 1 - ��, 2 - ��� -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_MARKVIOLATION IS '��������� ������  (ASU.TSMID.FK_ID)  -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FD_MARKVIOLATION IS '���� ��������� ������  -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FD_NAPRBUROMSE IS '���� ����������� � ���� ���  -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FD_REGDOCBUROMSE IS '���� ����������� ���������� � ���� ��� -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FD_OSVIDETBUROMSE IS '����������������� � ���� ���  -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FP_SETGROUPINVAL IS '�����������/�������� ������ ������������ -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_OTHERS IS '������ (ASU.TSMID.FK_ID)  -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FD_OTHERS IS '���� ������  -- 04072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_NAMELPU IS '������������ ���. ����������  -- 07072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_ADRESLPU IS '����� ���. ����������  -- 07072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_OGRNLPU IS '���� ���. ����������  -- 07072011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_WORKID IS '����� ������ (�������� / �� ����������������)  -- 10082011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FP_OTHERLLPU IS '������� ����, ��� ������ �������� ������������ �� ��������� � ������ ���  -- 24082011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_NUMBER IS '����� �� ��������� � ������ ��� -- 24082011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FP_PEOPLE_UHOD IS '������� ���������� �� �� ������� -- 30082011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FC_COMMENT IS '���������� � ��������� ������������������ --22112011 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_CHANGESOTRID IS '����, ������� ��������� ������ ��������� � ��������� ������������������  -- 11032012 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FD_CHANGE IS '���� ���������� ��������� ���������'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_OSMOTRCLOSE IS '������, �� ������� ��� ������ ������ ������������������ (VNAZ.FK_ID) Add by Neronov A. 23082011'
/

COMMENT ON COLUMN ASU.TSLINFO.FP_SN_CLOSE IS '������� �������� ���� �������� ������ ������������������ -- 02102012 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FP_SL_CLOSE IS '������� �������� ���� �������� ��������� ������������������ -- 02102012 KOA'
/

COMMENT ON COLUMN ASU.TSLINFO.FK_SNOWNERID IS 'ID �������� ������ ������������������ (����� ��������� ����������) -- 03102012 KOA'
/


--
-- TSLINFO_DISABILITY  (Index) 
--
--  Dependencies: 
--   TSLINFO (Table)
--
CREATE INDEX ASU.TSLINFO_DISABILITY ON ASU.TSLINFO
(FK_DISABILITY)
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
-- TSLINFO_EQUIVALENT  (Index) 
--
--  Dependencies: 
--   TSLINFO (Table)
--
CREATE INDEX ASU.TSLINFO_EQUIVALENT ON ASU.TSLINFO
(FN_EQUIVALENT)
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
-- TSLINFO_FORM  (Index) 
--
--  Dependencies: 
--   TSLINFO (Table)
--
CREATE INDEX ASU.TSLINFO_FORM ON ASU.TSLINFO
(FK_SLFORMID)
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
-- TSLINFO_OWNER  (Index) 
--
--  Dependencies: 
--   TSLINFO (Table)
--
CREATE INDEX ASU.TSLINFO_OWNER ON ASU.TSLINFO
(FK_OWNERID)
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
-- TSLINFO_PACID  (Index) 
--
--  Dependencies: 
--   TSLINFO (Table)
--
CREATE INDEX ASU.TSLINFO_PACID ON ASU.TSLINFO
(FK_PACID)
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
-- TSLINFO_PEOPLEID  (Index) 
--
--  Dependencies: 
--   TSLINFO (Table)
--
CREATE INDEX ASU.TSLINFO_PEOPLEID ON ASU.TSLINFO
(FK_PEOPLEID)
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
-- TSLINFO_PK  (Index) 
--
--  Dependencies: 
--   TSLINFO (Table)
--
CREATE UNIQUE INDEX ASU.TSLINFO_PK ON ASU.TSLINFO
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
-- TSLINFO_SNOWNERID  (Index) 
--
--  Dependencies: 
--   TSLINFO (Table)
--
CREATE INDEX ASU.TSLINFO_SNOWNERID ON ASU.TSLINFO
(FK_SNOWNERID)
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
-- TSLINFO_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TSLINFO (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSLINFO_BEFORE_INSERT" 
  BEFORE INSERT
  ON ASU.TSLINFO   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TSLINFO.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


--
-- TSLINFO_LOG  (Trigger) 
--
--  Dependencies: 
--   TSLINFO (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSLINFO_LOG" 
 AFTER
  INSERT OR DELETE OR UPDATE
 ON ASU.TSLINFO REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
DISABLE
BEGIN
  -- created by KOA 02.04.2012
  if INSERTING then
    PKG_LOG.Do_log('TSLINFO','FK_ID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_id), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_SLFORMID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_SLFORMID), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_PEOPLEID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_PEOPLEID), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_OWNERID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_OWNERID), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FD_LEAVEHOME', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_LEAVEHOME), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FD_RETURNHOME', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_RETURNHOME), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_TOWORK', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_TOWORK), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FL_DEL', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FL_DEL), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FD_DATE', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_DATE), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_PACID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_PACID), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_ORGID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_ORGID), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FN_STATE', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FN_STATE), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FN_EQUIVALENT', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FN_EQUIVALENT), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_RELATIVE_STATUS', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_RELATIVE_STATUS), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_OTHER', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_OTHER), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FD_BEGSTAC', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_BEGSTAC), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FD_ENDSTAC', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_ENDSTAC), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_CLOSEVRACHID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_CLOSEVRACHID), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_OSMOTR', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_OSMOTR), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_DISABILITY', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_DISABILITY), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_FAMILY', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_FAMILY), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_DOC_KIND', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_DOC_KIND), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_DISABILITY', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_DISABILITY), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_FAMILY2', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_FAMILY2), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_DISABILITYDOP', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_DISABILITYDOP), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_DISABILITYIZM', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_DISABILITYIZM), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FP_TYPEWORK', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FP_TYPEWORK), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_GENERALID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_GENERALID), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FD_TOWORK', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_TOWORK), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FP_TYPELN', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FP_TYPELN), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FP_SERVWORK', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FP_SERVWORK), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FD_DATE1', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_DATE1), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FD_DATE2', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_DATE2), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_NUMPUT', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_NUMPUT), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_OGRNSAN', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_OGRNSAN), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_UYEAR1', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_UYEAR1), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_UYEAR2', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_UYEAR2), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_UMONTH1', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_UMONTH1), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_UMONTH2', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_UMONTH2), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_UPEOPLE1', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_UPEOPLE1), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_UPEOPLE2', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_UPEOPLE2), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FP_RSB', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FP_RSB), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_MARKVIOLATION', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_MARKVIOLATION), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FD_MARKVIOLATION', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_MARKVIOLATION), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FD_NAPRBUROMSE', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_NAPRBUROMSE), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FD_REGDOCBUROMSE', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_REGDOCBUROMSE), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FD_OSVIDETBUROMSE', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_OSVIDETBUROMSE), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FP_SETGROUPINVAL', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FP_SETGROUPINVAL), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_OTHERS', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_OTHERS), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FD_OTHERS', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_OTHERS), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_NAMELPU', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_NAMELPU), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_ADRESLPU', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_ADRESLPU), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_OGRNLPU', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_OGRNLPU), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_WORKID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_WORKID), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FP_OTHERLLPU', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FP_OTHERLLPU), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_NUMBER', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_NUMBER), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FP_PEOPLE_UHOD', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FP_PEOPLE_UHOD), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FC_COMMENT', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_COMMENT), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FK_CHANGESOTRID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_CHANGESOTRID), :new.fk_id);
    PKG_LOG.Do_log('TSLINFO','FD_CHANGE', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_CHANGE), :new.fk_id);
  elsif DELETING then
      PKG_LOG.Do_log('TSLINFO', 'FK_ID', 'DELETE', PKG_LOG.GET_VALUE(:old.fk_id), null, :old.fk_id);
  elsif UPDATING then
    PKG_LOG.Do_log('TSLINFO', 'FK_ID', 'UPDATE', PKG_LOG.GET_VALUE(:old.fk_id), PKG_LOG.GET_VALUE(:new.fk_id), :old.fk_id);
    if UPDATING ('FK_SLFORMID') AND PKG_LOG.GET_VALUE(:old.FK_SLFORMID) <> PKG_LOG.GET_VALUE(:new.FK_SLFORMID) then
      PKG_LOG.Do_log('TSLINFO', 'FK_SLFORMID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_SLFORMID), PKG_LOG.GET_VALUE(:new.FK_SLFORMID), :old.fk_id);
    end if;
    if UPDATING ('FK_PEOPLEID') AND PKG_LOG.GET_VALUE(:old.FK_PEOPLEID) <> PKG_LOG.GET_VALUE(:new.FK_PEOPLEID) then
      PKG_LOG.Do_log('TSLINFO', 'FK_PEOPLEID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_PEOPLEID), PKG_LOG.GET_VALUE(:new.FK_PEOPLEID), :old.fk_id);
    end if;
    if UPDATING ('FK_OWNERID') AND PKG_LOG.GET_VALUE(:old.FK_OWNERID) <> PKG_LOG.GET_VALUE(:new.FK_OWNERID) then
      PKG_LOG.Do_log('TSLINFO', 'FK_OWNERID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_OWNERID), PKG_LOG.GET_VALUE(:new.FK_OWNERID), :old.fk_id);
    end if;
    if UPDATING ('FD_LEAVEHOME') AND PKG_LOG.GET_VALUE(:old.FD_LEAVEHOME) <> PKG_LOG.GET_VALUE(:new.FD_LEAVEHOME) then
      PKG_LOG.Do_log('TSLINFO', 'FD_LEAVEHOME', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_LEAVEHOME), PKG_LOG.GET_VALUE(:new.FD_LEAVEHOME), :old.fk_id);
    end if;
    if UPDATING ('FD_RETURNHOME') AND PKG_LOG.GET_VALUE(:old.FD_RETURNHOME) <> PKG_LOG.GET_VALUE(:new.FD_RETURNHOME) then
      PKG_LOG.Do_log('TSLINFO', 'FD_RETURNHOME', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_RETURNHOME), PKG_LOG.GET_VALUE(:new.FD_RETURNHOME), :old.fk_id);
    end if;
    if UPDATING ('FC_TOWORK') AND PKG_LOG.GET_VALUE(:old.FC_TOWORK) <> PKG_LOG.GET_VALUE(:new.FC_TOWORK) then
      PKG_LOG.Do_log('TSLINFO', 'FC_TOWORK', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_TOWORK), PKG_LOG.GET_VALUE(:new.FC_TOWORK), :old.fk_id);
    end if;
    if UPDATING ('FL_DEL') AND PKG_LOG.GET_VALUE(:old.FL_DEL) <> PKG_LOG.GET_VALUE(:new.FL_DEL) then
      PKG_LOG.Do_log('TSLINFO', 'FL_DEL', 'UPDATE', PKG_LOG.GET_VALUE(:old.FL_DEL), PKG_LOG.GET_VALUE(:new.FL_DEL), :old.fk_id);
    end if;
    if UPDATING ('FD_DATE') AND PKG_LOG.GET_VALUE(:old.FD_DATE) <> PKG_LOG.GET_VALUE(:new.FD_DATE) then
      PKG_LOG.Do_log('TSLINFO', 'FD_DATE', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_DATE), PKG_LOG.GET_VALUE(:new.FD_DATE), :old.fk_id);
    end if;
    if UPDATING ('FK_PACID') AND PKG_LOG.GET_VALUE(:old.FK_PACID) <> PKG_LOG.GET_VALUE(:new.FK_PACID) then
      PKG_LOG.Do_log('TSLINFO', 'FK_PACID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_PACID), PKG_LOG.GET_VALUE(:new.FK_PACID), :old.fk_id);
    end if;
    if UPDATING ('FK_ORGID') AND PKG_LOG.GET_VALUE(:old.FK_ORGID) <> PKG_LOG.GET_VALUE(:new.FK_ORGID) then
      PKG_LOG.Do_log('TSLINFO', 'FK_ORGID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_ORGID), PKG_LOG.GET_VALUE(:new.FK_ORGID), :old.fk_id);
    end if;
    if UPDATING ('FN_STATE') AND PKG_LOG.GET_VALUE(:old.FN_STATE) <> PKG_LOG.GET_VALUE(:new.FN_STATE) then
      PKG_LOG.Do_log('TSLINFO', 'FN_STATE', 'UPDATE', PKG_LOG.GET_VALUE(:old.FN_STATE), PKG_LOG.GET_VALUE(:new.FN_STATE), :old.fk_id);
    end if;
    if UPDATING ('FN_EQUIVALENT') AND PKG_LOG.GET_VALUE(:old.FN_EQUIVALENT) <> PKG_LOG.GET_VALUE(:new.FN_EQUIVALENT) then
      PKG_LOG.Do_log('TSLINFO', 'FN_EQUIVALENT', 'UPDATE', PKG_LOG.GET_VALUE(:old.FN_EQUIVALENT), PKG_LOG.GET_VALUE(:new.FN_EQUIVALENT), :old.fk_id);
    end if;
    if UPDATING ('FK_RELATIVE_STATUS') AND PKG_LOG.GET_VALUE(:old.FK_RELATIVE_STATUS) <> PKG_LOG.GET_VALUE(:new.FK_RELATIVE_STATUS) then
      PKG_LOG.Do_log('TSLINFO', 'FK_RELATIVE_STATUS', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_RELATIVE_STATUS), PKG_LOG.GET_VALUE(:new.FK_RELATIVE_STATUS), :old.fk_id);
    end if;
    if UPDATING ('FC_OTHER') AND PKG_LOG.GET_VALUE(:old.FC_OTHER) <> PKG_LOG.GET_VALUE(:new.FC_OTHER) then
      PKG_LOG.Do_log('TSLINFO', 'FC_OTHER', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_OTHER), PKG_LOG.GET_VALUE(:new.FC_OTHER), :old.fk_id);
    end if;
    if UPDATING ('FD_BEGSTAC') AND PKG_LOG.GET_VALUE(:old.FD_BEGSTAC) <> PKG_LOG.GET_VALUE(:new.FD_BEGSTAC) then
      PKG_LOG.Do_log('TSLINFO', 'FD_BEGSTAC', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_BEGSTAC), PKG_LOG.GET_VALUE(:new.FD_BEGSTAC), :old.fk_id);
    end if;
    if UPDATING ('FD_ENDSTAC') AND PKG_LOG.GET_VALUE(:old.FD_ENDSTAC) <> PKG_LOG.GET_VALUE(:new.FD_ENDSTAC) then
      PKG_LOG.Do_log('TSLINFO', 'FD_ENDSTAC', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_ENDSTAC), PKG_LOG.GET_VALUE(:new.FD_ENDSTAC), :old.fk_id);
    end if;
    if UPDATING ('FK_CLOSEVRACHID') AND PKG_LOG.GET_VALUE(:old.FK_CLOSEVRACHID) <> PKG_LOG.GET_VALUE(:new.FK_CLOSEVRACHID) then
      PKG_LOG.Do_log('TSLINFO', 'FK_CLOSEVRACHID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_CLOSEVRACHID), PKG_LOG.GET_VALUE(:new.FK_CLOSEVRACHID), :old.fk_id);
    end if;
    if UPDATING ('FK_OSMOTR') AND PKG_LOG.GET_VALUE(:old.FK_OSMOTR) <> PKG_LOG.GET_VALUE(:new.FK_OSMOTR) then
      PKG_LOG.Do_log('TSLINFO', 'FK_OSMOTR', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_OSMOTR), PKG_LOG.GET_VALUE(:new.FK_OSMOTR), :old.fk_id);
    end if;
    if UPDATING ('FK_DISABILITY') AND PKG_LOG.GET_VALUE(:old.FK_DISABILITY) <> PKG_LOG.GET_VALUE(:new.FK_DISABILITY) then
      PKG_LOG.Do_log('TSLINFO', 'FK_DISABILITY', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_DISABILITY), PKG_LOG.GET_VALUE(:new.FK_DISABILITY), :old.fk_id);
    end if;
    if UPDATING ('FK_FAMILY') AND PKG_LOG.GET_VALUE(:old.FK_FAMILY) <> PKG_LOG.GET_VALUE(:new.FK_FAMILY) then
      PKG_LOG.Do_log('TSLINFO', 'FK_FAMILY', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_FAMILY), PKG_LOG.GET_VALUE(:new.FK_FAMILY), :old.fk_id);
    end if;
    if UPDATING ('FK_DOC_KIND') AND PKG_LOG.GET_VALUE(:old.FK_DOC_KIND) <> PKG_LOG.GET_VALUE(:new.FK_DOC_KIND) then
      PKG_LOG.Do_log('TSLINFO', 'FK_DOC_KIND', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_DOC_KIND), PKG_LOG.GET_VALUE(:new.FK_DOC_KIND), :old.fk_id);
    end if;
    if UPDATING ('FC_DISABILITY') AND PKG_LOG.GET_VALUE(:old.FC_DISABILITY) <> PKG_LOG.GET_VALUE(:new.FC_DISABILITY) then
      PKG_LOG.Do_log('TSLINFO', 'FC_DISABILITY', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_DISABILITY), PKG_LOG.GET_VALUE(:new.FC_DISABILITY), :old.fk_id);
    end if;
    if UPDATING ('FK_FAMILY2') AND PKG_LOG.GET_VALUE(:old.FK_FAMILY2) <> PKG_LOG.GET_VALUE(:new.FK_FAMILY2) then
      PKG_LOG.Do_log('TSLINFO', 'FK_FAMILY2', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_FAMILY2), PKG_LOG.GET_VALUE(:new.FK_FAMILY2), :old.fk_id);
    end if;
    if UPDATING ('FK_DISABILITYDOP') AND PKG_LOG.GET_VALUE(:old.FK_DISABILITYDOP) <> PKG_LOG.GET_VALUE(:new.FK_DISABILITYDOP) then
      PKG_LOG.Do_log('TSLINFO', 'FK_DISABILITYDOP', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_DISABILITYDOP), PKG_LOG.GET_VALUE(:new.FK_DISABILITYDOP), :old.fk_id);
    end if;
    if UPDATING ('FK_DISABILITYIZM') AND PKG_LOG.GET_VALUE(:old.FK_DISABILITYIZM) <> PKG_LOG.GET_VALUE(:new.FK_DISABILITYIZM) then
      PKG_LOG.Do_log('TSLINFO', 'FK_DISABILITYIZM', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_DISABILITYIZM), PKG_LOG.GET_VALUE(:new.FK_DISABILITYIZM), :old.fk_id);
    end if;
    if UPDATING ('FP_TYPEWORK') AND PKG_LOG.GET_VALUE(:old.FP_TYPEWORK) <> PKG_LOG.GET_VALUE(:new.FP_TYPEWORK) then
      PKG_LOG.Do_log('TSLINFO', 'FP_TYPEWORK', 'UPDATE', PKG_LOG.GET_VALUE(:old.FP_TYPEWORK), PKG_LOG.GET_VALUE(:new.FP_TYPEWORK), :old.fk_id);
    end if;
    if UPDATING ('FK_GENERALID') AND PKG_LOG.GET_VALUE(:old.FK_GENERALID) <> PKG_LOG.GET_VALUE(:new.FK_GENERALID) then
      PKG_LOG.Do_log('TSLINFO', 'FK_GENERALID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_GENERALID), PKG_LOG.GET_VALUE(:new.FK_GENERALID), :old.fk_id);
    end if;
    if UPDATING ('FD_TOWORK') AND PKG_LOG.GET_VALUE(:old.FD_TOWORK) <> PKG_LOG.GET_VALUE(:new.FD_TOWORK) then
      PKG_LOG.Do_log('TSLINFO', 'FD_TOWORK', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_TOWORK), PKG_LOG.GET_VALUE(:new.FD_TOWORK), :old.fk_id);
    end if;
    if UPDATING ('FP_TYPELN') AND PKG_LOG.GET_VALUE(:old.FP_TYPELN) <> PKG_LOG.GET_VALUE(:new.FP_TYPELN) then
      PKG_LOG.Do_log('TSLINFO', 'FP_TYPELN', 'UPDATE', PKG_LOG.GET_VALUE(:old.FP_TYPELN), PKG_LOG.GET_VALUE(:new.FP_TYPELN), :old.fk_id);
    end if;
    if UPDATING ('FP_SERVWORK') AND PKG_LOG.GET_VALUE(:old.FP_SERVWORK) <> PKG_LOG.GET_VALUE(:new.FP_SERVWORK) then
      PKG_LOG.Do_log('TSLINFO', 'FP_SERVWORK', 'UPDATE', PKG_LOG.GET_VALUE(:old.FP_SERVWORK), PKG_LOG.GET_VALUE(:new.FP_SERVWORK), :old.fk_id);
    end if;
    if UPDATING ('FD_DATE1') AND PKG_LOG.GET_VALUE(:old.FD_DATE1) <> PKG_LOG.GET_VALUE(:new.FD_DATE1) then
      PKG_LOG.Do_log('TSLINFO', 'FD_DATE1', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_DATE1), PKG_LOG.GET_VALUE(:new.FD_DATE1), :old.fk_id);
    end if;
    if UPDATING ('FD_DATE2') AND PKG_LOG.GET_VALUE(:old.FD_DATE2) <> PKG_LOG.GET_VALUE(:new.FD_DATE2) then
      PKG_LOG.Do_log('TSLINFO', 'FD_DATE2', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_DATE2), PKG_LOG.GET_VALUE(:new.FD_DATE2), :old.fk_id);
    end if;
    if UPDATING ('FC_NUMPUT') AND PKG_LOG.GET_VALUE(:old.FC_NUMPUT) <> PKG_LOG.GET_VALUE(:new.FC_NUMPUT) then
      PKG_LOG.Do_log('TSLINFO', 'FC_NUMPUT', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_NUMPUT), PKG_LOG.GET_VALUE(:new.FC_NUMPUT), :old.fk_id);
    end if;
    if UPDATING ('FC_OGRNSAN') AND PKG_LOG.GET_VALUE(:old.FC_OGRNSAN) <> PKG_LOG.GET_VALUE(:new.FC_OGRNSAN) then
      PKG_LOG.Do_log('TSLINFO', 'FC_OGRNSAN', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_OGRNSAN), PKG_LOG.GET_VALUE(:new.FC_OGRNSAN), :old.fk_id);
    end if;
    if UPDATING ('FC_UYEAR1') AND PKG_LOG.GET_VALUE(:old.FC_UYEAR1) <> PKG_LOG.GET_VALUE(:new.FC_UYEAR1) then
      PKG_LOG.Do_log('TSLINFO', 'FC_UYEAR1', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_UYEAR1), PKG_LOG.GET_VALUE(:new.FC_UYEAR1), :old.fk_id);
    end if;
    if UPDATING ('FC_UYEAR2') AND PKG_LOG.GET_VALUE(:old.FC_UYEAR2) <> PKG_LOG.GET_VALUE(:new.FC_UYEAR2) then
      PKG_LOG.Do_log('TSLINFO', 'FC_UYEAR2', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_UYEAR2), PKG_LOG.GET_VALUE(:new.FC_UYEAR2), :old.fk_id);
    end if;
    if UPDATING ('FC_UMONTH1') AND PKG_LOG.GET_VALUE(:old.FC_UMONTH1) <> PKG_LOG.GET_VALUE(:new.FC_UMONTH1) then
      PKG_LOG.Do_log('TSLINFO', 'FC_UMONTH1', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_UMONTH1), PKG_LOG.GET_VALUE(:new.FC_UMONTH1), :old.fk_id);
    end if;
    if UPDATING ('FC_UMONTH2') AND PKG_LOG.GET_VALUE(:old.FC_UMONTH2) <> PKG_LOG.GET_VALUE(:new.FC_UMONTH2) then
      PKG_LOG.Do_log('TSLINFO', 'FC_UMONTH2', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_UMONTH2), PKG_LOG.GET_VALUE(:new.FC_UMONTH2), :old.fk_id);
    end if;
    if UPDATING ('FC_UPEOPLE1') AND PKG_LOG.GET_VALUE(:old.FC_UPEOPLE1) <> PKG_LOG.GET_VALUE(:new.FC_UPEOPLE1) then
      PKG_LOG.Do_log('TSLINFO', 'FC_UPEOPLE1', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_UPEOPLE1), PKG_LOG.GET_VALUE(:new.FC_UPEOPLE1), :old.fk_id);
    end if;
    if UPDATING ('FC_UPEOPLE2') AND PKG_LOG.GET_VALUE(:old.FC_UPEOPLE2) <> PKG_LOG.GET_VALUE(:new.FC_UPEOPLE2) then
      PKG_LOG.Do_log('TSLINFO', 'FC_UPEOPLE2', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_UPEOPLE2), PKG_LOG.GET_VALUE(:new.FC_UPEOPLE2), :old.fk_id);
    end if;
    if UPDATING ('FP_RSB') AND PKG_LOG.GET_VALUE(:old.FP_RSB) <> PKG_LOG.GET_VALUE(:new.FP_RSB) then
      PKG_LOG.Do_log('TSLINFO', 'FP_RSB', 'UPDATE', PKG_LOG.GET_VALUE(:old.FP_RSB), PKG_LOG.GET_VALUE(:new.FP_RSB), :old.fk_id);
    end if;
    if UPDATING ('FK_MARKVIOLATION') AND PKG_LOG.GET_VALUE(:old.FK_MARKVIOLATION) <> PKG_LOG.GET_VALUE(:new.FK_MARKVIOLATION) then
      PKG_LOG.Do_log('TSLINFO', 'FK_MARKVIOLATION', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_MARKVIOLATION), PKG_LOG.GET_VALUE(:new.FK_MARKVIOLATION), :old.fk_id);
    end if;
    if UPDATING ('FD_MARKVIOLATION') AND PKG_LOG.GET_VALUE(:old.FD_MARKVIOLATION) <> PKG_LOG.GET_VALUE(:new.FD_MARKVIOLATION) then
      PKG_LOG.Do_log('TSLINFO', 'FD_MARKVIOLATION', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_MARKVIOLATION), PKG_LOG.GET_VALUE(:new.FD_MARKVIOLATION), :old.fk_id);
    end if;
    if UPDATING ('FD_NAPRBUROMSE') AND PKG_LOG.GET_VALUE(:old.FD_NAPRBUROMSE) <> PKG_LOG.GET_VALUE(:new.FD_NAPRBUROMSE) then
      PKG_LOG.Do_log('TSLINFO', 'FD_NAPRBUROMSE', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_NAPRBUROMSE), PKG_LOG.GET_VALUE(:new.FD_NAPRBUROMSE), :old.fk_id);
    end if;
    if UPDATING ('FD_REGDOCBUROMSE') AND PKG_LOG.GET_VALUE(:old.FD_REGDOCBUROMSE) <> PKG_LOG.GET_VALUE(:new.FD_REGDOCBUROMSE) then
      PKG_LOG.Do_log('TSLINFO', 'FD_REGDOCBUROMSE', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_REGDOCBUROMSE), PKG_LOG.GET_VALUE(:new.FD_REGDOCBUROMSE), :old.fk_id);
    end if;
    if UPDATING ('FD_OSVIDETBUROMSE') AND PKG_LOG.GET_VALUE(:old.FD_OSVIDETBUROMSE) <> PKG_LOG.GET_VALUE(:new.FD_OSVIDETBUROMSE) then
      PKG_LOG.Do_log('TSLINFO', 'FD_OSVIDETBUROMSE', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_OSVIDETBUROMSE), PKG_LOG.GET_VALUE(:new.FD_OSVIDETBUROMSE), :old.fk_id);
    end if;
    if UPDATING ('FP_SETGROUPINVAL') AND PKG_LOG.GET_VALUE(:old.FP_SETGROUPINVAL) <> PKG_LOG.GET_VALUE(:new.FP_SETGROUPINVAL) then
      PKG_LOG.Do_log('TSLINFO', 'FP_SETGROUPINVAL', 'UPDATE', PKG_LOG.GET_VALUE(:old.FP_SETGROUPINVAL), PKG_LOG.GET_VALUE(:new.FP_SETGROUPINVAL), :old.fk_id);
    end if;
    if UPDATING ('FK_OTHERS') AND PKG_LOG.GET_VALUE(:old.FK_OTHERS) <> PKG_LOG.GET_VALUE(:new.FK_OTHERS) then
      PKG_LOG.Do_log('TSLINFO', 'FK_OTHERS', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_OTHERS), PKG_LOG.GET_VALUE(:new.FK_OTHERS), :old.fk_id);
    end if;
    if UPDATING ('FD_OTHERS') AND PKG_LOG.GET_VALUE(:old.FD_OTHERS) <> PKG_LOG.GET_VALUE(:new.FD_OTHERS) then
      PKG_LOG.Do_log('TSLINFO', 'FD_OTHERS', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_OTHERS), PKG_LOG.GET_VALUE(:new.FD_OTHERS), :old.fk_id);
    end if;
    if UPDATING ('FC_NAMELPU') AND PKG_LOG.GET_VALUE(:old.FC_NAMELPU) <> PKG_LOG.GET_VALUE(:new.FC_NAMELPU) then
      PKG_LOG.Do_log('TSLINFO', 'FC_NAMELPU', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_NAMELPU), PKG_LOG.GET_VALUE(:new.FC_NAMELPU), :old.fk_id);
    end if;
    if UPDATING ('FC_ADRESLPU') AND PKG_LOG.GET_VALUE(:old.FC_ADRESLPU) <> PKG_LOG.GET_VALUE(:new.FC_ADRESLPU) then
      PKG_LOG.Do_log('TSLINFO', 'FC_ADRESLPU', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_ADRESLPU), PKG_LOG.GET_VALUE(:new.FC_ADRESLPU), :old.fk_id);
    end if;
    if UPDATING ('FC_OGRNLPU') AND PKG_LOG.GET_VALUE(:old.FC_OGRNLPU) <> PKG_LOG.GET_VALUE(:new.FC_OGRNLPU) then
      PKG_LOG.Do_log('TSLINFO', 'FC_OGRNLPU', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_OGRNLPU), PKG_LOG.GET_VALUE(:new.FC_OGRNLPU), :old.fk_id);
    end if;
    if UPDATING ('FK_WORKID') AND PKG_LOG.GET_VALUE(:old.FK_WORKID) <> PKG_LOG.GET_VALUE(:new.FK_WORKID) then
      PKG_LOG.Do_log('TSLINFO', 'FK_WORKID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_WORKID), PKG_LOG.GET_VALUE(:new.FK_WORKID), :old.fk_id);
    end if;
    if UPDATING ('FP_OTHERLLPU') AND PKG_LOG.GET_VALUE(:old.FP_OTHERLLPU) <> PKG_LOG.GET_VALUE(:new.FP_OTHERLLPU) then
      PKG_LOG.Do_log('TSLINFO', 'FP_OTHERLLPU', 'UPDATE', PKG_LOG.GET_VALUE(:old.FP_OTHERLLPU), PKG_LOG.GET_VALUE(:new.FP_OTHERLLPU), :old.fk_id);
    end if;
    if UPDATING ('FC_NUMBER') AND PKG_LOG.GET_VALUE(:old.FC_NUMBER) <> PKG_LOG.GET_VALUE(:new.FC_NUMBER) then
      PKG_LOG.Do_log('TSLINFO', 'FC_NUMBER', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_NUMBER), PKG_LOG.GET_VALUE(:new.FC_NUMBER), :old.fk_id);
    end if;
    if UPDATING ('FP_PEOPLE_UHOD') AND PKG_LOG.GET_VALUE(:old.FP_PEOPLE_UHOD) <> PKG_LOG.GET_VALUE(:new.FP_PEOPLE_UHOD) then
      PKG_LOG.Do_log('TSLINFO', 'FP_PEOPLE_UHOD', 'UPDATE', PKG_LOG.GET_VALUE(:old.FP_PEOPLE_UHOD), PKG_LOG.GET_VALUE(:new.FP_PEOPLE_UHOD), :old.fk_id);
    end if;
    if UPDATING ('FC_COMMENT') AND PKG_LOG.GET_VALUE(:old.FC_COMMENT) <> PKG_LOG.GET_VALUE(:new.FC_COMMENT) then
      PKG_LOG.Do_log('TSLINFO', 'FC_COMMENT', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_COMMENT), PKG_LOG.GET_VALUE(:new.FC_COMMENT), :old.fk_id);
    end if;
    if UPDATING ('FK_CHANGESOTRID') AND PKG_LOG.GET_VALUE(:old.FK_CHANGESOTRID) <> PKG_LOG.GET_VALUE(:new.FK_CHANGESOTRID) then
      PKG_LOG.Do_log('TSLINFO', 'FK_CHANGESOTRID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_CHANGESOTRID), PKG_LOG.GET_VALUE(:new.FK_CHANGESOTRID), :old.fk_id);
    end if;
    if UPDATING ('FD_CHANGE') AND PKG_LOG.GET_VALUE(:old.FD_CHANGE) <> PKG_LOG.GET_VALUE(:new.FD_CHANGE) then
      PKG_LOG.Do_log('TSLINFO', 'FD_CHANGE', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_CHANGE), PKG_LOG.GET_VALUE(:new.FD_CHANGE), :old.fk_id);
    end if;
  end if;
END TSLINFO_LOG;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TSLINFO 
-- 
ALTER TABLE ASU.TSLINFO ADD (
  CONSTRAINT TSLINFO_PK
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

