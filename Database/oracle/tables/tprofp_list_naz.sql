DROP TABLE ASU.TPROFP_LIST_NAZ CASCADE CONSTRAINTS
/

--
-- TPROFP_LIST_NAZ  (Table) 
--
CREATE TABLE ASU.TPROFP_LIST_NAZ
(
  FK_ID          NUMBER(15),
  FK_LISTID      NUMBER(15),
  FK_NAZID       NUMBER(15),
  FK_ACTIONID    NUMBER(15),
  FK_SMID        NUMBER(15),
  FK_ISPOLID     NUMBER(15),
  FK_NAZTYPE     NUMBER(1),
  FL_CHECK       NUMBER(1),
  FK_VNAZID      NUMBER(15)                     DEFAULT -1,
  FK_RESID       NUMBER(15),
  FC_CONCLUSION  VARCHAR2(2000 BYTE),
  FC_RECOMMENDS  VARCHAR2(2000 BYTE),
  FD_VKDATE      DATE,
  FC_VKNUMBER    VARCHAR2(20 BYTE),
  FC_VKRESULT    VARCHAR2(2000 BYTE)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          8736K
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

COMMENT ON COLUMN ASU.TPROFP_LIST_NAZ.FK_ID IS 'SEQUENCE=[SEQ_TKARTA]'
/

COMMENT ON COLUMN ASU.TPROFP_LIST_NAZ.FK_LISTID IS '-> TPROFP_LIST'
/

COMMENT ON COLUMN ASU.TPROFP_LIST_NAZ.FK_NAZID IS '-> VNAZ'
/

COMMENT ON COLUMN ASU.TPROFP_LIST_NAZ.FK_ACTIONID IS '-> TPROFP_ACTIONS'
/

COMMENT ON COLUMN ASU.TPROFP_LIST_NAZ.FK_SMID IS '-> TSMID'
/

COMMENT ON COLUMN ASU.TPROFP_LIST_NAZ.FK_ISPOLID IS '�����������'
/

COMMENT ON COLUMN ASU.TPROFP_LIST_NAZ.FK_NAZTYPE IS '��� ���������� � ������ �����������'
/

COMMENT ON COLUMN ASU.TPROFP_LIST_NAZ.FL_CHECK IS '��������'
/

COMMENT ON COLUMN ASU.TPROFP_LIST_NAZ.FK_VNAZID IS '���������� �� ������'
/

COMMENT ON COLUMN ASU.TPROFP_LIST_NAZ.FD_VKDATE IS '���� ������� ��������� ��������'
/

COMMENT ON COLUMN ASU.TPROFP_LIST_NAZ.FC_VKNUMBER IS '����� ������� ��������� ��������'
/

COMMENT ON COLUMN ASU.TPROFP_LIST_NAZ.FC_VKRESULT IS '������� ��������� ��������'
/


--
-- TPROFP_LIST_NAZ_BY_ACTID  (Index) 
--
--  Dependencies: 
--   TPROFP_LIST_NAZ (Table)
--
CREATE INDEX ASU.TPROFP_LIST_NAZ_BY_ACTID ON ASU.TPROFP_LIST_NAZ
(FK_ACTIONID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          5792K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPROFP_LIST_NAZ_BY_ID  (Index) 
--
--  Dependencies: 
--   TPROFP_LIST_NAZ (Table)
--
CREATE UNIQUE INDEX ASU.TPROFP_LIST_NAZ_BY_ID ON ASU.TPROFP_LIST_NAZ
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          3104K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPROFP_LIST_NAZ_BY_LISTACTID  (Index) 
--
--  Dependencies: 
--   TPROFP_LIST_NAZ (Table)
--
CREATE INDEX ASU.TPROFP_LIST_NAZ_BY_LISTACTID ON ASU.TPROFP_LIST_NAZ
(FK_LISTID, FK_ACTIONID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          7712K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPROFP_LIST_NAZ_BY_LISTID  (Index) 
--
--  Dependencies: 
--   TPROFP_LIST_NAZ (Table)
--
CREATE INDEX ASU.TPROFP_LIST_NAZ_BY_LISTID ON ASU.TPROFP_LIST_NAZ
(FK_LISTID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          6336K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPROFP_LIST_NAZ_BY_LISTNAZID  (Index) 
--
--  Dependencies: 
--   TPROFP_LIST_NAZ (Table)
--
CREATE INDEX ASU.TPROFP_LIST_NAZ_BY_LISTNAZID ON ASU.TPROFP_LIST_NAZ
(FK_LISTID, FK_NAZID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          8608K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPROFP_LIST_NAZ_SMID  (Index) 
--
--  Dependencies: 
--   TPROFP_LIST_NAZ (Table)
--
CREATE INDEX ASU.TPROFP_LIST_NAZ_SMID ON ASU.TPROFP_LIST_NAZ
(FK_SMID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          3904K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPFOFP_LIST_NAZ_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TPROFP_LIST_NAZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPFOFP_LIST_NAZ_BEFORE_INSERT" 
 BEFORE
  INSERT
 ON tprofp_list_naz
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
  select seq_tkarta.NEXTVAL into :new.fk_id from dual;
end;
/
SHOW ERRORS;


