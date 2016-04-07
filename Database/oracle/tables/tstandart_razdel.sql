ALTER TABLE ASU.TSTANDART_RAZDEL
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TSTANDART_RAZDEL CASCADE CONSTRAINTS
/

--
-- TSTANDART_RAZDEL  (Table) 
--
CREATE TABLE ASU.TSTANDART_RAZDEL
(
  FK_ID       NUMBER(6)                         NOT NULL,
  FC_NAME     VARCHAR2(150 BYTE)                NOT NULL,
  CODE        VARCHAR2(20 BYTE),
  FC_SYNONYM  VARCHAR2(20 BYTE)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          160K
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

COMMENT ON TABLE ASU.TSTANDART_RAZDEL IS '������� ����������� ���������� ��������
�� ���� ������� ����������
Author: Ura'
/

COMMENT ON COLUMN ASU.TSTANDART_RAZDEL.FK_ID IS 'SEQUENCE=[SEQ_STANDART_RAZDEL]'
/

COMMENT ON COLUMN ASU.TSTANDART_RAZDEL.FC_NAME IS '�������� �������'
/

COMMENT ON COLUMN ASU.TSTANDART_RAZDEL.CODE IS '��� (����)'
/

COMMENT ON COLUMN ASU.TSTANDART_RAZDEL.FC_SYNONYM IS '�������'
/


--
-- IQ_TSTANDART_RAZDEL$CODE  (Index) 
--
--  Dependencies: 
--   TSTANDART_RAZDEL (Table)
--
CREATE INDEX ASU.IQ_TSTANDART_RAZDEL$CODE ON ASU.TSTANDART_RAZDEL
(CODE)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- IQ_TSTANDART_RAZDEL$FC_NAME  (Index) 
--
--  Dependencies: 
--   TSTANDART_RAZDEL (Table)
--
CREATE INDEX ASU.IQ_TSTANDART_RAZDEL$FC_NAME ON ASU.TSTANDART_RAZDEL
(FC_NAME)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TSTANDART_RAZDEL_PK  (Index) 
--
--  Dependencies: 
--   TSTANDART_RAZDEL (Table)
--
CREATE UNIQUE INDEX ASU.TSTANDART_RAZDEL_PK ON ASU.TSTANDART_RAZDEL
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
-- TSTANDART_RAZDEL$BI  (Trigger) 
--
--  Dependencies: 
--   TSTANDART_RAZDEL (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSTANDART_RAZDEL$BI" before insert
on ASU.TSTANDART_RAZDEL for each row
begin
    --  Column "FK_ID" uses sequence SEQ_STANDART_RAZDEL
    if :new.FK_ID is null then
      select SEQ_STANDART_RAZDEL.NEXTVAL INTO :new.FK_ID  from dual;
    end if;
end;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TSTANDART_RAZDEL 
-- 
ALTER TABLE ASU.TSTANDART_RAZDEL ADD (
  CONSTRAINT TSTANDART_RAZDEL_PK
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

GRANT REFERENCES, SELECT ON ASU.TSTANDART_RAZDEL TO EXCHANGE
/

GRANT REFERENCES, SELECT ON ASU.TSTANDART_RAZDEL TO EXCH43
/

