DROP SEQUENCE ASU.SEQ_TKARTA
/

--
-- SEQ_TKARTA  (Sequence) 
--
CREATE SEQUENCE ASU.SEQ_TKARTA
  START WITH 98534468
  MAXVALUE 999999999999999999999999999
  MINVALUE 1
  NOCYCLE
  CACHE 20
  NOORDER
/


GRANT SELECT ON ASU.SEQ_TKARTA TO LIS
/

