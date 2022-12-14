DROP TRIGGER ASU.TPACLST$WEB_REPLICATION
/

--
-- TPACLST$WEB_REPLICATION  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DBMS_STANDARD (Package)
--   TPACLST (Table)
--   PKG_EXCH_SAMOZAPIS (Package)
--   WEB_BUFFER_TRANSFER (Table)
--
CREATE OR REPLACE TRIGGER ASU.TPACLST$WEB_REPLICATION
 BEFORE 
 INSERT OR DELETE
 ON ASU.TPACLST  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  IF NOT ASU.PKG_EXCH_SAMOZAPIS.IS_REPL THEN
    IF DELETING THEN
        --ASU.PKG_EXCH_SAMOZAPIS.DO_LOG('TGRAPH', :OLD.FK_GRAPHID, 'UPDATE', 'TGRAPH$WEB_REPLICATION');
        INSERT INTO ASU.WEB_BUFFER_TRANSFER(REGIST_DATE, TABLE_NAME, KEY_FIELD_VALUE, ACTION)
        VALUES(SYSDATE, 'TGRAPH', :OLD.FK_GRAPHID, 'UPDATE');
    ELSE
        --ASU.PKG_EXCH_SAMOZAPIS.DO_LOG('TGRAPH', :NEW.FK_GRAPHID, 'UPDATE', 'TGRAPH$WEB_REPLICATION');
        INSERT INTO ASU.WEB_BUFFER_TRANSFER(REGIST_DATE, TABLE_NAME, KEY_FIELD_VALUE, ACTION)
        VALUES(SYSDATE, 'TGRAPH', :NEW.FK_GRAPHID, 'UPDATE');
    END IF;
  END IF;
END;

/*CREATE OR REPLACE TRIGGER "TPACLST$WEB_REPLICATION" 
 BEFORE
 INSERT OR DELETE
 ON ASU.TPACLST
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  IF NOT ASU.PKG_EXCH_SAMOZAPIS.IS_REPL THEN
    IF DELETING THEN
        ASU.PKG_EXCH_SAMOZAPIS.DO_LOG('TGRAPH', :OLD.FK_GRAPHID, 'UPDATE');
    ELSE
        ASU.PKG_EXCH_SAMOZAPIS.DO_LOG('TGRAPH', :NEW.FK_GRAPHID, 'UPDATE');
    END IF;
  END IF;
END;*/
/
SHOW ERRORS;


