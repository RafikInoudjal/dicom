DROP TRIGGER ASU.TINFECTION_BEFORE_INSERT
/

--
-- TINFECTION_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_INFECTION (Sequence)
--   TINFECTION (Table)
--
CREATE OR REPLACE TRIGGER ASU."TINFECTION_BEFORE_INSERT" BEFORE INSERT
ON ASU.TINFECTION FOR EACH ROW
begin
     --  Column "FK_ID" uses sequence SEQ_INFECTION
       IF :NEW.FK_ID IS NULL
       THEN
          SELECT SEQ_INFECTION.NEXTVAL INTO :NEW.FK_ID from dual;
       END IF;
end;
/
SHOW ERRORS;


