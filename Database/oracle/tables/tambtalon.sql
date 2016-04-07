DROP TABLE ASU.TAMBTALON CASCADE CONSTRAINTS
/

--
-- TAMBTALON  (Table) 
--
CREATE TABLE ASU.TAMBTALON
(
  FK_ID               NUMBER(15)                NOT NULL,
  FK_SOTRID           NUMBER(15)                DEFAULT -1                    NOT NULL,
  FK_ASISTENTID       NUMBER(15)                DEFAULT -1                    NOT NULL,
  FN_DISPUCHET        NUMBER(15)                DEFAULT 0,
  FD_DOCDATE          DATE,
  FD_OPENED           DATE,
  FD_CLOSED           DATE,
  FK_AMBID            NUMBER(15)                DEFAULT -1                    NOT NULL,
  FK_POLICEOMSID      NUMBER(15)                DEFAULT -1                    NOT NULL,
  FN_SOS              NUMBER(1)                 DEFAULT 0                     NOT NULL,
  FK_OPLATA           NUMBER(15)                DEFAULT -1                    NOT NULL,
  FK_SERVPLACE        NUMBER(15)                DEFAULT -1,
  FK_REASON           NUMBER(15)                DEFAULT -1                    NOT NULL,
  FK_DISP             NUMBER(15)                DEFAULT -1                    NOT NULL,
  FK_TRAVMA           NUMBER(15)                DEFAULT -1                    NOT NULL,
  FN_SICKLIST         NUMBER(1)                 DEFAULT -1                    NOT NULL,
  FK_DIAGMAIN         NUMBER(15)                DEFAULT -1                    NOT NULL,
  FK_DIAGSUB          NUMBER(15)                DEFAULT -1                    NOT NULL,
  FK_INSURANCEID      NUMBER(15)                DEFAULT -1                    NOT NULL,
  FK_RESULT           NUMBER(15)                DEFAULT -1                    NOT NULL,
  FK_SOTRCLOSED       NUMBER(15)                DEFAULT -1                    NOT NULL,
  FK_MEDSESID         NUMBER(15)                DEFAULT -1                    NOT NULL,
  FK_UCHID            NUMBER(15),
  FK_OTDELID          NUMBER(15)                DEFAULT -1                    NOT NULL,
  FK_DISPCARDID       NUMBER,
  FK_CANCELPODSOTRID  NUMBER,
  FD_PODCANCELED      DATE,
  FK_DOPISHODID       NUMBER(15),
  FK_DIAGMAINPRED     NUMBER(15),
  FD_INS              DATE                      DEFAULT sysdate,
  FK_LPUID            NUMBER(15)                DEFAULT -1,
  FD_NAPRDATE         DATE,
  FC_NAPRNUM          VARCHAR2(512 BYTE),
  FK_REZHIMID         NUMBER,
  FC_TALON_COMMENT    VARCHAR2(4000 BYTE)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          528K
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

COMMENT ON TABLE ASU.TAMBTALON IS '������������ ������ �������� Author:Spasskiy '
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_ID IS 'SEQUENCE=[SEQ_TKARTA]'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_SOTRID IS '��� ����������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_ASISTENTID IS '��� ���������� (���������)'
/

COMMENT ON COLUMN ASU.TAMBTALON.FN_DISPUCHET IS '������ ��������������� ��������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FD_DOCDATE IS '���� �������� ���������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FD_OPENED IS '���� �������� ������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FD_CLOSED IS '���� �������� ������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_AMBID IS '��� ������������ ����� TAmbulance.FK_IBID'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_POLICEOMSID IS '��� ���. ������ ���'
/

COMMENT ON COLUMN ASU.TAMBTALON.FN_SOS IS '1-������; 0-������;'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_OPLATA IS '��� ������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_SERVPLACE IS '����� ������������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_REASON IS '���� ���������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_DISP IS '������������ ����'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_TRAVMA IS '��� ������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FN_SICKLIST IS '���������� ���� 1- ������; 2 - ������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_DIAGMAIN IS '��� ��������� �������� �� TDiag'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_DIAGSUB IS '��� �������������� �������� �� TDiag'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_INSURANCEID IS '��� ���������� ������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_RESULT IS '��������� ���������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_SOTRCLOSED IS '��������� ���������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_MEDSESID IS '�������� ������������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_UCHID IS '�������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_OTDELID IS '���������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_DISPCARDID IS 'TDISPCARD.FK_ID by A.Nakorjakov 29-08-2007'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_CANCELPODSOTRID IS '���������, ���������� ������� ������ by A.Nakorjakov 280308'
/

COMMENT ON COLUMN ASU.TAMBTALON.FD_PODCANCELED IS '����� �������� ������� by A.Nakorjakov 280308'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_DOPISHODID IS 'TSMID.FK_ID. �������������� ����� 05,05,2009'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_DIAGMAINPRED IS ' ��� ���������� �������� ��������������  �� SK by Marriage at 23.06.2010'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_LPUID IS '��� ��� �� ASU.TCOMPANY by O.Kashira 171110'
/

COMMENT ON COLUMN ASU.TAMBTALON.FD_NAPRDATE IS '���� ����������� '
/

COMMENT ON COLUMN ASU.TAMBTALON.FC_NAPRNUM IS '����� �����������'
/

COMMENT ON COLUMN ASU.TAMBTALON.FK_REZHIMID IS 'Select * from ASU.TSMID where FK_OWNER = ASU.GET_SYNID(''NAZN_TYPES'') and FC_SYNONIM IN (''NAZTYPE_PLAN'',''NAZTYPE_URGENTLY'')'
/

COMMENT ON COLUMN ASU.TAMBTALON.FC_TALON_COMMENT IS '�����������'
/


--
-- TAMBTALON_BY_AMBID  (Index) 
--
--  Dependencies: 
--   TAMBTALON (Table)
--
CREATE INDEX ASU.TAMBTALON_BY_AMBID ON ASU.TAMBTALON
(FK_AMBID)
NOLOGGING
TABLESPACE INDX
PCTFREE    5
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
-- TAMBTALON_BY_DATE  (Index) 
--
--  Dependencies: 
--   TAMBTALON (Table)
--
CREATE INDEX ASU.TAMBTALON_BY_DATE ON ASU.TAMBTALON
(FD_OPENED, FK_SOTRID)
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
-- TAMBTALON_BY_ID  (Index) 
--
--  Dependencies: 
--   TAMBTALON (Table)
--
CREATE UNIQUE INDEX ASU.TAMBTALON_BY_ID ON ASU.TAMBTALON
(FK_ID)
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
-- TAMBTALON_BY_SOS  (Index) 
--
--  Dependencies: 
--   TAMBTALON (Table)
--
CREATE INDEX ASU.TAMBTALON_BY_SOS ON ASU.TAMBTALON
(FN_SOS)
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
-- TAMBTALON_BY_SOS_TRCLOSE  (Index) 
--
--  Dependencies: 
--   TAMBTALON (Table)
--
CREATE INDEX ASU.TAMBTALON_BY_SOS_TRCLOSE ON ASU.TAMBTALON
(FN_SOS, TRUNC("FD_CLOSED"))
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
-- TAMBTALON_BY_TRCLOSE  (Index) 
--
--  Dependencies: 
--   TAMBTALON (Table)
--
CREATE INDEX ASU.TAMBTALON_BY_TRCLOSE ON ASU.TAMBTALON
(TRUNC("FD_CLOSED"))
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
-- TAMBTALON_A_UPDT  (Trigger) 
--
--  Dependencies: 
--   TAMBTALON (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAMBTALON_A_UPDT"
 AFTER UPDATE
 ON ASU.TAMBTALON  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
DECLARE
 vCnt     NUMBER;
BEGIN
  IF :NEW.FN_SOS = 1
  THEN
     SELECT COALESCE(MAX(FK_ID), -1979) INTO vCnt FROM ASU.TEXP_TAMBTALON WHERE FK_TALONID = :NEW.FK_ID;
 
     IF vCnt = -1979
     THEN
        INSERT INTO ASU.TEXP_TAMBTALON(FK_TALONID)
        VALUES(:NEW.FK_ID);
     ELSE
        UPDATE ASU.TEXP_TAMBTALON
        SET FD_LAST_UPDATE = SYSDATE
        WHERE FK_TALONID = :NEW.FK_ID;
     END IF;
  END IF;
End;
/
SHOW ERRORS;


--
-- TAMBTALON_A_INS  (Trigger) 
--
--  Dependencies: 
--   TAMBTALON (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAMBTALON_A_INS"
 AFTER INSERT
 ON ASU.TAMBTALON  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  IF :NEW.FN_SOS = 1
  THEN
     INSERT INTO ASU.TEXP_TAMBTALON(FK_TALONID)
     VALUES(:NEW.FK_ID);
  END IF;
End;
/
SHOW ERRORS;


--
-- TAMBTALON_A_DEL  (Trigger) 
--
--  Dependencies: 
--   TAMBTALON (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAMBTALON_A_DEL"
 AFTER DELETE
 ON ASU.TAMBTALON  REFERENCING OLD AS OLD
 FOR EACH ROW
DECLARE
 vCnt     NUMBER;
BEGIN
 SELECT COALESCE(MAX(FK_ID), -1979) INTO vCnt FROM ASU.TEXP_TAMBTALON WHERE FK_TALONID = :OLD.FK_ID;

 IF vCnt <> -1979
 THEN
  UPDATE ASU.TEXP_TAMBTALON
  SET FD_LAST_UPDATE = SYSDATE, FP_DEL = 1
  WHERE FK_TALONID = :OLD.FK_ID;
 END IF;
End;
/
SHOW ERRORS;


--
-- TAMBTALON_UPD_FN_SOS  (Trigger) 
--
--  Dependencies: 
--   TAMBTALON (Table)
--
CREATE OR REPLACE TRIGGER ASU.TAMBTALON_UPD_FN_SOS
 AFTER
  UPDATE OF fn_sos
 ON ASU.TAMBTALON REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
  IF (:OLD.fn_sos = 1) AND (:NEW.fn_sos = 0) THEN
    UPDATE asu.trsf SET FD_CANCEL_PODPIS_AMBTALON = SYSDATE,
                        FK_SOTR_CANCEL_PODPIS_AMBTALON = :NEW.FK_CANCELPODSOTRID
     WHERE fk_id IN (select t.fk_rsfid from asu.trsf_saved_reestr t, asu.tambtalon_naz tn WHERE t.fk_nazid = tn.fk_nazid AND tn.fk_talonid = :old.fk_id);
  END IF;
End;
/
SHOW ERRORS;


--
-- TAMBTALON_BEFORE_DELETE  (Trigger) 
--
--  Dependencies: 
--   TAMBTALON (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAMBTALON_BEFORE_DELETE" 
 BEFORE 
 DELETE
 ON ASU.TAMBTALON  REFERENCING OLD AS old NEW AS new
 FOR EACH ROW
begin
  delete from tambtalon_naz where fk_talonid=:old.fk_id;
end;
/
SHOW ERRORS;


--
-- TAMBTALON_INSERT  (Trigger) 
--
--  Dependencies: 
--   TAMBTALON (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAMBTALON_INSERT" 
 BEFORE
  INSERT
 ON tambtalon
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  SELECT SEQ_TKARTA.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
-- Rem by Serg  SELECT SEQ_TAMBTALON.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


--
-- TAMBTALON_LOG  (Trigger) 
--
--  Dependencies: 
--   TAMBTALON (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAMBTALON_LOG" 
 AFTER
  INSERT OR DELETE OR UPDATE
 ON tambtalon
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
 --created by A.Nakorjakov 270308
  if INSERTING then
    PKG_LOG.Do_log('TAMBTALON', 'FK_ID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_id), :new.fk_id);
    PKG_LOG.Do_log('TAMBTALON', 'FK_SOTRID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_sotrid), :new.fk_id);
    PKG_LOG.Do_log('TAMBTALON', 'FD_OPENED', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fd_opened), :new.fk_id);
    PKG_LOG.Do_log('TAMBTALON', 'FK_AMBID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_ambid), :new.fk_id);
    PKG_LOG.Do_log('TAMBTALON', 'FN_SOS', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fn_sos), :new.fk_id);
    PKG_LOG.Do_log('TAMBTALON', 'FK_OPLATA', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_oplata), :new.fk_id);
    PKG_LOG.Do_log('TAMBTALON', 'FK_SERVPLACE', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_servplace), :new.fk_id);
    PKG_LOG.Do_log('TAMBTALON', 'FK_REASON', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_reason), :new.fk_id);
    PKG_LOG.Do_log('TAMBTALON', 'FK_DISP', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_disp), :new.fk_id);
    PKG_LOG.Do_log('TAMBTALON', 'FK_TRAVMA', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_travma), :new.fk_id);
    PKG_LOG.Do_log('TAMBTALON', 'FK_DIAGMAIN', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_diagmain), :new.fk_id);
    PKG_LOG.Do_log('TAMBTALON', 'FK_INSURANCEID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_insuranceid), :new.fk_id);
    PKG_LOG.Do_log('TAMBTALON', 'FK_UCHID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_uchid), :new.fk_id);
    PKG_LOG.Do_log('TAMBTALON', 'FK_DISPCARDID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_dispcardid), :new.fk_id);
  elsif DELETING then
      PKG_LOG.Do_log('TAMBTALON', 'FK_ID', 'DELETE', PKG_LOG.GET_VALUE(:old.fk_id), null, :old.fk_id);
  elsif UPDATING then
    PKG_LOG.Do_log('TAMBTALON', 'FK_ID', 'UPDATE', PKG_LOG.GET_VALUE(:old.fk_id), PKG_LOG.GET_VALUE(:new.fk_id), :old.fk_id);
    PKG_LOG.Do_log('TAMBTALON', 'FK_AMBID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_AMBID), PKG_LOG.GET_VALUE(:new.FK_AMBID), :old.fk_id);
    if UPDATING ('FK_SOTRID') AND PKG_LOG.GET_VALUE(:old.FK_SOTRID) <> PKG_LOG.GET_VALUE(:new.FK_SOTRID) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_SOTRID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_SOTRID), PKG_LOG.GET_VALUE(:new.FK_SOTRID), :old.fk_id);
    end if;
    if UPDATING ('FK_ASISTENTID') AND PKG_LOG.GET_VALUE(:old.FK_ASISTENTID) <> PKG_LOG.GET_VALUE(:new.FK_ASISTENTID) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_ASISTENTID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_ASISTENTID), PKG_LOG.GET_VALUE(:new.FK_ASISTENTID), :old.fk_id);
    end if;
    if UPDATING ('FN_DISPUCHET') AND PKG_LOG.GET_VALUE(:old.FN_DISPUCHET) <> PKG_LOG.GET_VALUE(:new.FN_DISPUCHET) then
      PKG_LOG.Do_log('TAMBTALON', 'FN_DISPUCHET', 'UPDATE', PKG_LOG.GET_VALUE(:old.FN_DISPUCHET), PKG_LOG.GET_VALUE(:new.FN_DISPUCHET), :old.fk_id);
    end if;
    if UPDATING ('FD_DOCDATE') AND PKG_LOG.GET_VALUE(:old.FD_DOCDATE) <> PKG_LOG.GET_VALUE(:new.FD_DOCDATE) then
      PKG_LOG.Do_log('TAMBTALON', 'FD_DOCDATE', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_DOCDATE), PKG_LOG.GET_VALUE(:new.FD_DOCDATE), :old.fk_id);
    end if;
    if UPDATING ('FD_OPENED') AND PKG_LOG.GET_VALUE(:old.FD_OPENED) <> PKG_LOG.GET_VALUE(:new.FD_OPENED) then
      PKG_LOG.Do_log('TAMBTALON', 'FD_OPENED', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_OPENED), PKG_LOG.GET_VALUE(:new.FD_OPENED), :old.fk_id);
    end if;
    if UPDATING ('FD_CLOSED') AND PKG_LOG.GET_VALUE(:old.FD_CLOSED) <> PKG_LOG.GET_VALUE(:new.FD_CLOSED) then
      PKG_LOG.Do_log('TAMBTALON', 'FD_CLOSED', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_CLOSED), PKG_LOG.GET_VALUE(:new.FD_CLOSED), :old.fk_id);
    end if;
    if UPDATING ('FK_POLICEOMSID') AND PKG_LOG.GET_VALUE(:old.FK_POLICEOMSID) <> PKG_LOG.GET_VALUE(:new.FK_POLICEOMSID) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_POLICEOMSID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_POLICEOMSID), PKG_LOG.GET_VALUE(:new.FK_POLICEOMSID), :old.fk_id);
    end if;
    if UPDATING ('FN_SOS') AND PKG_LOG.GET_VALUE(:old.FN_SOS) <> PKG_LOG.GET_VALUE(:new.FN_SOS) then
      PKG_LOG.Do_log('TAMBTALON', 'FN_SOS', 'UPDATE', PKG_LOG.GET_VALUE(:old.FN_SOS), PKG_LOG.GET_VALUE(:new.FN_SOS), :old.fk_id);
    end if;
    if UPDATING ('FK_OPLATA') AND PKG_LOG.GET_VALUE(:old.FK_OPLATA) <> PKG_LOG.GET_VALUE(:new.FK_OPLATA) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_OPLATA', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_OPLATA), PKG_LOG.GET_VALUE(:new.FK_OPLATA), :old.fk_id);
    end if;
    if UPDATING ('FK_SERVPLACE') AND PKG_LOG.GET_VALUE(:old.FK_SERVPLACE) <> PKG_LOG.GET_VALUE(:new.FK_SERVPLACE) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_SERVPLACE', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_SERVPLACE), PKG_LOG.GET_VALUE(:new.FK_SERVPLACE), :old.fk_id);
    end if;
    if UPDATING ('FK_REASON') AND PKG_LOG.GET_VALUE(:old.FK_REASON) <> PKG_LOG.GET_VALUE(:new.FK_REASON) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_REASON', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_REASON), PKG_LOG.GET_VALUE(:new.FK_REASON), :old.fk_id);
    end if;
    if UPDATING ('FK_DISP') AND PKG_LOG.GET_VALUE(:old.FK_DISP) <> PKG_LOG.GET_VALUE(:new.FK_DISP) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_DISP', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_DISP), PKG_LOG.GET_VALUE(:new.FK_DISP), :old.fk_id);
    end if;
    if UPDATING ('FK_TRAVMA') AND PKG_LOG.GET_VALUE(:old.FK_TRAVMA) <> PKG_LOG.GET_VALUE(:new.FK_TRAVMA) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_TRAVMA', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_TRAVMA), PKG_LOG.GET_VALUE(:new.FK_TRAVMA), :old.fk_id);
    end if;
    if UPDATING ('FN_SICKLIST') AND PKG_LOG.GET_VALUE(:old.FN_SICKLIST) <> PKG_LOG.GET_VALUE(:new.FN_SICKLIST) then
      PKG_LOG.Do_log('TAMBTALON', 'FN_SICKLIST', 'UPDATE', PKG_LOG.GET_VALUE(:old.FN_SICKLIST), PKG_LOG.GET_VALUE(:new.FN_SICKLIST), :old.fk_id);
    end if;
    if UPDATING ('FK_DIAGMAIN') AND PKG_LOG.GET_VALUE(:old.FK_DIAGMAIN) <> PKG_LOG.GET_VALUE(:new.FK_DIAGMAIN) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_DIAGMAIN', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_DIAGMAIN), PKG_LOG.GET_VALUE(:new.FK_DIAGMAIN), :old.fk_id);
    end if;
    if UPDATING ('FK_DIAGSUB') AND PKG_LOG.GET_VALUE(:old.FK_DIAGSUB) <> PKG_LOG.GET_VALUE(:new.FK_DIAGSUB) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_DIAGSUB', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_DIAGSUB), PKG_LOG.GET_VALUE(:new.FK_DIAGSUB), :old.fk_id);
    end if;
    if UPDATING ('FK_INSURANCEID') AND PKG_LOG.GET_VALUE(:old.FK_INSURANCEID) <> PKG_LOG.GET_VALUE(:new.FK_INSURANCEID) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_INSURANCEID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_INSURANCEID), PKG_LOG.GET_VALUE(:new.FK_INSURANCEID), :old.fk_id);
    end if;
    if UPDATING ('FK_RESULT') AND PKG_LOG.GET_VALUE(:old.FK_RESULT) <> PKG_LOG.GET_VALUE(:new.FK_RESULT) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_RESULT', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_RESULT), PKG_LOG.GET_VALUE(:new.FK_RESULT), :old.fk_id);
    end if;
    if UPDATING ('FK_SOTRCLOSED') AND PKG_LOG.GET_VALUE(:old.FK_SOTRCLOSED) <> PKG_LOG.GET_VALUE(:new.FK_SOTRCLOSED) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_SOTRCLOSED', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_SOTRCLOSED), PKG_LOG.GET_VALUE(:new.FK_SOTRCLOSED), :old.fk_id);
    end if;
    if UPDATING ('FK_MEDSESID') AND PKG_LOG.GET_VALUE(:old.FK_MEDSESID) <> PKG_LOG.GET_VALUE(:new.FK_MEDSESID) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_MEDSESID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_MEDSESID), PKG_LOG.GET_VALUE(:new.FK_MEDSESID), :old.fk_id);
    end if;
    if UPDATING ('FK_UCHID') AND PKG_LOG.GET_VALUE(:old.FK_UCHID) <> PKG_LOG.GET_VALUE(:new.FK_UCHID) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_UCHID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_UCHID), PKG_LOG.GET_VALUE(:new.FK_UCHID), :old.fk_id);
    end if;
    if UPDATING ('FK_OTDELID') AND PKG_LOG.GET_VALUE(:old.FK_OTDELID) <> PKG_LOG.GET_VALUE(:new.FK_OTDELID) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_OTDELID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_OTDELID), PKG_LOG.GET_VALUE(:new.FK_OTDELID), :old.fk_id);
    end if;
    if UPDATING ('FK_DISPCARDID') AND PKG_LOG.GET_VALUE(:old.FK_DISPCARDID) <> PKG_LOG.GET_VALUE(:new.FK_DISPCARDID) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_DISPCARDID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_DISPCARDID), PKG_LOG.GET_VALUE(:new.FK_DISPCARDID), :old.fk_id);
    end if;
    if UPDATING ('FK_DISPCARDID') AND PKG_LOG.GET_VALUE(:old.FK_DISPCARDID) <> PKG_LOG.GET_VALUE(:new.FK_DISPCARDID) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_DISPCARDID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_DISPCARDID), PKG_LOG.GET_VALUE(:new.FK_DISPCARDID), :old.fk_id);
    end if;
    if UPDATING ('FK_CANCELPODSOTRID') AND PKG_LOG.GET_VALUE(:old.FK_CANCELPODSOTRID) <> PKG_LOG.GET_VALUE(:new.FK_CANCELPODSOTRID) then
      PKG_LOG.Do_log('TAMBTALON', 'FK_CANCELPODSOTRID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_CANCELPODSOTRID), PKG_LOG.GET_VALUE(:new.FK_CANCELPODSOTRID), :old.fk_id);
    end if;
    if UPDATING ('FD_PODCANCELED') AND PKG_LOG.GET_VALUE(:old.FD_PODCANCELED) <> PKG_LOG.GET_VALUE(:new.FD_PODCANCELED) then
      PKG_LOG.Do_log('TAMBTALON', 'FD_PODCANCELED', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_PODCANCELED), PKG_LOG.GET_VALUE(:new.FD_PODCANCELED), :old.fk_id);
    end if;
  end if;
END TAMBTALON_LOG;
/
SHOW ERRORS;


GRANT REFERENCES, SELECT ON ASU.TAMBTALON TO EXCHANGE
/

GRANT REFERENCES, SELECT, UPDATE ON ASU.TAMBTALON TO EXCH43
/

