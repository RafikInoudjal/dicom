DROP TABLE ASU.TEPIKRIZ CASCADE CONSTRAINTS
/

--
-- TEPIKRIZ  (Table) 
--
CREATE TABLE ASU.TEPIKRIZ
(
  FK_ID        NUMBER(15),
  FK_PACID     NUMBER(15),
  FK_BID       NUMBER(15),
  FP_EPIKRIZ   NUMBER(2),
  FK_VRACHID   NUMBER(15),
  FD_DATE      DATE,
  FL_PODPIS    NUMBER(15)                       DEFAULT 0,
  FC_NAME      VARCHAR2(300 BYTE),
  FK_CLOBID    NUMBER(9)                        DEFAULT 0,
  FK_EPCLOBID  NUMBER(15)                       DEFAULT 0,
  FK_REKCLOB   NUMBER(15)                       DEFAULT 0,
  FD_DATE1     DATE,
  FD_DATE2     DATE,
  FN_DEL       NUMBER(1)                        DEFAULT 0,
  FP_RESLECH   NUMBER(15),
  FP_TYPE      NUMBER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          1192K
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

COMMENT ON TABLE ASU.TEPIKRIZ IS '???????? ???????? ????????? by TimurLan  '
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FK_ID IS 'SEQUENCE=[SEQ_TKARTA]'
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FK_PACID IS '??? ????????'
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FK_BID IS '??? ???????'
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FP_EPIKRIZ IS '????????? ????'
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FK_VRACHID IS '??? ?????'
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FD_DATE IS '??????'
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FL_PODPIS IS '????????'
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FC_NAME IS '??????????'
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FK_CLOBID IS 'ID ?? TCLOBS ??????????'
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FK_EPCLOBID IS 'ID ?? TCLOBS ????? ????????'
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FK_REKCLOB IS 'ID ?? TCLOBS ????????????'
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FD_DATE1 IS '???? 1'
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FD_DATE2 IS '???? 2'
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FN_DEL IS '??????? ????????'
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FP_RESLECH IS '????????? ??????? (0 - ?????????????, 1 - ?????????, 2 - ??? ???????, 3 - ?????????, 4 - ???????, 5 - ??????)'
/

COMMENT ON COLUMN ASU.TEPIKRIZ.FP_TYPE IS '??? ???????? (1- ????????, 2 - ??????????, 3 - ??????????, 4 - ????????????????, 5 - ???????)'
/


--
-- TEPIKRIZ$ID$PACID  (Index) 
--
--  Dependencies: 
--   TEPIKRIZ (Table)
--
CREATE UNIQUE INDEX ASU.TEPIKRIZ$ID$PACID ON ASU.TEPIKRIZ
(FK_ID, FK_PACID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          384K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TEPIKRIZ_TYP_PAC  (Index) 
--
--  Dependencies: 
--   TEPIKRIZ (Table)
--
CREATE INDEX ASU.TEPIKRIZ_TYP_PAC ON ASU.TEPIKRIZ
(FK_PACID, FP_TYPE)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          384K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TEPIKRIZ_LOG  (Trigger) 
--
--  Dependencies: 
--   TEPIKRIZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TEPIKRIZ_LOG" 
 AFTER
 INSERT OR DELETE OR UPDATE
 ON ASU.TEPIKRIZ  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  if INSERTING then
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_ID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_ID), :new.fk_id);
  elsif DELETING then
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_ID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_ID), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FP_TYPE', 'DELETE', PKG_LOG.GET_VALUE(:old.FP_TYPE), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FD_DATE', 'DELETE', PKG_LOG.GET_VALUE(:old.FD_DATE), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FP_RESLECH', 'DELETE', PKG_LOG.GET_VALUE(:old.FP_RESLECH), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FL_PODPIS', 'DELETE', PKG_LOG.GET_VALUE(:old.FL_PODPIS), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_VRACHID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_VRACHID), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_CLOBID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_CLOBID), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_EPCLOBID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_EPCLOBID), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_REKCLOB', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_REKCLOB), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_PACID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_PACID), null, :old.fk_id);

  elsif UPDATING then
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_ID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_ID), PKG_LOG.GET_VALUE(:new.FK_ID), :old.fk_id);

    if UPDATING ('FP_TYPE') AND PKG_LOG.GET_VALUE(:old.FP_TYPE) <> PKG_LOG.GET_VALUE(:new.FP_TYPE) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FP_TYPE', 'UPDATE', PKG_LOG.GET_VALUE(:old.FP_TYPE), PKG_LOG.GET_VALUE(:new.FP_TYPE), :old.fk_id);
    end if;

    if UPDATING ('FD_DATE') AND PKG_LOG.GET_VALUE(:old.FD_DATE) <> PKG_LOG.GET_VALUE(:new.FD_DATE) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FD_DATE', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_DATE), PKG_LOG.GET_VALUE(:new.FD_DATE), :old.fk_id);
    end if;

    if UPDATING ('FP_RESLECH') AND PKG_LOG.GET_VALUE(:old.FP_RESLECH) <> PKG_LOG.GET_VALUE(:new.FP_RESLECH) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FP_RESLECH', 'UPDATE', PKG_LOG.GET_VALUE(:old.FP_RESLECH), PKG_LOG.GET_VALUE(:new.FP_RESLECH), :old.fk_id);
    end if;

    if UPDATING ('FL_PODPIS') AND PKG_LOG.GET_VALUE(:old.FL_PODPIS) <> PKG_LOG.GET_VALUE(:new.FL_PODPIS) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FL_PODPIS', 'UPDATE', PKG_LOG.GET_VALUE(:old.FL_PODPIS), PKG_LOG.GET_VALUE(:new.FL_PODPIS), :old.fk_id);
    end if;

    if UPDATING ('FK_VRACHID') AND PKG_LOG.GET_VALUE(:old.FK_VRACHID) <> PKG_LOG.GET_VALUE(:new.FK_VRACHID) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FK_VRACHID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_VRACHID), PKG_LOG.GET_VALUE(:new.FK_VRACHID), :old.fk_id);
    end if;

    if UPDATING ('FK_CLOBID') AND PKG_LOG.GET_VALUE(:old.FK_CLOBID) <> PKG_LOG.GET_VALUE(:new.FK_CLOBID) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FK_CLOBID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_CLOBID), PKG_LOG.GET_VALUE(:new.FK_CLOBID), :old.fk_id);
    end if;

    if UPDATING ('FK_EPCLOBID') AND PKG_LOG.GET_VALUE(:old.FK_EPCLOBID) <> PKG_LOG.GET_VALUE(:new.FK_EPCLOBID) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FK_EPCLOBID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_EPCLOBID), PKG_LOG.GET_VALUE(:new.FK_EPCLOBID), :old.fk_id);
    end if;

    if UPDATING ('FK_REKCLOB') AND PKG_LOG.GET_VALUE(:old.FK_REKCLOB) <> PKG_LOG.GET_VALUE(:new.FK_REKCLOB) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FK_REKCLOB', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_REKCLOB), PKG_LOG.GET_VALUE(:new.FK_REKCLOB), :old.fk_id);
    end if;

    if UPDATING ('FK_PACID') AND PKG_LOG.GET_VALUE(:old.FK_PACID) <> PKG_LOG.GET_VALUE(:new.FK_PACID) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FK_PACID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_PACID), PKG_LOG.GET_VALUE(:new.FK_PACID), :old.fk_id);
    end if;
  end if;
  null;
END VNAZ_LOG;
/
SHOW ERRORS;


--
-- TEPIKRIZ_BEFORE_UPDATE  (Trigger) 
--
--  Dependencies: 
--   TEPIKRIZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TEPIKRIZ_BEFORE_UPDATE" 
  BEFORE INSERT
  ON ASU.TEPIKRIZ   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  select sysdate into :new.fd_date from dual;
End;
/
SHOW ERRORS;


--
-- TEPIKRIZ_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TEPIKRIZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TEPIKRIZ_BEFORE_INSERT" 
 BEFORE 
 INSERT
 ON ASU.TEPIKRIZ  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  SELECT SEQ_TKARTA.NEXTVAL, SYSDATE INTO :NEW.FK_ID, :NEW.FD_DATE FROM DUAL; -- ?????? ????????? ?? TKARTA ?? ???????? ? VNAZ 06.04.2006
--  SELECT SEQ_EPIKRIZ.NEXTVAL, SYSDATE INTO :NEW.FK_ID, :NEW.FD_DATE FROM DUAL;
END;
/
SHOW ERRORS;


--
-- TEPIKRIZ_AFTER_DEL  (Trigger) 
--
--  Dependencies: 
--   TEPIKRIZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TEPIKRIZ_AFTER_DEL" 
 AFTER
  DELETE
 ON asu.tepikriz
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
  DELETE FROM TBLOBS WHERE FK_ID = :OLD.FK_BID;
  DELETE FROM TCLOBS WHERE FK_ID = :OLD.FK_EPCLOBID; --by TimurLan 9/12/2003
  DELETE FROM TCLOBS WHERE FK_ID = :OLD.FK_REKCLOB;
  DELETE FROM TCLOBS WHERE FK_ID = :OLD.FK_CLOBID; --by KOLYA 27.01.05
  DELETE FROM TRICHVIEWDATA WHERE FK_PACID = :OLD.FK_ID;
  DELETE FROM TNAZID WHERE FK_EPIKRIZID = :OLD.FK_ID;
END;
/
SHOW ERRORS;


GRANT REFERENCES, SELECT ON ASU.TEPIKRIZ TO EXCHANGE
/

GRANT REFERENCES, SELECT ON ASU.TEPIKRIZ TO EXCH43
/

