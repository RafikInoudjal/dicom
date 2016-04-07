ALTER TABLE ASU.TAPPENDIX_TERMINATE
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TAPPENDIX_TERMINATE CASCADE CONSTRAINTS
/

--
-- TAPPENDIX_TERMINATE  (Table) 
--
CREATE TABLE ASU.TAPPENDIX_TERMINATE
(
  FK_ID             NUMBER                      NOT NULL,
  FK_APPENDIX       NUMBER,
  FD_TERMINATE      DATE,
  FK_RESCLOBID      NUMBER,
  FD_ZAYAVDATE      DATE,
  FK_SOTRTERMINATE  NUMBER,
  FK_CLOSEREASON    NUMBER
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

COMMENT ON TABLE ASU.TAPPENDIX_TERMINATE IS '������� ���������� � ����������� ���������� � �������� A.Nakorjakov 080508'
/

COMMENT ON COLUMN ASU.TAPPENDIX_TERMINATE.FK_ID IS 'SEQUENCE=[SEQ_TAPPENDIX_TERMINATE]'
/

COMMENT ON COLUMN ASU.TAPPENDIX_TERMINATE.FK_APPENDIX IS 'TAPPENDEX.FK_ID'
/

COMMENT ON COLUMN ASU.TAPPENDIX_TERMINATE.FD_TERMINATE IS '���� ������������ ����������'
/

COMMENT ON COLUMN ASU.TAPPENDIX_TERMINATE.FK_RESCLOBID IS 'TCLOB.FK_ID ������� ������������'
/

COMMENT ON COLUMN ASU.TAPPENDIX_TERMINATE.FD_ZAYAVDATE IS '���� ��������� ��������� ������ �� ������������'
/

COMMENT ON COLUMN ASU.TAPPENDIX_TERMINATE.FK_SOTRTERMINATE IS '���������, ���������� ������������'
/

COMMENT ON COLUMN ASU.TAPPENDIX_TERMINATE.FK_CLOSEREASON IS 'TSMID.FK_ID � ����� � ����������� / �������������� � �.�.'
/


--
-- PK_APPENDIX_TERMINATE  (Index) 
--
--  Dependencies: 
--   TAPPENDIX_TERMINATE (Table)
--
CREATE UNIQUE INDEX ASU.PK_APPENDIX_TERMINATE ON ASU.TAPPENDIX_TERMINATE
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
-- TAPPENDIX_TERMINATE_BEFORE_INS  (Trigger) 
--
--  Dependencies: 
--   TAPPENDIX_TERMINATE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAPPENDIX_TERMINATE_BEFORE_INS" 
 BEFORE
 INSERT
 ON ASU.TAPPENDIX_TERMINATE  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  SELECT SEQ_TAPPENDIX_TERMINATE.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TAPPENDIX_TERMINATE 
-- 
ALTER TABLE ASU.TAPPENDIX_TERMINATE ADD (
  CONSTRAINT PK_APPENDIX_TERMINATE
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

