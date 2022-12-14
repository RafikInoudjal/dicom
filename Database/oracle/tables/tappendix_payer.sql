DROP TABLE ASU.TAPPENDIX_PAYER CASCADE CONSTRAINTS
/

--
-- TAPPENDIX_PAYER  (Table) 
--
CREATE TABLE ASU.TAPPENDIX_PAYER
(
  FK_ID            NUMBER                       NOT NULL,
  FK_APPENDIX      NUMBER,
  FK_PAYER         NUMBER,
  FK_PAYMENTID     NUMBER,
  FK_RELWITHPAYER  NUMBER,
  FK_CAPACITY      NUMBER
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

COMMENT ON TABLE ASU.TAPPENDIX_PAYER IS '??????? ???????????? ??????????
Author: A.Nakorjakov 120508'
/

COMMENT ON COLUMN ASU.TAPPENDIX_PAYER.FK_ID IS 'SEQUENCE=[SEQ_APPENDIX_PAYER]'
/

COMMENT ON COLUMN ASU.TAPPENDIX_PAYER.FK_APPENDIX IS 'TAPPENDIX.FK_ID'
/

COMMENT ON COLUMN ASU.TAPPENDIX_PAYER.FK_PAYER IS 'TPAYER.FK_ID'
/

COMMENT ON COLUMN ASU.TAPPENDIX_PAYER.FK_PAYMENTID IS 'TPAYMENT.FK_ID - ?????? ?? ????????? ???????? ?? ??????, ??????????? ????? ????????? ? ??????????? ????????????'
/

COMMENT ON COLUMN ASU.TAPPENDIX_PAYER.FK_RELWITHPAYER IS 'TSMID.FK_ID - ??? ???????? ?????????? ???????? (???? ????? ? ?.?.)'
/

COMMENT ON COLUMN ASU.TAPPENDIX_PAYER.FK_CAPACITY IS 'TSMID.FK_ID (??????? PAYER_RENTABEL) - ?????????????? ??????????? ?? ?????? ?????????? ??????.'
/


--
-- TAPPENDIX_PAYER_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TAPPENDIX_PAYER (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAPPENDIX_PAYER_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON ASU.TAPPENDIX_PAYER  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  SELECT SEQ_TAPPENDIX_PAYER.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


