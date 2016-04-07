DROP TRIGGER ASU.TKABSOOTVET_INSERT
/

--
-- TKABSOOTVET_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TKABINET (Sequence)
--   TKABSOOTVET (Table)
--
CREATE OR REPLACE TRIGGER ASU."TKABSOOTVET_INSERT" 
  BEFORE INSERT
  ON ASU.TKABSOOTVET   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  select SEQ_TKABINET.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


