DROP TRIGGER ASU.TPROFFACTOR1Q_BEFORE_INSERT
/

--
-- TPROFFACTOR1Q_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   TPROFFACTOR_1Q (Table)
--   SEQ_PROFFACTOR (Sequence)
--
CREATE OR REPLACE TRIGGER ASU.TPROFFACTOR1q_BEFORE_INSERT
 BEFORE 
 INSERT
 ON ASU.TPROFFACTOR_1Q  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  IF (USERENV('CLIENT_INFO') is null) or (USERENV('CLIENT_INFO') <> '%MAIL%') THEN
    BEGIN
    -- ORIGINAL TRIGGER BODY BEGIN FROM HERE:

BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT seq_proffactor.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
    -- ORIGINAL TRIGGER BODY ENDS HERE
    END;
  END IF;
END;
/
SHOW ERRORS;


