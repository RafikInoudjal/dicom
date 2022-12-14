DROP TRIGGER ASU.TMISFORUM_MESSAGES_BEFORE_INS
/

--
-- TMISFORUM_MESSAGES_BEFORE_INS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TMISFORUM_MESSAGES (Sequence)
--   TMISFORUM_MESSAGES (Table)
--
CREATE OR REPLACE TRIGGER ASU."TMISFORUM_MESSAGES_BEFORE_INS" 
 BEFORE
  INSERT
 ON tmisforum_messages
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
  select seq_tmisforum_messages.NEXTVAL into :NEW.fk_ID from dual;
end;
/
SHOW ERRORS;


