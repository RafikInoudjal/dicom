DROP TABLE ASU.TNAZ_INSUR CASCADE CONSTRAINTS
/

--
-- TNAZ_INSUR  (Table) 
--
CREATE TABLE ASU.TNAZ_INSUR
(
  FK_ID         NUMBER,
  FK_NAZID      NUMBER,
  FK_INSURDOCS  NUMBER
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

COMMENT ON TABLE ASU.TNAZ_INSUR IS '?????? ?????????? ? ??????????'
/

COMMENT ON COLUMN ASU.TNAZ_INSUR.FK_ID IS 'SEQUENCE=[SEQ_TNAZ_INSUR]'
/

COMMENT ON COLUMN ASU.TNAZ_INSUR.FK_NAZID IS 'VNAZ.FK_ID'
/

COMMENT ON COLUMN ASU.TNAZ_INSUR.FK_INSURDOCS IS 'TINSURDOCS.FK_ID'
/


--
-- TNAZ_INSUR_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TNAZ_INSUR (Table)
--
CREATE OR REPLACE TRIGGER ASU."TNAZ_INSUR_BEFORE_INSERT" 
 BEFORE
  INSERT
 ON tnaz_insur
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
  SELECT SEQ_TNAZ_INSUR.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


